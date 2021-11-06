local GUI = require("GUI")
local os = require("os")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local filesystemDialog = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Open", "Cancel", "File name", "/")
filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialog:addExtensionFilter(".lua")
filesystemDialog:addExtensionFilter(".txt")
filesystemDialog.onSubmit = function(path)
  workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x000000))
  os.execute("edit " .. path)
  os.exit()
end

filesystemDialog:show()

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()