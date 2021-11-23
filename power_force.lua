local event = require("event")
local computer = require("computer")
local os = require("os")
local _, _, _, key = event.pull("key_down")

while true do
  if key == 29 then
    computer.shutdown()
    os.sleep(0)
  end
  if key == 42 then
    computer.shutdown(true)
    os.sleep(0)
  end
end
