-- Create the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Ww2avi's"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

-- Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Parent = mainFrame
titleLabel.Text = "Detections"
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, 0, 0, 30)

-- Subtitle
local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Name = "SubtitleLabel"
subtitleLabel.Parent = mainFrame
subtitleLabel.Text = "The basic and essential settings that you can quickly modify to tweak your experience"
subtitleLabel.Font = Enum.Font.SourceSans
subtitleLabel.TextSize = 12
subtitleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitleLabel.TextWrapped = true
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Size = UDim2.new(1, -20, 0, 40)
subtitleLabel.Position = UDim2.new(0, 10, 0, 30)

-- Button for Teleporting and Hitting Muscle King Mountain
local muscleKingButton = Instance.new("TextButton")
muscleKingButton.Name = "MuscleKingButton"
muscleKingButton.Parent = mainFrame
muscleKingButton.Text = "Teleport to Muscle King Mountain"
muscleKingButton.Font = Enum.Font.SourceSansBold
muscleKingButton.TextSize = 16
muscleKingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
muscleKingButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
muscleKingButton.Size = UDim2.new(1, -20, 0, 40)
muscleKingButton.Position = UDim2.new(0, 10, 1, -50)

muscleKingButton.MouseButton1Click:Connect(function()
    -- Print debug to make sure the button is clicked
    print("Button clicked! Trying to teleport...")

    -- Check for Muscle King Mountain in the game
    local muscleKingMountain = game.Workspace:FindFirstChild("Muscle King Mountain")

    if muscleKingMountain then
        -- Print debug to ensure Muscle King Mountain is found
        print("Found Muscle King Mountain!")

        -- Teleport the player to Muscle King Mountain using CFrame
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = muscleKingMountain.CFrame + Vector3.new(0, 5, 0)  -- Slight offset to avoid clipping
            print("Teleported to Muscle King Mountain!")
        else
            print("HumanoidRootPart not found!")
        end
    else
        -- Print debug if the object is not found
        print("Muscle King Mountain not found!")
    end
end

-- Draggable GUI functionality (same as before)
local dragging, dragInput, dragStart, startPos

mainFrame.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
