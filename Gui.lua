local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "💪Ww2avi's Muscle Legends script💪",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Ww2avi's Script",
   LoadingSubtitle = "by Ww2avi",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Pinguin Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
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

local Tab = Window:CreateTab("Auto Rebith", 4483362458) -- Title, Image

Rayfield:Notify({
   Title = "Notification Title",
   Content = "You Executed the script please wait!",
   Duration = 6.5,
   Image = 4483362458,
})

local Button = MainTab:CreateButton({
   Name = "Auto Punch Jungle rock",
   Callback = function()

            -- Variables
local autoPunch = true

-- Function to auto-punch the Jungle Rock
local function autoPunchRock()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local tool = player.Backpack:FindFirstChildOfClass("Tool") or character:FindFirstChildOfClass("Tool")

    if not tool then
        warn("No tool found to punch with!")
        return
    end

    -- Toggle auto-punch
    autoPunch = not autoPunch

    if autoPunch then
        print("Auto-Punch started!")
        while autoPunch do
            -- Teleport to the Jungle Rock
            local rockPosition = Vector3.new(-7694.34375, 6.8115, 2869.5095) -- Update the position as needed
            humanoidRootPart.CFrame = CFrame.new(rockPosition)

            -- Activate the tool to punch
            tool:Activate()
            print("Punching Jungle Rock...")

            wait(0.5) -- Delay between punches
        end
    else
        print("Auto-Punch stopped!")
    end
end

-- Attach this function to a button
local autoPunchButton = createContentButton("Auto-Punch Jungle Rock", UDim2.new(0, 10, 0, 170)) -- Adjust position as needed
autoPunchButton.MouseButton1Click:Connect(autoPunchRock)
   end,
})
