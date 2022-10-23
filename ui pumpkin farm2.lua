local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("cool", "DarkTheme")
local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")
Section:NewToggle("Teleport pumpkin", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
        _G.Script_Enabled = true -- Here you can enable / disable the script by writing 'True / False'
        local config = {
            autofarms = {
                TeleportMethod = {
                    Tp = true, -- Enable / Disable the Teleport Auto Farm [True/False]
                    TpDelay = 5, -- Here you can Edit the Speed of the Teleport Farm
                },
            },
        }
        
    else
        print("Toggle Off")
        _G.Script_Enabled = false -- Here you can enable / disable the script by writing 'True / False'
        local config = {
            autofarms = {
                TeleportMethod = {
                    Tp = false, -- Enable / Disable the Teleport Auto Farm [True/False]
                    TpDelay = 5, -- Here you can Edit the Speed of the Teleport Farm
                },
            },
        }
    end
end)
Section:NewToggle("Remote pumpkin", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
        _G.Script_Enabled = true
        local config = {
            autofarms = {
                FireTouchMethod = {
                    FiretouchInterest = true, -- Enable / Disable the FireTouchInterest Auto Farm [True/False]
                    FireTouchDelay = 5, -- Here you can Edit the Speed of the FireTouchInterest Farm
                },
            },
        }
    else
        print("Toggle Off")
        _G.Script_Enabled = false
        local config = {
            autofarms = {
                FireTouchMethod = {
                    FiretouchInterest = false, -- Enable / Disable the FireTouchInterest Auto Farm [True/False]
                    FireTouchDelay = 5, -- Here you can Edit the Speed of the FireTouchInterest Farm
                },
            },
        }
    end
local remote = game:GetService("ReplicatedStorage").Events
local path = game:GetService("Workspace").Scripts.PumpkinsCollect.Storage
local lplr = game.Players.LocalPlayer
local body = lplr.Character.HumanoidRootPart

warn("Developed by Trix#2794 and Eligorelick#8400")

remote.WorldBoost:FireServer("Halloween")

while config.autofarms.TeleportMethod.Tp do
        for i, v in pairs(path:GetDescendants()) do
            if v.Name == "main" and v:IsA("MeshPart") then
                if _G.Script_Enabled ~= true then break end
                    body.CFrame = v.CFrame
                task.wait(config.autofarms.TeleportMethod.TpDelay)
            end
        end
    wait()
end
while config.autofarms.FireTouchMethod.FiretouchInterest do
        for i, v in pairs(path:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                if _G.Script_Enabled ~= true then break end
                    firetouchinterest(v.Parent,body,1)
                    firetouchinterest(v.Parent,body,0)
                task.wait(config.autofarms.FireTouchMethod.FireTouchDelay)
            end
        end
    wait()
end
end)
