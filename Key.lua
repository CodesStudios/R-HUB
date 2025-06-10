-- 🔐 CodysHUB Key System GUI (Expanded)
local ValidKey = "G7kP-29Xr-VtLm-Q84a-YZ2d"
local player = game:GetService("Players").LocalPlayer

local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "CodysHubKeyPrompt"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 400, 0, 280)
frame.Position = UDim2.new(0.5, -200, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.05

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "🔐 Enter CodysHUB Key"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 26

local input = Instance.new("TextBox", frame)
input.Position = UDim2.new(0.1, 0, 0.25, 0)
input.Size = UDim2.new(0.8, 0, 0, 40)
input.PlaceholderText = "Paste your key here..."
input.Text = ""
input.Font = Enum.Font.SourceSans
input.TextSize = 20
input.TextColor3 = Color3.new(1,1,1)
input.BackgroundColor3 = Color3.fromRGB(35, 35, 65)

local buttonSubmit = Instance.new("TextButton", frame)
buttonSubmit.Position = UDim2.new(0.1, 0, 0.45, 0)
buttonSubmit.Size = UDim2.new(0.8, 0, 0, 35)
buttonSubmit.Text = "✅ Submit Key"
buttonSubmit.Font = Enum.Font.SourceSansBold
buttonSubmit.TextSize = 20
buttonSubmit.TextColor3 = Color3.new(1, 1, 1)
buttonSubmit.BackgroundColor3 = Color3.fromRGB(0, 170, 255)

local buttonCopy = Instance.new("TextButton", frame)
buttonCopy.Position = UDim2.new(0.1, 0, 0.62, 0)
buttonCopy.Size = UDim2.new(0.8, 0, 0, 35)
buttonCopy.Text = "📋 Copy Key Link"
buttonCopy.Font = Enum.Font.SourceSansBold
buttonCopy.TextSize = 20
buttonCopy.TextColor3 = Color3.new(1, 1, 1)
buttonCopy.BackgroundColor3 = Color3.fromRGB(0, 120, 255)

local buttonDiscord = Instance.new("TextButton", frame)
buttonDiscord.Position = UDim2.new(0.1, 0, 0.79, 0)
buttonDiscord.Size = UDim2.new(0.8, 0, 0, 35)
buttonDiscord.Text = "💬 Join Discord"
buttonDiscord.Font = Enum.Font.SourceSansBold
buttonDiscord.TextSize = 20
buttonDiscord.TextColor3 = Color3.new(1, 1, 1)
buttonDiscord.BackgroundColor3 = Color3.fromRGB(50, 100, 255)

-- ✅ Launch 3 scripts if key is valid
local function launchScripts()
	gui:Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CodesStudios/CodysHUB-Roblox/main/Universal.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CodesStudios/ESP-Roblox/refs/heads/main/main.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CodesStudios/noclip-Roblox/refs/heads/main/main.lua"))()
end

buttonSubmit.MouseButton1Click:Connect(function()
	if input.Text == ValidKey then
		buttonSubmit.Text = "✅ Valid Key!"
		wait(0.5)
		launchScripts()
	else
		buttonSubmit.Text = "❌ Wrong Key"
		wait(1)
		buttonSubmit.Text = "✅ Submit Key"
	end
end)

buttonCopy.MouseButton1Click:Connect(function()
	setclipboard("https://raw.githubusercontent.com/CodesStudios/CodysHUB-Roblox/main/CodysLoader.lua")
	buttonCopy.Text = "✔️ Copied!"
	wait(1)
	buttonCopy.Text = "📋 Copy Key Link"
end)

buttonDiscord.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/YOURDISCORDHERE") -- Change to your actual link
	buttonDiscord.Text = "✔️ Copied Invite!"
	wait(1)
	buttonDiscord.Text = "💬 Join Discord"
end)
