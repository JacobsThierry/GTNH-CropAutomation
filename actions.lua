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

local needCharge
local fullyCharged
local fullInventory
local charge
local restockWeedex
local restockStick
local dumpInventory
local restockAll
local applyWeedex
local placeCropStick
local deweed
local pulseDown
local transplant
local cleanUp
local scanFarm
local emergencyStop

local function swingDown()
    local selectedSlot = robot.select()
    robot.select(robot.inventorySize() + config.spadeSlot)
    inventory_controller.equip()
    robot.swingDown()
    inventory_controller.equip()
    robot.select(selectedSlot)
end

function needCharge()
    return computer.energy() / computer.maxEnergy() < config.needChargeLevel
end

function fullyCharged()
    return computer.energy() / computer.maxEnergy() > 0.95
end

function fullInventory()
    for i = 1, robot.inventorySize() do
        if robot.count(i) == 0 then
            return false
        end
    end
    return true
end

function charge()
    gps.go(config.chargerPos)
    gps.turnTo(1)
    redstone.setOutput(sides.down, 15)
    repeat
        os.sleep(0.5)
    until fullyCharged()
    redstone.setOutput(sides.down, 0)
end

local weedExEmpty = false

local function checkWeedexStock()
    gps.save()
    gps.go(config.weedexContainerPos)
    weedExEmpty = true
    for i = 1, inventory_controller.getInventorySize(sides.down) do
        if inventory_controller.getSlotStackSize(sides.down, i) > 0 then
            weedExEmpty = false
            break
        end
    end
    gps.resume()
end

local function restockWeedex()
    -- Do not go to the weedex chest if we know it's empty
    -- if the player refill the weedex, weedExEmpty will be updated next refillAll
    if weedExEmpty then
        return
    end
    local selectedSlot = robot.select()

    robot.select(robot.inventorySize() + config.weedexSlot)

    if robot.count() == 0 then
        gps.save()
        gps.go(config.weedexContainerPos)

        for i = 1, inventory_controller.getInventorySize(sides.down) do
            if robot.count(robot.inventorySize() + config.weedexSlot) > 0 then
                break
            end
            inventory_controller.suckFromSlot(sides.down, i, 1)
        end
    end
    robot.select(selectedSlot)
    gps.resume()
end

function restockStick()
    local selectedSlot = robot.select()
    gps.save()
    gps.go(config.stickContainerPos)
    robot.select(robot.inventorySize() + config.stickSlot)

    local totalStick = robot.count()

    for i = 1, inventory_controller.getInventorySize(sides.down) do
        totalStick = totalStick + inventory_controller.getSlotStackSize(sides.down, i)
        if robot.count() < 64 then
            inventory_controller.suckFromSlot(sides.down, i, 64 - robot.count())
        end
    end

    if totalStick == 0 then
        emergencyStop("Not enough crop sticks to continue")
    end

    robot.select(selectedSlot)
    gps.resume()
end

function dumpInventory()
    gps.save()
    local selectedSlot = robot.select()
    gps.go(config.storagePos)
    for i = 1, (robot.inventorySize() + config.storageStopSlot) do
        if robot.count(i) > 0 then
            robot.select(i)
            for e = 1, inventory_controller.getInventorySize(sides.down) do
                if inventory_controller.getStackInSlot(sides.down, e) == nil then
                    inventory_controller.dropIntoSlot(sides.down, e)
                    break
                end
            end
        end
    end
    gps.resume()
    robot.select(selectedSlot)
end

function restockAll()
    gps.go(config.storagePos)
    dumpInventory()
    gps.go(config.weedexContainerPos)
    checkWeedexStock()
    restockWeedex()
    gps.go(config.stickContainerPos)
    restockStick()
    gps.go(config.chargerPos)
    charge()
end

