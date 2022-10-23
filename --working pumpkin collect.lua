--working pumpkin collect
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("cool", "DarkTheme")
local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")
Section:NewToggle("Teleport pumpkin", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
        _G.Toggle = true -- true it collects false it doesnt, re-execute every time you change
        local playerr = game.Players.LocalPlayer.Character.HumanoidRootPart
        function dothis()
           while wait(0.1) and _G.Toggle do
               for _,v in pairs(game:GetService("Workspace").Scripts.PumpkinsCollect.Storage:GetDescendants()) do
                   if v.Name == "TouchInterest" then
                       firetouchinterest(playerr, v.Parent, 0)
                       firetouchinterest(playerr, v.Parent, 1)
                   end
               end
           end
        end
        dothis()
    else
        print("Toggle Off")
        _G.Toggle = false -- true it collects false it doesnt, re-execute every time you change
        local playerr = game.Players.LocalPlayer.Character.HumanoidRootPart
        function dothis()
           while wait(0.1) and _G.Toggle do
               for _,v in pairs(game:GetService("Workspace").Scripts.PumpkinsCollect.Storage:GetDescendants()) do
                   if v.Name == "TouchInterest" then
                       firetouchinterest(playerr, v.Parent, 0)
                       firetouchinterest(playerr, v.Parent, 1)
                   end
               end
           end
        end
        dothis()
    end
end)

end)
