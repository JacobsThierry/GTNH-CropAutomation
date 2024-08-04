local gps = require("gps")
local scanner = require("scanner")
local config = require("config")
local storage = {}
local reverseStorage = {}
local farm = {}

-- ======================== WORKING FARM ========================

local function getFarm()
    return farm
end

local function updateFarm(slot, crop)
    if crop ~= nil then
        farm[slot] = crop
    end
end

return {
    getFarm = getFarm,
    updateFarm = updateFarm
}
