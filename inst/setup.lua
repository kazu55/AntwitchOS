local fs = require("filesystem")
local shell = require("shell")
local computer = require("computer")
local term = require("term")
local thread = require("thread")
GUI = require("GUI")
local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local files = io.open("./files.txt", "r")

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

local window3 = GUI.titledWindow(3, 3, 60, 20, "AntwitchOS Setup - page 0", true)
local layout1 = window3:addChild(GUI.layout(1, 2, window3.width, window3.height - 1, 1, 1))
layout1:addChild(GUI.text(1, 1, 0x666666, "Hello, world, start-button click continue."))
layout1:addChild(GUI.button(1, 3, 36, 3, 0xB4B4B4, 0xFFFFFF, 0x969696, 0xB4B4B4, "Start")).onTouch = function()
	workspace:stop()
	term.clear()
end

workspace:draw()
workspace:start()

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
