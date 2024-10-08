local component = require("component")
local robot = require("robot")
local sides = require("sides")
local computer = require("computer")
local os = require("os")
local database = require("database")
local gps = require("gps")
local config = require("config")
local scanner = require("scanner")
local inventory_controller = component.inventory_controller
local redstone = component.redstone
local actions = require("actions")
local shell = require("shell")
local CROPDATA = require("cropData")

local targetCrop

local args, options = shell.parse(...)

local function parseArguments()
   for k, v in pairs(options) do
      config[k] = v
   end
   print("Config = " .. config.targetCrop)
end

local function checkTools()
   local spadeItem = inventory_controller.getStackInInternalSlot(robot.inventorySize() + config.spadeSlot)

   if spadeItem == nil or spadeItem.name ~= "berriespp:itemSpade" then
      print("No spade in the spade slot!")
      os.exit(0)
   end

   local binderItem = inventory_controller.getStackInInternalSlot(robot.inventorySize() + config.binderSlot)

   if binderItem == nil or binderItem.name ~= "ThaumicTinkerer:connector" then
      print("No binder in the binder slot!")
      os.exit(0)
   end
end

-- Return a number between 0 and 1 were 1 is the perfect crop and 0 is weed
local function getCropScore(crop)
   local statsWeight = 1
   local attributesWeight = 0.7
   local tierWeight = 0.5

   if crop.name == "air" or crop.name == "emptyCrop" or scanner.isWeed(crop) then
      return 0
   end

   local cropStats = math.max(crop.gr + crop.ga - crop.re, 0)
   local cropStatsMultiplier = cropStats / config.targetedStats

   local tierDifMultiplier = 1
   local attributesMultiplier = 1

   if crop.name == targetCrop then
      tierDifMultiplier = 1
      attributesMultiplier = 1
   else
      if CROPDATA[string.lower(crop.name)] == nil then
         --print("WARNING, NO DATA FOR THE CROP " .. crop.name .. " IN THE DATABASE ")
         return 0
      end

      local targetedAttributes = CROPDATA[string.lower(targetCrop)]["attributes"]

      local cropAttributes = CROPDATA[string.lower(crop.name)]["attributes"]
      local commonAttributesCount = 0

      local targetedCropAttributeCount = 0
      for index, value in ipairs(targetedAttributes) do
         targetedCropAttributeCount = targetedCropAttributeCount + 1
      end

      if (targetedCropAttributeCount > 0) then
         --Shitty loop with a shitty goto
         for index1, value1 in ipairs(cropAttributes) do
            for index2, value2 in ipairs(targetedAttributes) do
               if value1 == value2 then
                  commonAttributesCount = commonAttributesCount + 1
                  goto continue
               end
            end
            ::continue::
         end
         attributesMultiplier = (commonAttributesCount + 1) / (targetedCropAttributeCount + 1)
      end
      local tierDif = math.abs(CROPDATA[string.lower(crop.name)]["tier"] - CROPDATA[string.lower(targetCrop)]["tier"])
      tierDifMultiplier = 1 - math.max(1 - tierDif / 15, 0) -- max tier is 16, max diff should be 15
   end

   -- print("cropStatsMultiplier = " .. tostring(cropStatsMultiplier))
   -- print("attributesMultiplier = " .. tostring(attributesMultiplier))
   -- print("tierDifMultiplier = " .. tostring(tierDifMultiplier))

   return (cropStatsMultiplier * statsWeight + attributesMultiplier * attributesWeight + tierDifMultiplier * tierWeight) /
      (statsWeight + attributesWeight + tierWeight)
end

local lowestParentScore
local lowestParentScoreSlot

local lowestChildScore
local lowestChildSlot

local isEveryPlantTarget
local isEveryPlantGoodEnough

local function updateDbInfos()
   local farm = database.getFarm()
   lowestParentScore = 999
   lowestParentScoreSlot = -999

   local lowestChildScore = 999
   local lowestChildSlot = -999

   isEveryPlantTarget = true
   isEveryPlantGoodEnough = true

   -- Find lowest stat slot
   for slot = 1, config.workingFarmArea do
      local crop = farm[slot]
      if crop ~= nil then
         if crop.isWorkable then
            if string.lower(crop.name) ~= string.lower(targetCrop) then
               isEveryPlantTarget = false
            end

            local cropStats = crop.gr + crop.ga - crop.re
            if slot % 2 == 1 and cropStats < config.parentThreshold then
               isEveryPlantGoodEnough = false
            end

            if slot % 2 == 0 and cropStats < config.childThreshold then
               isEveryPlantGoodEnough = false
            end

            local isChild = slot % 2 == 0
            local cropScore = getCropScore(crop)
            if isChild then
               if cropScore < lowestChildScore then
                  lowestChildScore = cropScore
                  lowestChildSlot = slot
               end
            else
               if cropScore < lowestParentScore then
                  lowestParentScore = cropScore
                  lowestParentScoreSlot = slot
               end
            end
         end
      else
         isEveryPlantTarget = false
      end
   end
