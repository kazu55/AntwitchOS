local GUI = require("GUI")
local os = require("os")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local filesystemDialogy = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Paste", "Cancel", "File name", "/")
filesystemDialogy:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialogy.onSubmit = function(pathy)
  os.execute("cp " .. pathx .. " " .. pathy)
  os.exit()
end

local filesystemDialogx = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Copy", "Cancel", "File name", "/")
filesystemDialogx:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialogx.onSubmit = function(pathx)
end

filesystemDialogy:show()
filesystemDialogx:show()


--------------------------------------------------------------------------------

workspace:draw()
workspace:start()
