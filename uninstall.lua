local shell = require("shell")
local scripts = {
    "setup.lua",
    "actions.lua",
    "database.lua",
    "gps.lua",
    "scanner.lua",
    "config.lua",
    "main.lua",
    "uninstall.lua"
}

-- UNINSTALL
for i = 1, #scripts do
    shell.execute(string.format("rm %s", scripts[i]))
    print(string.format("Uninstalled %s", scripts[i]))
end
