shell = require("shell")

shell.execute("cd /home && wget -f https://github.com/kazu55/AntwitchOS/blob/OpenComputers/inst.zip?raw=true inst.zip && wget -f https://raw.githubusercontent.com/mpmxyz/ocprograms/master/home/bin/tar.lua tar.lua && cd / && /home/tar.lua -x -f -v inst.zip && rm /home/tar.lua && reboot")
