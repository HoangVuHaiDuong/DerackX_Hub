local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local KeyWindow = OrionLib:MakeWindow({Name = "DerackX Hub", HidePremium = false, SaveConfig = true, IntroEnabled = false, IntroText = "Key System"})

OrionLib:MakeNotification({
	Name = "Starting!",
	Content = "Welcom "..Player.Name.." to DerackX Hub",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "hello"
_G.KeyInput = "string"

function Destroy()
    game:GetService("CoreGui").OrionLib:Destroy()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You Have Entered The Correct Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "InCorrect Key!",
        Content = "Valid Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab1 = KeyWindow:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab1:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
            -- Destroy()
            if game.PlaceId == 8750997647 then
                loadstring(game:HttpGet('https://raw.githubusercontent.com/HoangVuHaiDuong/DerackX_Hub/main/ClickerSimulator.lua'))();
            end
            -- if game.PlaceId == 8750997647 then

            --     local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
            --     local Window = OrionLib:MakeWindow({Name = "Derack16X Hub | ⚡Clicker Simulator!", HidePremium = false, SaveConfig = true, ConfigFolder = "ConfigClicker", IntroEnabled = true, IntroText = "DerackX Hub"})
                
            --     --Values
            --     _G.autoTap = true
            --     _G.autoRebirth = true
            --     _G.autoUpdrageTapMulti = true
            --     _G.autoUpdrageMoreRebirth = true
                
            --     --Functions
            --     --farming
            --     function autoTap()
            --         while _G.autoTap == true do
            --             game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
            --             wait(.0000000001)
            --          end    
            --     end
                
            --     function autoRebirth()
            --         while _G.autoRebirth == true do
            --             game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
            --             wait(.0000000001)
            --          end
            --     end
                
            --     --updrage
            --     function autoUpdrageTapMulti()
            --         while _G.autoUpdrageTapMulti == true do
            --             game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","TapMultiplier")
            --             wait(.0000000001)
            --          end
            --     end
                
            --     function autoUpdrageMoreRebirth()
            --         while _G.autoUpdrageMoreRebirth == true do
            --             game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","RebirthsUpgrade")
            --             wait(.0000000001)
            --          end
            --     end
                
                
            --     --tabs
            --     local farmTab = Window:MakeTab({
            --         Name = "Farm",
            --         Icon = "rbxassetid://4483345998",
            --         PremiumOnly = false
            --     })
                
            --     local updrageTab = Window:MakeTab({
            --         Name = "Updrage",
            --         Icon = "rbxassetid://4483345998",
            --         PremiumOnly = false
            --     })
                
            --     --toggle & ... in tabs
            --     --farm
            --     farmTab:AddToggle({
            --         Name = "Auto Tap",
            --         Default = false,
            --         Callback = function(Value)
            --             _G.autoTap = Value
            --             autoTap()
            --         end    
            --     })
                
            --     farmTab:AddToggle({
            --         Name = "Auto Rebirth",
            --         Default = false,
            --         Callback = function(Value)
            --             _G.autoRebirth = Value
            --             autoRebirth()
            --         end    
            --     })
                
            --     --updrage
            --     updrageTab:AddToggle({
            --         Name = "Tap Multi",
            --         Default = false,
            --         Callback = function(Value)
            --             _G.autoUpdrageTapMulti = Value
            --             autoUpdrageTapMulti()
            --         end    
            --     })
                
            --     updrageTab:AddToggle({
            --         Name = "More Rebirths",
            --         Default = false,
            --         Callback = function(Value)
            --             _G.autoUpdrageMoreRebirth = Value
            --             autoUpdrageMoreRebirth()
            --         end    
            --     })
                
                
                
            --     --eggs
                
            --     end
            --     OrionLib:Init()
            CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
  	end    
})

OrionLib:Init()
