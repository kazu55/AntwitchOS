-- Declerations --
local InstallDirectory = "/AntwitchOS/Programs/"

-- images have to be 14 wide and 7 high
os.pullEvent = os.pullEventRaw
function drawIcons(x,y)
	term.setBackgroundColor(colors.black)
	term.clear()
	term.setCursorPos(1,1)
	for i=x,y do
		if filelist[i] ~= nil then
			if fs.exists(InstallDirectory..filelist[i]..".ico") then
				if i == x then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),3,2)
					if #filelist[i] > 12 then term.setCursorPos(3,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(9-(#filelist[i]/2),8);print(" "..filelist[i].." ") end
				end
				if i == x+1 then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),19,2) 
					if #filelist[i] > 12 then term.setCursorPos(19,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(25-(#filelist[i]/2),8);print(" "..filelist[i].." ") end
				end
				if i == x+2 then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),35,2)
					if #filelist[i] > 12 then term.setCursorPos(35,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(41-(#filelist[i]/2),8);print(" "..filelist[i].." ") end				
				end
				
				if i == x+3 then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),3,10) 
					if #filelist[i] > 12 then term.setCursorPos(3,6);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(9-(#filelist[i]/2),16);print(" "..filelist[i].." ") end
				end
				
				if i == x+4 then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),19,10)
					if #filelist[i] > 12 then term.setCursorPos(19,16);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(25-(#filelist[i]/2),16);print(" "..filelist[i].." ") end 
				end
				if i == x+5 then 
					paintutils.drawImage(paintutils.loadImage(InstallDirectory..filelist[i]..".ico"),35,10) 
					if #filelist[i] > 12 then term.setCursorPos(35,16);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(41-(#filelist[i]/2),16);print(" "..filelist[i].." ") end
				end
			else 
				if i == x then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,3,2)
					if #filelist[i] > 12 then term.setCursorPos(3,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(9-(#filelist[i]/2),8);print(" "..filelist[i].." ") end
				end
				if i == x+1 then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,19,2)
					if #filelist[i] > 12 then term.setCursorPos(19,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(25-(#filelist[i]/2),8);print(" "..filelist[i].." ") end
				end
				if i == x+2 then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,35,2)
					if #filelist[i] > 12 then term.setCursorPos(35,8);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(41-(#filelist[i]/2),8);print(" "..filelist[i].." ") end
				end
				if i == x+3 then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,3,10)
					if #filelist[i] > 12 then term.setCursorPos(3,16);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(9-(#filelist[i]/2),16);print(" "..filelist[i].." ") end
				end
				if i == x+4 then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,19,10)
					if #filelist[i] > 12 then term.setCursorPos(19,16);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(25-(#filelist[i]/2),16);print(" "..filelist[i].." ") end 
				end
				if i == x+5 then 
					missing = paintutils.loadImage(InstallDirectory.."missingicon.ico")
					paintutils.drawImage(missing,35,10) 
					if #filelist[i] > 12 then term.setCursorPos(35,16);term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);print(" "..string.sub(filelist[i],1,9).."... ") else term.setBackgroundColor(colors.gray);term.setTextColor(colors.white);term.setCursorPos(41-(#filelist[i]/2),16);print(" "..filelist[i].." ") end
				end
			end
		end
	end
end
term.clear()
term.setCursorPos(1,1)

filelist = fs.list(InstallDirectory)
local i=1
while i<= #filelist do
	if string.lower(string.sub(filelist[i],#filelist[i]-3,#filelist[i])) == ".ico" then
		table.remove(filelist,i)
	else i=i+1 end
end


currenticonnumber = 1
drawIcons(currenticonnumber,#filelist)
while true do
	term.setCursorPos(1, 1)
	textutils.formatTime(os.time(),true)
	local event,p1,p2,p3 = os.pullEvent()
	if event == "mouse_scroll" then
		if p1 == 1 and currenticonnumber +3 <= #filelist then currenticonnumber = currenticonnumber + 3
		elseif p1 == -1 and currenticonnumber -3 >= 1 then currenticonnumber = currenticonnumber - 3 end
		drawIcons(currenticonnumber,#filelist)
	elseif event == "mouse_click" and p1 == 1  then
		local x = p2;y = p3
		term.setBackgroundColor(colors.black);term.setTextColor(colors.white);
		if (x >= 3 and x <=16) and (y >=2 and y <= 8) and filelist[currenticonnumber] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber]) end
		if (x >= 19 and x <=32) and (y >=2 and y <= 8)  and filelist[currenticonnumber+1] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber+1]) end
		if (x >= 35 and x <=48) and (y >=2 and y <= 8)  and filelist[currenticonnumber+2] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber+2]) end
		if (x >= 3 and x <=16) and (y >=10 and y <= 16)  and filelist[currenticonnumber+3] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber+3]) end
		if (x >= 19 and x <=32) and (y >=10 and y <= 16) and filelist[currenticonnumber+4] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber+4]) end
		if (x >= 35 and x <=48) and (y >=10 and y <= 16) and filelist[currenticonnumber+5] ~= nil then shell.run("fg " .. InstallDirectory..filelist[currenticonnumber+5]) end
	end
end
