local config = {
    -- NOTE: EACH CONFIG SHOULD END WITH A COMMA

    -- Side Length of Working Farm
    workingFarmSize = 15,
    -- Pickup any and all drops (don't change)
    keepDrops = true,
    -- Minimum Gr + Ga - Re for the childs crops (21 + 31 - 0 = 52)
    childThreshold = 50,
    -- Minimum Gr + Ga - Re for theparent crops (21 + 31 - 0 = 52)
    parentThreshold = 52,
    -- Targeted Gr + Ga - Re (21 + 31 - 0 = 52)
    targetedStats = 52,
    -- Maximum Growth for crops on the working farm. Crop with growth > 24 behaves like weeds
    workingMaxGrowth = 21,
    -- Maximum Resistance for crops on the working farm
    workingMaxResistance = 3,
    -- Minimum Charge Level
    needChargeLevel = 0.25,
    -- Crop target
    targetCrop = nil,
    -- ammount of weedex applied per crop
    weedExcount = 1,
    -- max transplant per field loop before re-checking every crop for weeds
    maxTransplantPerLoop = 40,
    -- =========== DO NOT CHANGE ===========

    -- From right to left :
    --    - Charger
    --    - Crop stick chest
    --    - weedex chest
    --    - Trash
    --    - Farmland
    --    - Transvector (facing the farmland)

    -- The coordinate for charger
    chargerPos = {0, 0},
    -- The coordinate for the container contains crop sticks
    stickContainerPos = {-1, 0},
    -- The coordinate for the weedex container
    weedexContainerPos = {-2, 0},
    -- The coordinate for the container to store seeds, products, etc
    storagePos = {-3, 0},
    -- The coordinate for the farmland that the dislocator is facing
    relayFarmlandPos = {-4, 0},
    -- The coordinate for the transvector dislocator
    dislocatorPos = {-5, 0},
    -- The slot for spade
    spadeSlot = 0,
    -- The slot for the transvector binder
    binderSlot = -1,
    -- The slot for crop sticks
    stickSlot = -2,
    -- The slot for weed ex
    weedexSlot = -3,
    -- The slot which the robot will stop storing items
    storageStopSlot = -4
}

config.workingFarmArea = config.workingFarmSize ^ 2

return config
