local GUI = require("GUI")
local os = require("os")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local filesystemDialogx = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Copy", "Cancel", "File name", "/")
filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialog.onSubmit = function(pathx)
end

filesystemDialogx:show()

local filesystemDialogy = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Paste", "Cancel", "File name", "/")
filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialog.onSubmit = function(pathy)
  os.execute("cp " .. pathx .. " " .. pathy)
end

filesystemDialogy:show()


--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
