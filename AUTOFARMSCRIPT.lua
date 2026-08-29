-- ============================================================
-- 🔥 MUSOR HUB 🔥
-- ============================================================
-- ЭТОТ КОД БУДЕТ ЗАГРУЖЕН ЧЕРЕЗ LOADSTRING
-- ============================================================

-- ============================================================
-- 📦 GITHUB CONTENT (ВСТРОЕННЫЙ В СКРИПТ)
-- ============================================================
local GithubContent = {
    repo = "AUTOFARM-SDBRP",
    author = "Vindidely",
    version = "2.0.0",
    source = "https://raw.githubusercontent.com/Vindidely/AUTOFARM-SDBRP/main/main.lua"
}

print("========================================")
print("🔥 MUSOR HUB ЗАГРУЖЕН")
print("========================================")
print("📌 GitHub: " .. GithubContent.source)
print("📌 Версия: " .. GithubContent.version)
print("========================================")

-- ============================================================
-- 🎮 GUI
-- ============================================================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

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

-- GitHub информация на экране
local GitLabel = Instance.new("TextLabel")
GitLabel.Size = UDim2.new(0, 400, 0, 30)
GitLabel.Position = UDim2.new(0.5, -200, 0.4, 0)
GitLabel.BackgroundTransparency = 1
GitLabel.Text = "GitHub: " .. GithubContent.repo
GitLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
GitLabel.TextScaled = true
GitLabel.Font = Enum.Font.GothamMedium
GitLabel.Parent = MainFrame

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

print("========================================")
print("✅ ГОТОВО! НАЖМИ СТАРТ ИЛИ СТОП")
print("========================================")