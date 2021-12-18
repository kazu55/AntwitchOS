-- functions
backgr = "/root/backgr.nfp"


function drawdesk()
term.clear()
deskimage = paintutils.loadImage(backgr)
paintutils.drawImage(deskimage, 1, 1)
end

function drawmenu()
term.setBackgroundColor(colors.gray)
term.setCursorPos(1, 1)
term.clearLine()
print("[Menu]")
end

function powermenu()
    event, button, x, y = os.pullEvent("mouse_click")
    print("PowerOFF")
    if button ==1 then
        if y==2 and x>=-1 and x<=8 then
            os.shutdown()
        end
    end
end




function main()
    event, button, x, y = os.pullEvent("mouse_click")
    if button ==1 then
        if y==1 and x>=-1 and x<=6 then
            powermenu()
        end
    end



main()

end


drawdesk()
drawmenu()
main()