-- from https://github.com/DylanTaylor1/GTNH-CropAutomation/blob/main/scanner.lua

local component = require("component")
local sides = require("sides")
local config = require("config")
local geolyzer = component.geolyzer

local function cropToString(crop)
    local str = ""

    str = str .. "Name = " .. crop.name .. "\n"
    str = str .. "isWorkable = " .. tostring(crop.isWorkable) .. "\n"
    str = str .. "isCrop = " .. tostring(crop.isCrop) .. "\n"
    str = str .. "gr = " .. tostring(crop.gr) .. "\n"
    str = str .. "ga = " .. tostring(crop.ga) .. "\n"
    str = str .. "re = " .. tostring(crop.re) .. "\n"

    return str
end

local function scan()
    local rawResult = geolyzer.analyze(sides.down)

    -- AIR
    if rawResult.name == "minecraft:air" or rawResult.name == "GalacticraftCore:tile.brightAir" then
        return {
            isWorkable = true,
            isCrop = false,
            name = "air",
            gr = 0,
            ga = 0,
            re = 0
        }
    elseif rawResult.name == "IC2:blockCrop" then
        -- EMPTY CROP STICK
        if rawResult["crop:name"] == nil then
            return {
                isWorkable = true,
                isCrop = false,
                name = "emptyCrop",
                gr = 0,
                ga = 0,
                re = 0,
                weedEx = rawResult["crop:weed-ex"],
                tier = 0
            }
        else
            return {
                isWorkable = true,
                isCrop = true,
                name = string.lower(rawResult["crop:name"]),
                gr = rawResult["crop:growth"],
                ga = rawResult["crop:gain"],
                re = rawResult["crop:resistance"],
                tier = rawResult["crop:tier"]
            }
        end
    else
        -- RANDOM BLOCK
        return {
            isWorkable = false,
            isCrop = false,
            name = "block",
            gr = 0,
            ga = 0,
            re = 0
        }
    end
end

local function isWeed(crop)
    if not crop.isCrop or not crop.isWorkable then
        return false
    end
    return crop.name == "weed" or crop.name == "grass" or crop.gr > config.workingMaxGrowth or
        crop.re > config.workingMaxResistance or
        (crop.name == "venomilia" and crop.gr > 7)
end

local function getScore(crop)
    if (not crop.isCrop or isWeed(crop)) then
        return 0
    else
        return crop.gr + crop.ga - crop.re
    end
end

return {
    cropToString = cropToString,
    scan = scan,
    getScore = getScore,
    isWeed = isWeed
}
