-- MUST V5 | CHUMA V1 | WITH LOADING ANIMATION
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MUSTV5"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 520, 0, 460)
frame.Position = UDim2.new(0.5, -260, 0.5, -230)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(0, 255, 255)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

-- TITLE
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 55)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(50, 0, 80)
title.BackgroundTransparency = 0
title.TextColor3 = Color3.fromRGB(255, 100, 255)
title.Text = "MUST V5  |  CHUMA V1"
title.TextSize = 30
title.Font = Enum.Font.SourceSansBold
title.BorderSizePixel = 2
title.BorderColor3 = Color3.fromRGB(255, 0, 200)
title.Parent = frame

-- MINIMIZE
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 45, 0, 45)
minimizeBtn.Position = UDim2.new(1, -55, 0, 5)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
minimizeBtn.BackgroundTransparency = 0
minimizeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
minimizeBtn.Text = "─"
minimizeBtn.TextSize = 30
minimizeBtn.Font = Enum.Font.SourceSansBold
minimizeBtn.BorderSizePixel = 2
minimizeBtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Parent = frame

local isMinimized = false
local originalSize = frame.Size
local originalPos = frame.Position

minimizeBtn.MouseButton1Click:Connect(function()
	isMinimized = not isMinimized
	if isMinimized then
		frame.Size = UDim2.new(0, 220, 0, 60)
		frame.Position = UDim2.new(0.8, -110, 0.05, 0)
		minimizeBtn.Text = "+"
		for _, child in pairs(frame:GetChildren()) do
			if child ~= title and child ~= minimizeBtn then
				child.Visible = false
			end
		end
		title.Text = "MUST V5 [MIN]"
	else
		frame.Size = originalSize
		frame.Position = originalPos
		minimizeBtn.Text = "─"
		for _, child in pairs(frame:GetChildren()) do
			child.Visible = true
		end
		title.Text = "MUST V5  |  CHUMA V1"
	end
end)

-- TEXTBOX
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.9, 0, 0, 60)
textBox.Position = UDim2.new(0.05, 0, 0.16, 0)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 70)
textBox.BackgroundTransparency = 0
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.PlaceholderText = "Type here..."
textBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
textBox.Text = ""
textBox.TextSize = 20
textBox.Font = Enum.Font.SourceSans
textBox.ClearTextOnFocus = false
textBox.BorderSizePixel = 3
textBox.BorderColor3 = Color3.fromRGB(100, 200, 255)
textBox.Parent = frame

-- BUTTONS
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(0.42, 0, 0, 55)
sendBtn.Position = UDim2.new(0.05, 0, 0.33, 0)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
sendBtn.BackgroundTransparency = 0
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Text = "SEND"
sendBtn.TextSize = 22
sendBtn.Font = Enum.Font.SourceSansBold
sendBtn.BorderSizePixel = 2
sendBtn.BorderColor3 = Color3.fromRGB(0, 255, 150)
sendBtn.Parent = frame

local clearBtn = Instance.new("TextButton")
clearBtn.Size = UDim2.new(0.42, 0, 0, 55)
clearBtn.Position = UDim2.new(0.53, 0, 0.33, 0)
clearBtn.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
clearBtn.BackgroundTransparency = 0
clearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
clearBtn.Text = "CLEAR ▼"
clearBtn.TextSize = 22
clearBtn.Font = Enum.Font.SourceSansBold
clearBtn.BorderSizePixel = 2
clearBtn.BorderColor3 = Color3.fromRGB(255, 100, 100)
clearBtn.Parent = frame

local fixTagzBtn = Instance.new("TextButton")
fixTagzBtn.Size = UDim2.new(0.28, 0, 0, 50)
fixTagzBtn.Position = UDim2.new(0.05, 0, 0.48, 0)
fixTagzBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
fixTagzBtn.BackgroundTransparency = 0
fixTagzBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
fixTagzBtn.Text = "FIX TAGZ"
fixTagzBtn.TextSize = 18
fixTagzBtn.Font = Enum.Font.SourceSansBold
fixTagzBtn.BorderSizePixel = 2
fixTagzBtn.BorderColor3 = Color3.fromRGB(150, 200, 255)
fixTagzBtn.Parent = frame

local supportBtn = Instance.new("TextButton")
supportBtn.Size = UDim2.new(0.28, 0, 0, 50)
supportBtn.Position = UDim2.new(0.36, 0, 0.48, 0)
supportBtn.BackgroundColor3 = Color3.fromRGB(150, 50, 200)
supportBtn.BackgroundTransparency = 0
supportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
supportBtn.Text = "SUPPORT"
supportBtn.TextSize = 18
supportBtn.Font = Enum.Font.SourceSansBold
supportBtn.BorderSizePixel = 2
supportBtn.BorderColor3 = Color3.fromRGB(200, 150, 255)
supportBtn.Parent = frame

