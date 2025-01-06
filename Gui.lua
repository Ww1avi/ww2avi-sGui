-- Parent: StarterGui > ScreenGui > MainFrame

local gui = Instance.new("ScreenGui")
gui.Name = "CustomGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = gui
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)

-- Add Title Bar
local titleBar = Instance.new("TextLabel")
titleBar.Parent = mainFrame
titleBar.Text = "Beamed v2 Dr Ray UI"
titleBar.Font = Enum.Font.SourceSansBold
titleBar.TextSize = 20
titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleBar.Size = UDim2.new(1, 0, 0, 50)

-- Add Buttons for Each Feature
local options = {"No Ads/Portals", "Size", "Size 2", "Size nan", "Invisible"}
for i, option in ipairs(options) do
    local button = Instance.new("TextButton")
    button.Name = option
    button.Parent = mainFrame
    button.Text = option
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.Size = UDim2.new(1, -20, 0, 40)
    button.Position = UDim2.new(0, 10, 0, 50 + (i - 1) * 50)
    button.MouseButton1Click:Connect(function()
        print(option .. " clicked!")
    end)
end
