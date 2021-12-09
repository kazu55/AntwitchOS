local fs = require("filesystem")
local shell = require("shell")
local computer = require("computer")
local thread = require("thread")
GUI = require("GUI")


local files = io.open("./files.txt", "r")






local function download(url, path)
  fs.makeDirectory(fs.path(path))
  shell.execute("wget -fq " .. url .. " " .. path)
end



local window3 = GUI.titledWindow(3, 3, 60, 20, "AntwitchOS Setup - page 0", true)
local layout = window3:addChild(GUI.layout(1, 2, window3.width, window3.height - 1, 1, 1))
layout:addChild(GUI.text(1, 1, 0x666666, "Hello, world, start-button click continue."))
layout:addChild(GUI.button(1, 3, 36, 3, 0xB4B4B4, 0xFFFFFF, 0x969696, 0xB4B4B4, "Start")).onTouch = function()
  window3:remove()
	workspace:draw()
end

local window4 = GUI.titledWindow(3, 3, 60, 20, "AntwitchOS Setup - page 1", true)
local layout = window4:addChild(GUI.layout(1, 2, window4.width, window4.height - 1, 1, 1))
layout:addChild(GUI.text(1, 1, 0x666666, "Hello, world, start-button click continue."))
layout:addChild(GUI.button(1, 3, 36, 3, 0xB4B4B4, 0xFFFFFF, 0x969696, 0xB4B4B4, "Start")).onTouch = function()
  window3:remove()
	workspace:draw()
end

GUI.alert("Read the terms and press OK if you agree.")

local window5 = GUI.titledWindow(3, 3, 60, 20, "AntwitchOS Setup - Installing", true)
local layout = window5:addChild(GUI.layout(1, 2, window5.width, window5.height - 1, 1, 1))
layout:addChild(GUI.text(1, 1, 0x666666, "The location where AntwitchOS is installed is /UntitledOS."))
layout:addChild(GUI.text(1, 2, 0x666666, "The installation of AntwitchOS has started."))
layout:addChild(GUI.text(1, 3, 0x666666, "Please wait until it is installed..."))


local proc = thread.create(for i = 1, #files do   download(files[i].url, files[i].path) end window3:remove() workspace:draw())
proc:detach()

computer.shutdown(true)
