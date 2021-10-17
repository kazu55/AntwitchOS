GUI = require("GUI")
local computer = require("computer")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local power = workspace:addChild(GUI.titledWindow(25, 11, 60, 20, "Reboot and Shutdown", true))
-- Attach an single cell layout to it
local layout = power:addChild(GUI.layout(1, 2, window3.width, window3.height - 1, 1, 1))
-- Add some stuff to layout
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Shutdown")).onTouch = function()
  GUI.alert("GoodBye")
  computer.shutdown()
end
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Reboot")).onTouch = function()
  GUI.alert("Rebooting Computer")
  computer.shutdown(true)
end

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
