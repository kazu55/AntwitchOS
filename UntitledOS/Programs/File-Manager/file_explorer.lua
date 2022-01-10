local GUI = require("GUI")
local shell = require("shell")
local io = require("io")
local os = require("os")

--------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x2D2D2D))

local filesystemDialog = GUI.addFilesystemDialog(workspace, false, 50, math.floor(workspace.height * 0.8), "Open", "Cancel", "File name", "/")
filesystemDialog:setMode(GUI.IO_MODE_OPEN, GUI.IO_MODE_FILE)
filesystemDialog.onSubmit = function(path)
  print("Select with edit, exit, rm.")
  operation = io.read()
  if operation == "edit" then
    shell.execute("edit " .. path)
  end
  if operation == "rm" then
    shell.execute("rm " .. path)
  end
  if operation == "exit" then
    os.exit()
  end
  os.sleep(0)
end

filesystemDialog:show()

--------------------------------------------------------------------------------

workspace:draw()
workspace:start()