end

local transplantCount = 0

local function transplant(src, dest)
   transplantCount = transplantCount + 1

   actions.transplant(src, dest)

   if transplantCount > config.maxTransplantPerLoop then
      transplantCount = 0
      actions.scanFarm(false)
   end
end

local function isFinished()
   updateDbInfos()
   return isEveryPlantTarget and isEveryPlantGoodEnough
end

local function checkChild(slot, crop)
   local farm = database.getFarm()
   if crop.isWorkable and crop.name ~= "emptyCrop" then
      if crop.name == "air" then
         if slot < config.workingFarmArea then
            if
               (farm[slot - 1].isCrop or not farm[slot - 1].isWorkable) and
                  (farm[slot + 1].isCrop or not farm[slot + 1].isWorkable)
             then
               actions.placeCropStick(2)
               actions.applyWeedex()
            end
         else
            if farm[slot - 1].isCrop then
               actions.placeCropStick(2)
               actions.applyWeedex()
            end
         end
      elseif scanner.isWeed(crop) then
         actions.deweed()
         actions.placeCropStick()
         actions.applyWeedex()
      else
         local cropScore = getCropScore(crop)
         local cropStats = crop.gr + crop.ga - crop.re

         local worstParent = farm[lowestParentScoreSlot]
         local worstParentStat = 0

         if worstParent.isCrop then
            worstParentStat = worstParent.gr + worstParent.ga - worstParent.re
         end

         local isWorstParentGoodEnough = worstParent.name == targetCrop and worstParentStat >= config.parentThreshold

         local isChildGoodEnough = crop.name == targetCrop and cropStats > config.childThreshold

         local isChildBetter = cropScore > lowestParentScore

         if not isWorstParentGoodEnough and isChildBetter then -- better than worst parent
            transplant(gps.workingSlotToPos(slot), gps.workingSlotToPos(lowestParentScoreSlot))
            actions.placeCropStick(2)
            actions.applyWeedex()
            database.updateFarm(slot, scanner.scan())
            database.updateFarm(lowestParentScoreSlot, crop)
            updateDbInfos()
         elseif isChildGoodEnough then
            -- keep
         else -- not good enough
            actions.deweed()
            actions.placeCropStick()
            actions.applyWeedex()
            database.updateFarm(slot, scanner.scan())
            updateDbInfos()
         end
      end
   end
end

local function checkParent(slot, crop)
   if crop.name == "emptyCrop" then
      actions.swingDown()
   elseif crop.isCrop and crop.name ~= "air" then
      if scanner.isWeed(crop) then
         actions.deweed()
         actions.swingDown()
      end
   end
   database.updateFarm(slot, scanner.scan())
   updateDbInfos()
end

local function tickOnce()
   for slot = 1, config.workingFarmArea, 1 do
      if actions.needCharge() then
         actions.charge()
      end

      if actions.fullInventory() then
         actions.dumpInventory()
      end

      local isChild = slot % 2 == 0

      gps.go(gps.workingSlotToPos(slot))
      local crop = scanner.scan()
      database.updateFarm(slot, crop)

      if isChild then
         checkChild(slot, crop)
      else
         checkParent(slot, crop)
      end
   end
end

local function getAproximateProgress()
   local maxProgress = config.workingFarmArea
   local progress = 0

   local farm = database.getFarm()

   for slot = 1, config.workingFarmArea do
      local crop = farm[slot]
      if crop.isWorkable then
         progress = progress + getCropScore(crop)
      else
         maxProgress = maxProgress - 1
      end
   end
   return progress / maxProgress
end

local function main()
   parseArguments()
   checkTools()

   actions.restockAll()

   print("Scanning farm")

   actions.scanFarm()
   actions.restockAll()

   if config.targetCrop == nil then
      targetCrop = database.getFarm()[1].name
      config.targetCrop = targetCrop
   else -- Check if the plant exists
      config.targetCrop = string.lower(config.targetCrop)
      if CROPDATA[string.lower(config.targetCrop)] == nil then
         print("The targeted crop does not exists")
         os.exit(0)
      end
      targetCrop = config.targetCrop
   end

   print("Target crop : " .. targetCrop)
   print("Staring")
   updateDbInfos()

   while not isFinished() do
      transplantCount = 0
      print("Approximate progress = " .. tostring(getAproximateProgress() * 100) .. "%")
      tickOnce()
      actions.restockAll()
   end

   print("Done, cleanning up")
   actions.cleanUp()
end

local function scanAndPrintField()
   parseArguments()
   targetCrop = config.targetCrop

   for slot = 1, config.workingFarmArea do
      gps.go(gps.workingSlotToPos(slot))
      local crop = scanner.scan()
      print("Slot = " .. tostring(slot))
      print(scanner.cropToString(crop))
      print("Crop score = " .. tostring(getCropScore(crop)))
   end

   gps.go(config.chargerPos)
   gps.turnTo(1)
end

--scanAndPrintField()

main()
