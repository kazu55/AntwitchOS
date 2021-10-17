local image = require("Image")
local GUI = require("GUI")
local shell = require("shell")

------------------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x1E1E1E))

local window3 = workspace:addChild(GUI.titledWindow(50, 22, 60, 20, "Start", true))
-- Attach an single cell layout to it
local layout = window3:addChild(GUI.layout(1, 2, window3.width, window3.height - 1, 1, 1))
-- Add some stuff to layout
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "desktop")).onTouch = function()
  shell.execute("./desktop.lua")
end

------------------------------------------------------------------------------------------

workspace:draw()
workspace:start()
