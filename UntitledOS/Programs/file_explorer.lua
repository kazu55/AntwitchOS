local shell = require("shell")
local io = require("io")
local os = require("os")
while true do
  print("Select the operation you want to perform (ls, cd, edit, mkdir, exit)?")
  operation = io.read()
  if operation == ls then
    print("Which directories to list?")
    list_directories = io.read()
    shell.execute("ls " .. list_directories)
    print("done")
  elseif operation == cd then
    print("What directory to move to?")
    cd_directories = io.read()
    shell.execute("cd " .. cd_directories)
    print("done")
  elseif operation == edit then
    print("Which file to edit?")
    edit_files = io.read()
    shell.execute("edit " .. edit_files)
  elseif operation == mkdir then
    print("Please enter the name of the folder.")
    makedir = io.read()
    shell.execute("mkdir " .. makedir)
  elseif operation == exit then
    os.exit()
  else
    print("Did not enter operation.")
  end
end
