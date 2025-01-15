local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Ww2avi's", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <Ww2avi's> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

Tab:AddButton({
	Name = "Auto Train",
	Callback = function ()
            local player = game.Players.LocalPlayer

-- Function to auto-train strength
function autoTrain()
    while true do
        -- Add training logic here
        wait(1) -- adjust the wait time as needed
    end
end

-- Call to start auto-training
autoTrain()
   end,
})


OrionLib:MakeNotification({
	Name = "Notification!",
	Content = "The script loaded succesfully Enjoy!",
	Image = "rbxassetid://4483345998",
	Time = 7
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
