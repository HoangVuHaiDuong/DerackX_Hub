local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local KeyWindow = OrionLib:MakeWindow({Name = "Derack16X Hub", HidePremium = false, SaveConfig = true, IntroEnabled = false, IntroText = "Key System"})

loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangVuHaiDuong/DerackX_Hub/main/Hub_key.lua",true))()

OrionLib:MakeNotification({
	Name = "Starting!",
	Content = "Welcom "..Player.Name.." to DerackX Hub",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--value

getgenv().KeyInput = "string"

--funcion"

function Destroy()
    game:GetService("CoreGui").OrionLib:Destroy()
end

function CheckKey()
    if _G.Hub_Key == KeyInput then
        Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangVuHaiDuong/DerackX_Hub/main/ClickerSimulator.lua",true))()
        CorrectKeyNotification()
    else
        IncorrectKeyNotification()
    end
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
		KeyInput = Value
	end	  
})

Tab1:AddButton({
	Name = "Check Key!",
	Callback = function()
        CheckKey()
  	end    
})