function applyWeedex()
    local selectedSlot = robot.select()
    robot.select(robot.inventorySize() + config.weedexSlot)

    for i = 1, config.weedExcount do
        if robot.count(robot.inventorySize() + config.weedexSlot) == 0 then
            restockWeedex()
        end
        if robot.count(robot.inventorySize() + config.weedexSlot) > 0 then
            inventory_controller.equip()
            robot.useDown()
            inventory_controller.equip()
        end
    end

    if robot.count(robot.inventorySize() + config.weedexSlot) == 0 then
        restockWeedex()
    end

    robot.select(selectedSlot)
end

function placeCropStick(count)
    if count == nil then
        count = 1
    end
    local selectedSlot = robot.select()
    if robot.count(robot.inventorySize() + config.stickSlot) < count + 1 then
        restockStick()
    end
    robot.select(robot.inventorySize() + config.stickSlot)
    inventory_controller.equip()
    for _ = 1, count do
        robot.useDown()
    end
    inventory_controller.equip()
    robot.select(selectedSlot)
end

function deweed()
    local selectedSlot = robot.select()
    if config.keepDrops and fullInventory() then
        dumpInventory()
    end
    robot.select(robot.inventorySize() + config.spadeSlot)
    inventory_controller.equip()
    robot.useDown()
    inventory_controller.equip()
    robot.select(selectedSlot)
    if config.keepDrops then
        robot.suckDown()
    end
end

function pulseDown()
    redstone.setOutput(sides.down, 15)
    os.sleep(0.1)
    redstone.setOutput(sides.down, 0)
end

-- Only workable src & dest should be provided
function transplant(src, dest)
    local selectedSlot = robot.select()
    gps.save()
    robot.select(robot.inventorySize() + config.binderSlot)
    inventory_controller.equip()

    -- TRANSFER TO RELAY LOCATION
    gps.go(config.dislocatorPos)
    robot.useDown(sides.down)
    gps.go(src)
    robot.useDown(sides.down, true)
    gps.go(config.dislocatorPos)
    pulseDown()

    -- TRANSFER CROP TO DESTINATION
    robot.useDown(sides.down, true)
    gps.go(dest)

    local crop = scanner.scan()
    if crop.name == "air" then
        placeCropStick()
    end

    --  elseif crop.isWorkable == false then
    --      database.addToStorage(crop)
    --      gps.go(gps.storageSlotToPos(database.nextStorageSlot()))
    --      placeCropStick()
    --  end

    robot.useDown(sides.down, true)
    gps.go(config.dislocatorPos)
    pulseDown()

    -- DESTROY ORIGINAL CROP
    inventory_controller.equip()
    robot.select(selectedSlot)
    gps.go(config.relayFarmlandPos)
    swingDown()

    if config.keepDrops then
        robot.suckDown()
    end

    gps.resume()
end

function cleanUp()
    gps.save()

    scanFarm()

    gps.resume()

    restockAll()
end

function scanFarm(destroyEmptyStick)
    if destroyEmptyStick == nil then
        destroyEmptyStick = true
    end
    for slot = 1, config.workingFarmArea do
        gps.go(gps.workingSlotToPos(slot))
        local crop = scanner.scan()

        if needCharge() then
            charge()
        end

        if fullInventory() then
            dumpInventory()
        end

        if scanner.isWeed(crop) then
            deweed()
            swingDown()
            crop = scanner.scan()
        end

        if destroyEmptyStick then
            if crop.name == "emptyCrop" then
                swingDown()
                crop = scanner.scan()
            end
        end

        database.updateFarm(slot, crop)
    end
end

function emergencyStop(errorText)
    cleanUp()
    gps.go(config.chargerPos)
    gps.turnTo(1)
    print(errorText)
    os.exit(0)
end

return {
    swingDown = swingDown,
    needCharge = needCharge,
    charge = charge,
    fullInventory = fullInventory,
    restockWeedex = restockWeedex,
    restockStick = restockStick,
    dumpInventory = dumpInventory,
    applyWeedex = applyWeedex,
    restockAll = restockAll,
    placeCropStick = placeCropStick,
    deweed = deweed,
    pulseDown = pulseDown,
    transplant = transplant,
    cleanUp = cleanUp,
    scanFarm = scanFarm,
    emergencyStop = emergencyStop
}
