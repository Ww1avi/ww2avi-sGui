local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ww2aviXnuggiez Script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "ww2aviXnuggiez Script",
   LoadingSubtitle = "by Ww2avi",
   Theme = "Dark Blue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = True, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/QXWzJmCP", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = True -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("🗻Rocks", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Auto hit Ancient jungle rock",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7708.71, 6.81, 2893.96)
         -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.5) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)
   end,
})
