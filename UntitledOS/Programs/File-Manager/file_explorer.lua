local shell = require("shell")
local io = require("io")
local os = require("os")
local term = require("term")


while true do
  term.clear()
  print("Select the operation you want to perform (ls, edit, mkdir, exit, rm)?")
  operation = io.read()
  if operation == "ls" then
    print("Which directories to list?")
    list_directories = io.read()
    shell.execute("ls " .. list_directories)
    print("done")
  end
  if operation == "edit" then
    print("Which file to edit?")
    edit_files = io.read()
    shell.execute("edit " .. edit_files)
  end
  if operation == "mkdir" then
    print("Please enter the name of the folder.")
    makedir = io.read()
    shell.execute("mkdir " .. makedir)
  end
  if operation == "rm" then
    print("Please enter the name of the folder.")
    removedir = io.read()
    shell.execute("rm " .. removedir)
  end
  if operation == "exit" then
    os.exit()
  end
  os.sleep(0)
end
