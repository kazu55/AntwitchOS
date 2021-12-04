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
local contextMenu = menu:addContextMenuItem("● Applications")
contextMenu:addItem("Power Options...").onTouch = function()
	local Power = GUI.addBackgroundContainer(workspace, true, true, " ")
	Power.layout:addChild(GUI.roundedButton(3, 1, 10, 6, 0xFFFFFF, 0x555555, 0x880000, 0x880000, "Power OFF")).onTouch = function()
		computer.shutdown()
	end
	Power.layout:addChild(GUI.roundedButton(7, 1, 10, 6, 0xFFFFFF, 0x555555, 0x880000, 0x880000, "Reboot")).onTouch = function()
		computer.shutdown(true)
	end
	Power.layout:addChild(GUI.roundedButton(10, 1, 10, 6, 0xFFFFFF, 0x555555, 0x880000, 0x880000, "EXIT")).onTouch = function()
		os.exit()
	end
	workspace:draw()
	workspace:start()
end

contextMenu:addItem("Run Program...").onTouch = function()
	local filesystemDialog = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Open", "Cancel", "File name", "/UntitledOS/Programs/")
	filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
	filesystemDialog:addExtensionFilter(".lua")
	filesystemDialog.onSubmit = function(path)
		os.execute(path)
end

filesystemDialog:show()
end

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
