local GUI = require("GUI")
local computer = require("computer")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

-- Add menu object to workspace
local menu = workspace:addChild(GUI.menu(1, 1, workspace.width, 0xEEEEEE, 0x666666, 0x3366CC, 0xFFFFFF))
-- Add context menu and few items to it
local contextMenu = menu:addItem("test", 0x0)
contextMenu:addItem("PowerOFF").onTouch = function()
  computer.shutdown()
end
contextMenu:addItem("Reboot").onTouch = function()
  computer.shutdown(true)
end
contextMenu:addSeparator()
contextMenu:addItem("Save")
contextMenu:addItem("Save as")
-- Add whatever you want
menu:addItem("Edit")
menu:addItem("View")
menu:addItem("About")

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