local smartLinesBtn = Instance.new("TextButton")
smartLinesBtn.Size = UDim2.new(0.28, 0, 0, 50)
smartLinesBtn.Position = UDim2.new(0.67, 0, 0.48, 0)
smartLinesBtn.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
smartLinesBtn.BackgroundTransparency = 0
smartLinesBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
smartLinesBtn.Text = "SMART LINE"
smartLinesBtn.TextSize = 18
smartLinesBtn.Font = Enum.Font.SourceSansBold
smartLinesBtn.BorderSizePixel = 2
smartLinesBtn.BorderColor3 = Color3.fromRGB(255, 200, 100)
smartLinesBtn.Parent = frame

local vipBtn = Instance.new("TextButton")
vipBtn.Size = UDim2.new(0.9, 0, 0, 55)
vipBtn.Position = UDim2.new(0.05, 0, 0.62, 0)
vipBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
vipBtn.BackgroundTransparency = 0
vipBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
vipBtn.Text = "⭐ VIP MODE ⭐ (ON)"
vipBtn.TextSize = 24
vipBtn.Font = Enum.Font.SourceSansBold
vipBtn.BorderSizePixel = 3
vipBtn.BorderColor3 = Color3.fromRGB(255, 255, 0)
vipBtn.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.9, 0, 0, 40)
status.Position = UDim2.new(0.05, 0, 0.8, 0)
status.BackgroundColor3 = Color3.fromRGB(10, 30, 10)
status.BackgroundTransparency = 0
status.TextColor3 = Color3.fromRGB(0, 255, 100)
status.Text = "READY | Drag me anywhere"
status.TextSize = 18
status.Font = Enum.Font.SourceSans
status.BorderSizePixel = 2
status.BorderColor3 = Color3.fromRGB(0, 200, 100)
status.Parent = frame

-- ===== BYPASS ENGINE =====
local sets = {
	{["a"]="Ａ",["b"]="Ｂ",["c"]="Ｃ",["d"]="Ｄ",["e"]="Ｅ",["f"]="Ｆ",["g"]="Ｇ",["h"]="Ｈ",["i"]="Ｉ",["j"]="Ｊ",["k"]="Ｋ",["l"]="Ｌ",["m"]="Ｍ",["n"]="Ｎ",["o"]="Ｏ",["p"]="Ｐ",["q"]="Ｑ",["r"]="Ｒ",["s"]="Ｓ",["t"]="Ｔ",["u"]="Ｕ",["v"]="Ｖ",["w"]="Ｗ",["x"]="Ｘ",["y"]="Ｙ",["z"]="Ｚ"},
	{["a"]="𝗔",["b"]="𝗕",["c"]="𝗖",["d"]="𝗗",["e"]="𝗘",["f"]="𝗙",["g"]="𝗚",["h"]="𝗛",["i"]="𝗜",["j"]="𝗝",["k"]="𝗞",["l"]="𝗟",["m"]="𝗠",["n"]="𝗡",["o"]="𝗢",["p"]="𝗣",["q"]="𝗤",["r"]="𝗥",["s"]="𝗦",["t"]="𝗧",["u"]="𝗨",["v"]="𝗩",["w"]="𝗪",["x"]="𝗫",["y"]="𝗬",["z"]="𝗭"},
	{["a"]="𝘢",["b"]="𝘣",["c"]="𝘤",["d"]="𝘥",["e"]="𝘦",["f"]="𝘧",["g"]="𝘨",["h"]="𝘩",["i"]="𝘪",["j"]="𝘫",["k"]="𝘬",["l"]="𝘭",["m"]="𝘮",["n"]="𝘯",["o"]="𝘰",["p"]="𝘱",["q"]="𝘲",["r"]="𝘳",["s"]="𝘴",["t"]="𝘵",["u"]="𝘶",["v"]="𝘷",["w"]="𝘸",["x"]="𝘹",["y"]="𝘺",["z"]="𝘻"},
	{["a"]="𝒶",["b"]="𝒷",["c"]="𝒸",["d"]="𝒹",["e"]="ℯ",["f"]="𝒻",["g"]="ℊ",["h"]="𝒽",["i"]="𝒾",["j"]="𝒿",["k"]="𝓀",["l"]="𝓁",["m"]="𝓂",["n"]="𝓃",["o"]="ℴ",["p"]="𝓅",["q"]="𝓆",["r"]="𝓇",["s"]="𝓈",["t"]="𝓉",["u"]="𝓊",["v"]="𝓋",["w"]="𝓌",["x"]="𝓍",["y"]="𝓎",["z"]="𝓏"},
	{["a"]="α",["b"]="β",["c"]="χ",["d"]="δ",["e"]="ε",["f"]="φ",["g"]="γ",["h"]="η",["i"]="ι",["j"]="ϳ",["k"]="κ",["l"]="λ",["m"]="μ",["n"]="ν",["o"]="ο",["p"]="π",["q"]="θ",["r"]="ρ",["s"]="σ",["t"]="τ",["u"]="υ",["v"]="ϋ",["w"]="ω",["x"]="ξ",["y"]="ψ",["z"]="ζ"}
}

