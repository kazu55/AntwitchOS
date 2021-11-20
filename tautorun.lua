local shell = require("shell")
local GUI = require("GUI")
local term = require("term")
local cp = require("computer")

------------------------------------------------------------------

term.clear()
GUI.alert("start Copy.  I don't Power off.")
shell.execute("cp -fr /UntitledOS/temp/* /UntitledOS")
shell.execute("wget -f https://raw.githubusercontent.com/kazu55/testos/master/autorun.lua /autorun.lua")
shell.execute("rm -r /UntitledOS/temp/")
term.clear()
GUI.alert("Copy is finished.")

------------------------------------------------------------------

cp.shutdown(true)
