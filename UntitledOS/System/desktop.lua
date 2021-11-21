GUI = require("GUI")
local computer = require("computer")
local thread = require "thread"
local os = require("os")


--------------------------------------------------------------------------------

local workspace = GUI.workspace()
local panel = workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

-- Add menu object to workspace
local menu = workspace:addChild(GUI.menu(1, 1, workspace.width, 0xEEEEEE, 0x666666, 0x3366CC, 0xFFFFFF))
-- Add first item with black color. Attack a callback-function to it
menu:addItem("Applications", 0x0).onTouch = function()
	local container = GUI.addBackgroundContainer(workspace, true, true, " ")
	local filesystemDialog = container.layout:addChild(GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Open", "Cancel", "File name", "/UntitledOS/Programs/"))
	filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
	filesystemDialog:addExtensionFilter(".lua")
	filesystemDialog.onSubmit = function(path)
		os.execute(path)
	end
	filesystemDialog:show()
end

local power = workspace:addChild(GUI.titledWindow(25, 11, 60, 20, "Reboot and Shutdown", true))
-- Attach an single cell layout to it
local layout = power:addChild(GUI.layout(1, 2, power.width, power.height - 1, 1, 1))
-- Add some stuff to layout
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Shutdown")).onTouch = function()
  computer.shutdown()
end
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "Reboot")).onTouch = function()
  computer.shutdown(true)
end

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
