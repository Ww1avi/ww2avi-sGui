local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ww2avi's Script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "ww2avi's Script",
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
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7708.71, 6.81, 2893.96)-- Auto-Punch Script for Muscle Legends (Faster Version)
-- Auto-Punch Script for Muscle Legends (Optimized for Speed)
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate rapid punching
local function autoPunch()
    while true do
        -- Continuously activate the tool as fast as possible
        if tool and tool.Parent == player.Character then
            for _ = 1, 5 do -- Adjust the number of rapid activations
                tool:Activate()
            end
        end
        task.wait(0.01) -- Minimal delay for responsiveness (tweak if needed)
    end
end

-- Run the auto-punch function
spawn(autoPunch)
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Muscle king Mountain",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9050.13, 16.53, -6062.51)
         -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Rock of Legends",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4191.86, 998.87, -4063.90)
    -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)     
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Eternal Rock",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7226.31, 14.66, -1232.07)
         -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Mystic Rock",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2221.03, 14.66, 1217.60)
       -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)  
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Frozen Rock",
   Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2588.43, 14.66, -269.86)
    -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)     
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto hit Tiny Rock",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.32, 14.85, 2092.67)
         -- Auto-Punch Script for Muscle Legends
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChild("Punch") -- Replace "Punch" with the tool's name

if tool then
    tool.Parent = player.Character -- Equip the tool
end

-- Function to simulate punching
local function autoPunch()
    while true do
        wait(0.1) -- Delay between punches
        if tool and tool.Parent == player.Character then
            tool:Activate() -- Simulate punch activation
        end
    end
end

-- Run the auto-punch function
spawn(autoPunch)
   end,
})

local Paragraph = Tab:CreateParagraph({Title = "Enjoy!", Content = "Script Made by Ww2avi"})

local Tab = Window:CreateTab("Rebith Tab", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
   Name = "Auto Rebith",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         local e = game:GetService("ReplicatedStorage").rEvents.rebirthRemote
while true do
    for _ = 1, 2 do e:InvokeServer("rebirthRequest") end
    task.wait(1)
end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Anti Rebiths",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldIndex = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "InvokeServer" and self == game:GetService("ReplicatedStorage").rEvents.rebirthRemote then
        return
    end
    return oldIndex(self, ...)
end)
setreadonly(mt, true)
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Tab = Window:CreateTab("Auto Equip", 4483362458) -- Title, Image

local Dropdown = Tab:CreateDropdown({
   Name = "Pet Dropdown",
   Options = {
      "Equip Golden Viking", "Equip Magic Butterfly", "Equip Flame Lord", "Equip Neon Guardian", "Equip Aether Spirit Bunny", 
      "Equip Flaming Hedgehog", "Equip Darkstar Hunter", "Equip Cybernetic Showdown Dragon", "Equip Mystic Unicorn", "Equip Blue Shark"
   },
   CurrentOption = {"Equip Golden Viking"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- Unique flag for saving configuration
   Callback = function(Options)
      if Options[1] == "Equip Golden Viking" then
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Epic["Golden Viking"])
         print("Equip Golden Viking")
      elseif Options[1] == "Equip Magic Butterfly" then
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Magic Butterfly"])
         print("Equip Magic Butterfly")
      elseif Options[1] == "Equip Flame Lord" then
         -- Script for Equip Flame Lord
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Flame Lord"])
         print("Equip Flame Lord")
      elseif Options[1] == "Equip Neon Guardian" then
         -- Script for Equip Neon Guardian
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Neon Guardian"])
         print("Equip Neon Guardian")
      elseif Options[1] == "Equip Aether Spirit Bunny" then
         -- Script for Equip Aether Spirit Bunny
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Aether Spirit Bunny"])
         print("Equip Aether Spirit Bunny")
      elseif Options[1] == "Equip Flaming Hedgehog" then
         -- Script for Equip Flaming Hedgehog
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Flaming Hedgehog"])
         print("Equip Flaming Hedgehog")
      elseif Options[1] == "Equip Darkstar Hunter" then
         -- Script for Equip Darkstar Hunter
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Darkstar Hunter"])
         print("Equip Darkstar Hunter")
      elseif Options[1] == "Equip Cybernetic Showdown Dragon" then
         -- Script for Equip Cybernetic Showdown Dragon
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Cybernetic Showdown Dragon"])
         print("Equip Cybernetic Showdown Dragon")
      elseif Options[1] == "Equip Mystic Unicorn" then
         -- Script for Equip Mystic Unicorn
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Unique["Mystic Unicorn"])
         print("Equip Mystic Unicorn")
      elseif Options[1] == "Equip Blue Shark" then
         -- Script for Equip Blue Shark
         game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", game:GetService("Players").LocalPlayer.petsFolder.Epic["Blue Shark"])
         print("Equip Blue Shark")
      end
   end,
})

local Tab = Window:CreateTab("Auto Hatch", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Hatch Frost Crystal",
   Callback = function()
   game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Frost Crystal")
   end,
})

local Button = Tab:CreateButton({
   Name = "Mythical Crystal",
   Callback = function()
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Mythical Crystal")
   end,
})

local Button = Tab:CreateButton({
   Name = "Inferno Crystal",
   Callback = function()
 game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Inferno Crystal")
   end,
})

local Button = Tab:CreateButton({
   Name = "Elite Crystal",
   Callback = function()
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Muscle Elite Crystal")
   end,
})

local Button = Tab:CreateButton({
   Name = "Galaxy Oracle Crystal",
   Callback = function()
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Galaxy Oracle Crystal")
   end,
})

local Button = Tab:CreateButton({
   Name = "Jungle Crystal",
   Callback = function()
   game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal","Jungle Crystal")
   end,
})
