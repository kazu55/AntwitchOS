os.loadAPI("/AntwitchOS/APIs/lddfm.lua")
local sPath = lddfm.makeMenu()
while true do
  shell.run('edit', sPath)
  sPath = lddfm.makeMenu(nil, nil, nil, nil, fs.getDir(sPath))
end