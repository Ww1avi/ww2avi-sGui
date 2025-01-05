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

-- Button for Teleporting and Hitting Ancient Jungle Rock
local ancientJungleButton = Instance.new("TextButton")
ancientJungleButton.Name = "AncientJungleButton"
ancientJungleButton.Parent = mainFrame
ancientJungleButton.Text = "Teleport to Ancient Jungle Rock"
ancientJungleButton.Font = Enum.Font.SourceSansBold
ancientJungleButton.TextSize = 16
ancientJungleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ancientJungleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ancientJungleButton.Size = UDim2.new(1, -20, 0, 40)
ancientJungleButton.Position = UDim2.new(0, 10, 1, -50)

ancientJungleButton.MouseButton1Click:Connect(function()
    -- Print debug to make sure the button is clicked
    print("Button clicked! Trying to teleport...")

    -- Check for Ancient Jungle Rock in the game
    local ancientJungleRock = game.Workspace:FindFirstChild("Ancient Jungle Rock")

    if ancientJungleRock then
        -- Print debug to ensure Ancient Jungle Rock is found
        print("Found Ancient Jungle Rock!")

        -- Teleport the player to Ancient Jungle Rock using CFrame
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = ancientJungleRock.CFrame + Vector3.new(0, 5, 0)  -- Slight offset to avoid clipping
            print("Teleported to Ancient Jungle Rock!")
        else
            print("HumanoidRootPart not found!")
        end
    else
        -- Print debug if the object is not found
        print("Ancient Jungle Rock not found!")
    end
end)

-- Draggable GUI functionality
local dragging, dragInput, dragStart, startPos

-- Function to start dragging
mainFrame.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

-- Function to drag the frame
mainFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Function to stop dragging
mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
