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

local targetCrop = nil
local emptySlot

local function parseArguments()
   local _, options = shell.parse()

   for _, k in ipairs(options) do
      config[k] = options[k]
   end
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
   local attributesWeight = 0.5
   local tierWeight = 0.7

   if crop.name == "air" or crop.name == "emptyCrop" or scanner.isWeed(crop) then
      return 0
   end

   local cropStats = crop.gr + crop.ga - crop.re
   local cropStatsMultiplier = cropStats / config.targetedStats

   local tierDifMultiplier = 1
   local attributesMultiplier = 1

   if crop.name == targetCrop then
      tierDifMultiplier = 1
      attributesMultiplier = 1
   else
      local targetedAttributes = CROPDATA[targetCrop]["attributes"]
      print(targetedAttributes)
      local cropAttributes = CROPDATA[crop.name]["attributes"]
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
      local tierDif = math.abs(CROPDATA[crop.name]["tier"] - CROPDATA[targetCrop]["tier"])
      tierDifMultiplier = 1 - math.max(1 - tierDif / 15, 0) -- max tier is 16, max diff should be 15
   end

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
      if crop.isWorkable then
         if crop.name ~= targetCrop then
            isEveryPlantTarget = false
         end

         local cropStats = crop.gr + crop.ga - crop.re
         if cropStats < config.autoTierThreshold then
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
   end
end

local function isFinished()
   updateDbInfos()
   return isEveryPlantTarget and isEveryPlantGoodEnough
end

local function checkChild(slot, crop)
   if crop.isWorkable and crop.name ~= "emptyCrop" then
      if crop.name == "air" then
         actions.placeCropStick(2)
      elseif scanner.isWeed(crop) then
         actions.deweed()
         actions.placeCropStick()
      end
   else
      local cropScore = getCropScore(crop)
      if cropScore > lowestParentScore then
         actions.transplant(gps.workingSlotToPos(slot), gps.workingSlotToPos(lowestParentScore))
         actions.placeCropStick(2)
         database.updateFarm(lowestParentScore, crop)
         updateDbInfos()
      else
         if crop.name == targetCrop then
            local cropStats = crop.gr + crop.ga - crop.re
            if cropStats >= config.autoStatThreshold then
               -- keep the plant
            else
               actions.deweed()
               actions.placeCropStick()
            end
         end
      end
   end
end

local function checkParent(slot, crop)
   if crop.isCrop and crop.name ~= "air" and crop.name ~= "emptyCrop" then
      if scanner.isWeed(crop) then
         actions.deweed()
         database.updateFarm(slot, {isCrop = true, isWorkable = true, name = "emptyCrop"})
         updateDbInfos()
      end
   end
end

local function tickOnce()
   for slot = 1, config.workingFarmArea, 1 do
      local isChild = slot % 2 == 0

      gps.go(gps.workingSlotToPos(slot))
      local crop = scanner.scan()

      if isChild then
         checkChild(slot, crop)
      else
         checkParent(slot, crop)
      end
   end
end

local function main()
   parseArguments()
   checkTools()

   actions.restockAll()
   actions.scanFarm()

   if config.targetCrop == nil then
      targetCrop = database.getFarm()[1].name
      config.targetCrop = targetCrop
   else -- Check if the plant exists
      config.targetCrop = string.lower(config.targetCrop)
      if CROPDATA[config.targetCrop] == nil then
         print("The targeted crop does not exists")
         os.exit(0)
      end
   end

   print("Target crop : " .. targetCrop)

   updateDbInfos()

   while not isFinished() do
      tickOnce()
      actions.restockAll()
   end
end

main()
