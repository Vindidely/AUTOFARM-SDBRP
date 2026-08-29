-- ============================================================
-- 🔥 MUSOR HUB 🔥
-- ============================================================
print("🔥 MUSOR HUB ЗАГРУЖЕН!")
print("========================================")

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MUSOR_HUB"
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(1, 0, 1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 400, 0, 80)
Title.Position = UDim2.new(0.5, -200, 0.3, 0)
Title.BackgroundTransparency = 1
Title.Text = "MUSOR HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

local ButtonFrame = Instance.new("Frame")
ButtonFrame.Size = UDim2.new(0, 300, 0, 130)
ButtonFrame.Position = UDim2.new(0.5, -150, 0.55, 0)
ButtonFrame.BackgroundTransparency = 1
ButtonFrame.Parent = MainFrame

local BtnStart = Instance.new("TextButton")
BtnStart.Size = UDim2.new(1, 0, 0, 50)
BtnStart.Position = UDim2.new(0, 0, 0, 0)
BtnStart.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
BtnStart.Text = "▶ СТАРТ"
BtnStart.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnStart.TextScaled = true
BtnStart.Font = Enum.Font.GothamBold
BtnStart.Parent = ButtonFrame

local BtnStop = Instance.new("TextButton")
BtnStop.Size = UDim2.new(1, 0, 0, 50)
BtnStop.Position = UDim2.new(0, 0, 0, 65)
BtnStop.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
BtnStop.Text = "⏹ СТОП"
BtnStop.TextColor3 = Color3.fromRGB(200, 200, 200)
BtnStop.TextScaled = true
BtnStop.Font = Enum.Font.GothamBold
BtnStop.Parent = ButtonFrame

local HiddenFrame = Instance.new("Frame")
HiddenFrame.Size = UDim2.new(1, 0, 1, 0)
HiddenFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HiddenFrame.BackgroundTransparency = 1
HiddenFrame.Visible = false
HiddenFrame.Parent = ScreenGui

local HiddenText = Instance.new("TextLabel")
HiddenText.Size = UDim2.new(1, 0, 1, 0)
HiddenText.BackgroundTransparency = 1
HiddenText.Text = "MUSOR HUB\nАКТИВИРОВАН"
HiddenText.TextColor3 = Color3.fromRGB(255, 255, 255)
HiddenText.TextScaled = true
HiddenText.Font = Enum.Font.GothamBold
HiddenText.Parent = HiddenFrame

local function ShowHidden()
    HiddenFrame.Visible = true
    local tween = TweenService:Create(HiddenFrame, TweenInfo.new(0.5), {
        BackgroundTransparency = 0
    })
    tween:Play()
    MainFrame.Visible = false
end

BtnStart.MouseButton1Click:Connect(ShowHidden)
BtnStop.MouseButton1Click:Connect(ShowHidden)

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Escape and HiddenFrame.Visible then
        return
    end
end)

print("✅ ГОТОВО! НАЖМИ СТАРТ ИЛИ СТОП")