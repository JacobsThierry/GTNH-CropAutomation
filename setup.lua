local shell = require("shell")
local args = {...}
local branch
local repo
local scripts = {
    "actions.lua",
    "database.lua",
    "gps.lua",
    "cropData.lua",
    "scanner.lua",
    "config.lua",
    "main.lua",
    "uninstall.lua"
}

-- BRANCH
if #args >= 1 then
    branch = args[1]
else
    branch = "main"
end

-- REPO
if #args >= 2 then
    repo = args[2]
else
    repo = "https://github.com/JacobsThierry/GTNH-CropAutomation/tree/main"
end

-- INSTALL
for i = 1, #scripts do
    shell.execute(string.format("wget -f %s%s/%s", repo, branch, scripts[i]))
end