local function generateTag()
	local chars = "abcdefghijklmnopqrstuvwxyz"
	local tag = ""
	for i = 1, math.random(10, 12) do
		tag = tag .. chars:sub(math.random(1, 26), math.random(1, 26))
	end
	return tag
end

local function bypassMessage(msg)
	local tag = generateTag()
	local result = tag .. " "
	for i = 1, #msg do
		local char = msg:sub(i, i):lower()
		local set1 = sets[math.random(1, #sets)]
		local set2 = sets[math.random(1, #sets)]
		local rep = char
		if set1[char] then rep = set1[char] end
		if math.random(1, 3) == 1 and set2[char] then
			rep = rep .. set2[char]
		end
		if math.random(1, 4) == 1 then
			rep = rep .. string.char(0x200D)
		end
		result = result .. rep
	end
	return result
end

-- ===== SEND WITH LOADING ANIMATION =====
local loading = false
local dotCount = 0
local heartbeatConnection = nil

sendBtn.MouseButton1Click:Connect(function()
	local raw = textBox.Text
	if raw == "" then 
		status.Text = "⚠️ Type something first"
		return 
	end
	
	-- Start loading animation
	loading = true
	dotCount = 0
	status.Text = "⏳ Sending"
	
	if heartbeatConnection then heartbeatConnection:Disconnect() end
	heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
		if loading then
			dotCount = (dotCount % 3) + 1
			local dots = string.rep(".", dotCount)
			status.Text = "⏳ Sending" .. dots
		end
	end)
	
	-- Bypass & send
	local bypassed = bypassMessage(raw)
	local success = false
	local replicatedStorage = game:GetService("ReplicatedStorage")
	
	local chatEvent = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvent then
		local sayRequest = chatEvent:FindFirstChild("SayMessageRequest")
		if sayRequest then
			pcall(function()
				sayRequest:FireServer(bypassed, "All")
				success = true
			end)
		end
	end
	
	if not success then
		local chatRemote = replicatedStorage:FindFirstChild("ChatRemote")
		if chatRemote then
			pcall(function()
				chatRemote:FireServer(bypassed, "All")
				success = true
			end)
		end
	end
	
	if not success then
		for _, child in pairs(replicatedStorage:GetChildren()) do
			if child:IsA("RemoteEvent") and string.find(child.Name, "Chat") then
				pcall(function()
					child:FireServer(bypassed, "All")
					success = true
				end)
				break
			end
		end
	end
	
	-- Stop loading
	loading = false
	if heartbeatConnection then 
		heartbeatConnection:Disconnect() 
		heartbeatConnection = nil
	end
	
	if success then
		status.Text = "✅ Sent! Tag: " .. bypassed:match("^%S+")
	else
		status.Text = "❌ No chat remote found"
	end
	
	textBox.Text = ""
end)

clearBtn.MouseButton1Click:Connect(function()
	textBox.Text = ""
	status.Text = "🧹 Cleared"
end)

fixTagzBtn.MouseButton1Click:Connect(function()
	status.Text = "🔧 Tagz active (10-12 random letters)"
end)

supportBtn.MouseButton1Click:Connect(function()
	status.Text = "💬 Bypass: Unicode mixing + random tag"
end)

smartLinesBtn.MouseButton1Click:Connect(function()
	status.Text = "📏 Each char uses 2 different font sets"
end)

local vipOn = true
vipBtn.MouseButton1Click:Connect(function()
	vipOn = not vipOn
	if vipOn then
		vipBtn.Text = "⭐ VIP MODE ⭐ (ON)"
		vipBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
		status.Text = "👑 VIP ON"
	else
		vipBtn.Text = "⭐ VIP MODE ⭐ (OFF)"
		vipBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		status.Text = "👑 VIP OFF"
	end
end)