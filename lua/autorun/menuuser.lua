AddCSLuaFile()

if ( SERVER ) then return end

function completedchat()
    chat.AddText( Color( 255, 51, 51 ), "Thanks For using my Menu User Achievement Unlocker Addon. ", Color( 100, 255, 100 ),"This addon has now been disabled.", Color(255, 102, 178), "To remove this message unsubscribe from the addon here: https://steamcommunity.com/sharedfiles/filedetails/?id=2931612167", Color(0, 204, 204), " Leave a like while your there." )
end

function lua_menu()
    RunConsoleCommand("+menu")
    RunConsoleCommand("-menu")
end

 if achievements.IsAchieved(22) == true then
    completedchat()
end

local menuachieve = achievements.GetCount(22)

function achievementmenurun()


 for i = menuachieve, 100000 do
    local menuachieve = achievements.GetCount(22)
    timer.Simple((i/2000), function()
        lua_menu()
        pausebreak = CurTime()
        i = menuachieve
    end)
    if menuachieve > 99999 then
        completedchat()
        end
end

timer.Simple( 55, function()
    if achievements.IsAchieved(22) == true then
       completedchat()
    end
end)
end

if achievements.IsAchieved(22) == false then
    achievementmenurun()
end



concommand.Add( "force_lua_menu", function()
    achievecheck()
end )

concommand.Add( "force_lua_menu_check", function()
    print(achievements.GetCount(22))
end )



