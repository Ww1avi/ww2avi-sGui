-- Create the main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MuscleLegendsGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 500, 0, 350)
mainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add a UI Corner for rounded edges
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = mainFrame

-- Add the title bar
local titleBar = Instance.new("TextLabel")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
titleBar.BorderSizePixel = 0
titleBar.Text = "Ww2avi's Muscle Legends"
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.Font = Enum.Font.Gotham
titleBar.TextSize = 16
titleBar.Parent = mainFrame

-- Add a close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.Gotham
closeButton.TextSize = 14
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Add the side menu
local sideMenu = Instance.new("Frame")
sideMenu.Size = UDim2.new(0, 120, 1, -30)
sideMenu.Position = UDim2.new(0, 0, 0, 30)
sideMenu.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
sideMenu.BorderSizePixel = 0
sideMenu.Parent = mainFrame

-- Function to create menu buttons with custom text
local function createMenuButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 30)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextSize = 14
    button.Parent = sideMenu
end

-- Create menu buttons with updated labels
createMenuButton("Menu", UDim2.new(0, 0, 0, 0))
createMenuButton("Auto hatch", UDim2.new(0, 0, 0, 30))
createMenuButton("Auto crystal", UDim2.new(0, 0, 0, 60))
createMenuButton("Teleports", UDim2.new(0, 0, 0, 90))
createMenuButton("Auto Rebirth", UDim2.new(0, 0, 0, 120))

-- Add the main content area
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -120, 1, -30)
contentFrame.Position = UDim2.new(0, 120, 0, 30)
contentFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

-- Function to create content buttons
local function createContentButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 350, 0, 30)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextSize = 14
    button.Parent = contentFrame

    -- Add button feedback
    button.MouseButton1Click:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(0, 150, 0) -- Change to green when clicked
        wait(0.2)
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Reset color
    end)

    return button
end

-- Buttons in the main content area
local teleportButton = createContentButton("Teleport to Ancient Jungle Rock", UDim2.new(0, 10, 0, 10))
createContentButton("Copy Avatar", UDim2.new(0, 10, 0, 50))
createContentButton("Goto", UDim2.new(0, 10, 0, 90))
createContentButton("Refresh Avatar", UDim2.new(0, 10, 0, 130))

-- Add functionality for the teleport button
teleportButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
        warn("HumanoidRootPart not found!")
        return
    end

    -- Teleport to the rock position
    local rockPosition = Vector3.new(-7694.34375, 6.8115034103393555, 2869.509521484371)
    humanoidRootPart.CFrame = CFrame.new(rockPosition)

    -- Tool detection
    local tool = player.Backpack:FindFirstChildOfClass("Tool") or character:FindFirstChildOfClass("Tool")
    if not tool then
        print("No tool found!")
        return
    end

    print("Tool found, activating...")
    tool:Activate()

    -- Auto-punch logic
    local autoPunch = true
    while autoPunch do
        wait(0.5)
        if tool then
            tool:Activate()
            print("Auto-punch activated")
        else
            print("No tool found for auto-punch!")
            autoPunch = false
        end
    end
end)
