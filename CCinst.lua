install = {
  title = 'AntwitchOS',
  version = 'Dev',
  author = 'TAMASAN',
  description = 'description'
  license = 'license',
  copyrightYear = 2021,
  copyrightHolders = 'TAMASAN',
  diskspace = 380000,
  rebootAfter = true,
  gitRepo = 'kazu55/AntwitchOS',
  gitBranch = 'ComputerCraft',
  branches = {
    { branch = 'ComputerCraft', description = '1.8+' },
  },
  preCopy = function(mode)
    if mode == 'update' then
      fs.delete('sys')
    end
  end,
  steps = {
    install = {
      'splash',
      'license',
      'branch',
      'files',
      'review',
      'install',
    },
    update = {
      'branch',
      'review',
      'install',
    },
    automatic = {
      'install',
    },
    uninstall = {
      'review',
      'uninstall',
    },
  },
}

print('Downloading Installer...')

local url ='https://raw.githubusercontent.com/kepler155c/opus-installer/master/sys/apps/Installer.lua'
local h = _G.http.get(url)
if not h then
  error('Failed to download installer')
end

local contents = h.readAll()
if not contents then
  error('Failed to download installer')
end

local fn, msg = load(contents, 'Installer.lua', nil, _ENV)
if not fn then
  _G.printError(msg)
else
  local args = { ... }
  fn(args[1])
end
