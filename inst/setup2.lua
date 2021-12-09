local fs = require("filesystem")
local shell = require("shell")
local computer = require("computer")
local term = require("term")
local thread = require("thread")
local GUI = require("GUI")
local io = require("io")
local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local files = fs.open("./files.txt", "r")

local function install()
	for i = 1, #files do
		download(files[i].url, files[i].path)
	end
	window3:remove()
	workspace:draw()
	computer.shutdown(true)
end




local function download(url, path)
  fs.makeDirectory(fs.path(path))
  shell.execute("wget -fq " .. url .. " " .. path)
end


GUI.alert("Read the terms and press OK if you agree. kazu55/AntwitchOS/master/Terms.txt")

local window5 = GUI.titledWindow(3, 3, 60, 20, "AntwitchOS Setup - Installing", true)
local layout2 = window5:addChild(GUI.layout(1, 2, window5.width, window5.height - 1, 1, 1))
layout2:addChild(GUI.text(1, 1, 0x666666, "The location where AntwitchOS is installed is /UntitledOS."))
layout2:addChild(GUI.text(1, 2, 0x666666, "The installation of AntwitchOS has started."))
layout2:addChild(GUI.text(1, 3, 0x666666, "Please wait until it is installed..."))

local proc = thread.create(install())
proc:detach()

workspace:draw()
workspace:start()
