GUI = require("GUI")
local computer = require("computer")
local thread = require "thread"


--------------------------------------------------------------------------------

local workspace = GUI.workspace()
local panel = workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local filesystemDialog = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Open", "Cancel", "File name", "/")
filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialog:addExtensionFilter(".lua")
filesystemDialog.onSubmit = function(path)
  local proc = thread.create(os.execute, path)
  proc:detach() -- # detach from current process
end

workspace:addChild(GUI.roundedButton(1, workspace.height, 6, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Run the program")).onTouch = function()
  filesystemDialog:show()
end

local power = workspace:addChild(GUI.titledWindow(25, 11, 60, 20, "Reboot and Shutdown", true))
-- Attach an single cell layout to it
local layout = power:addChild(GUI.layout(1, 2, power.width, power.height - 1, 1, 1))
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
