local term = require("term")
local GUI = require("GUI")
local io = require("io")
local os = require("os")
local rootpasswd = "0000"
function run()
  term.clear()
  print("Please enter your password. The initial value is 0000.")
  passinput = io.read()
  if passinput == rootpasswd then
    return "true"
    os.exit()
  else
    return "false"
    os.exit()
  end
end
