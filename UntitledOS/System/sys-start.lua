local image = require("Image")
local GUI = require("GUI")
local shell = require("shell")
local os = require("os")
local comp = require("computer")
local compo = require("component")

if compo.isAvailable("sound") then
  local sound = compo.sound
  
  
  sound.open(1)
  sound.setWave(1, sound.modes.sine)
  sound.setFrequency(1, 1000)
  sound.setVolume(1, 0.25)
  sound.setADSR(1, 1000, 500, 0.33, 1000)
  
  sound.delay(1000)
  
  sound.open(2)
  sound.setWave(2, sound.modes.triangle)
  sound.setFrequency(2, 523)
  sound.setVolume(2, 0.6)
  sound.setADSR(2, 1, 250, 0, 1)
  
  sound.delay(750)
  
  sound.open(3)
  sound.setWave(3, sound.modes.triangle)
  sound.setFrequency(3, 659)
  sound.setVolume(3, 0.6)
  sound.setADSR(3, 1, 250, 0, 1)
  
  sound.delay(750)
  
  sound.open(4)
  sound.setWave(4, sound.modes.triangle)
  sound.setFrequency(4, 783)
  sound.setVolume(4, 0.6)
  sound.setADSR(4, 1, 250, 0, 1)
  
  sound.delay(750)
  
  sound.open(5)
  sound.setWave(5, sound.modes.triangle)
  sound.setFrequency(5, 1046)
  sound.setVolume(5, 0.6)
  sound.setADSR(5, 1, 250, 0, 1)
  
  sound.delay(1250)
  
  sound.open(6)
  sound.setWave(6, sound.modes.triangle)
  sound.setFrequency(6, 523)
  sound.setVolume(6, 0.6)
  sound.setADSR(6, 1, 250, 0, 1)
  
  sound.delay(500)
  
  sound.process()
end
------------------------------------------------------------------------------------------

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x1E1E1E))

local window3 = workspace:addChild(GUI.titledWindow(50, 22, 60, 20, "スタートメニュー", true))
-- Attach an single cell layout to it
local layout = window3:addChild(GUI.layout(1, 2, window3.width, window3.height - 1, 1, 1))
-- Add some stuff to layout
layout:addChild(GUI.roundedButton(2, 18, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "ログイン")).onTouch = function()
  shell.execute("/UntitledOS/System/desktop.lua")
end

layout:addChild(GUI.roundedButton(2, 21, 30, 3, 0xFFFFFF, 0x555555, 0x880000, 0xFFFFFF, "終了")).onTouch = function()
  os.exit()
end

------------------------------------------------------------------------------------------

workspace:draw()
workspace:start()
