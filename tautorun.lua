shell = require("shell")
GUI = require("GUI")
term = require("term")

------------------------------------------------------------------
term.clear()
GUI.aleat("start Copy.  I don't Power off.")
shell.execute("cp -fr /UntitledOS/temp/* /UntitledOS")
