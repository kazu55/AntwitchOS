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
local contextMenu = menu:addContextMenuItem("AntwitchOS")
contextMenu:addItem("Power Options").onTouch = function()
	local Power = GUI.addBackgroundContainer(workspace, true, true, " ")
	Power.layout:addChild(GUI.framedButton(3, 1, 3, 3, 0xFFFFFF, 0xFFFFFF, 0x880000, 0x880000, "Power OFF")).onTouch = function()
		computer.shutdown()
	end
	Power.layout:addChild(GUI.framedButton(7, 1, 3, 3, 0xFFFFFF, 0xFFFFFF, 0x880000, 0x880000, "Reboot")).onTouch = function()
		computer.shutdown(true)
	end
	workspace:draw()
	workspace:start()
end

contextMenu:addItem("Applications").onTouch = function()
	local container = GUI.addBackgroundContainer(workspace, true, true, " ")
	local tree2 = container.layout:addChild(GUI.filesystemTree(34, 2, 30, 41, 0xCCCCCC, 0x3C3C3C, 0x3C3C3C, 0x999999, 0x3C3C3C, 0xE1E1E1, 0xBBBBBB, 0xAAAAAA, 0xBBBBBB, 0x444444, GUI.IO_MODE_BOTH, GUI.IO_MODE_FILE))
	tree2:updateFileList()
	tree2.onItemSelected = function(path)
		os.execute(path)
	end
	workspace:draw()
	workspace:start()
end

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
