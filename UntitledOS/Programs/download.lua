local GUI = require("GUI")
local os = require("os")
local io = require("io")

print("URL")
local url = io.read()
print("save to")
local save = io.read()

os.execute("wget -f " .. url .. save)

os.exit()
