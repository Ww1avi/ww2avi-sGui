-- Create the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DetectionsGUI"
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

-- Switch (Toggle)
local switchLabel = Instance.new("TextLabel")
switchLabel.Name = "SwitchLabel"
switchLabel.Parent = mainFrame
switchLabel.Text = "Switch"
switchLabel.Font = Enum.Font.SourceSans
switchLabel.TextSize = 14
switchLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
switchLabel.BackgroundTransparency = 1
switchLabel.Size = UDim2.new(0.5, 0, 0, 30)
switchLabel.Position = UDim2.new(0, 10, 0, 80)

local switch = Instance.new("TextButton")
switch.Name = "Switch"
switch.Parent = mainFrame
switch.Text = "OFF"
switch.Font = Enum.Font.SourceSans
switch.TextSize = 14
switch.TextColor3 = Color3.fromRGB(255, 255, 255)
switch.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
switch.Size = UDim2.new(0, 80, 0, 30)
switch.Position = UDim2.new(1, -90, 0, 80)
switch.MouseButton1Click:Connect(function()
    if switch.Text == "OFF" then
        switch.Text = "ON"
        switch.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        switch.Text = "OFF"
        switch.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end
end)

-- Input
local inputLabel = Instance.new("TextLabel")
inputLabel.Name = "InputLabel"
inputLabel.Parent = mainFrame
inputLabel.Text = "Input"
inputLabel.Font = Enum.Font.SourceSans
inputLabel.TextSize = 14
inputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
inputLabel.BackgroundTransparency = 1
inputLabel.Size = UDim2.new(0.5, 0, 0, 30)
inputLabel.Position = UDim2.new(0, 10, 0, 120)

local inputBox = Instance.new("TextBox")
inputBox.Name = "InputBox"
inputBox.Parent = mainFrame
inputBox.Text = "Dynamic Input"
inputBox.Font = Enum.Font.SourceSans
inputBox.TextSize = 14
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
inputBox.Size = UDim2.new(0, 140, 0, 30)
inputBox.Position = UDim2.new(1, -150, 0, 120)

-- Dropdown
local dropdownLabel = Instance.new("TextLabel")
dropdownLabel.Name = "DropdownLabel"
dropdownLabel.Parent = mainFrame
dropdownLabel.Text = "Dropdown"
dropdownLabel.Font = Enum.Font.SourceSans
dropdownLabel.TextSize = 14
dropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dropdownLabel.BackgroundTransparency = 1
dropdownLabel.Size = UDim2.new(0.5, 0, 0, 30)
dropdownLabel.Position = UDim2.new(0, 10, 0, 160)

local dropdown = Instance.new("TextButton")
dropdown.Name = "Dropdown"
dropdown.Parent = mainFrame
dropdown.Text = "Option 1"
dropdown.Font = Enum.Font.SourceSans
dropdown.TextSize = 14
dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
dropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
dropdown.Size = UDim2.new(0, 140, 0, 30)
dropdown.Position = UDim2.new(1, -150, 0, 160)
dropdown.MouseButton1Click:Connect(function()
    if dropdown.Text == "Option 1" then
        dropdown.Text = "Option 2"
    elseif dropdown.Text == "Option 2" then
        dropdown.Text = "Option 3"
    else
        dropdown.Text = "Option 1"
    end
end)

-- Button
local button = Instance.new("TextButton")
button.Name = "ActionButton"
button.Parent = mainFrame
button.Text = "Tap to Interact"
button.Font = Enum.Font.SourceSans
button.TextSize = 14
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.Size = UDim2.new(1, -20, 0, 30)
button.Position = UDim2.new(0, 10, 1, -40)
button.MouseButton1Click:Connect(function()
    print("Button clicked!")
end)

-- Dragging functionality
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
