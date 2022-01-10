--------------------------------------------requires------------------------------------------------

local term = require("term")
local text = require("text")
local com = require('component')
local gpu = com.gpu
local shell = require("shell")
local thread = require("thread")

----------------------------------------------------------------------------------------------------

term.clear()
local width, height = gpu.getResolution()
local text = "AntwitchUI is Running..."

gpu.set(width / 2 - #text / 2, height / 2, text)
shell.execute("/UntitledOS/System/sys-start.lua")
