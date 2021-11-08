local term = require("term")
local GUI = require("GUI")
local io = require("io")
local rootpasswd = "0000"
function run()
  term.clear()
  print("Please enter your password. The initial value is 0000.")
  passinput = io.read()
  if passinput == rootpasswd then
    return "true"
  else
    return "false"
  end
end
