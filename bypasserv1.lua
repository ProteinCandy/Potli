-- MUST V5 | CHUMA V1 | SMALL UI + WORKING CHAT BYPASS
local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MUSTV5"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- ===== CHHOTA FRAME (Mobile-friendly) =====
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 380, 0, 280)
frame.Position = UDim2.new(0.5, -190, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 40)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.fromRGB(0, 255, 200)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

-- TITLE (chhota)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(40, 0, 70)
title.BackgroundTransparency = 0
title.TextColor3 = Color3.fromRGB(255, 100, 255)
title.Text = "MUST V5 | CHUMA V1"
title.TextSize = 22
title.Font = Enum.Font.SourceSansBold
title.BorderSizePixel = 1
title.BorderColor3 = Color3.fromRGB(255, 0, 200)
title.Parent = frame

-- MINIMIZE (chhota)
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
minimizeBtn.Position = UDim2.new(1, -38, 0, 5)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
minimizeBtn.BackgroundTransparency = 0
minimizeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
minimizeBtn.Text = "─"
minimizeBtn.TextSize = 20
minimizeBtn.Font = Enum.Font.SourceSansBold
minimizeBtn.BorderSizePixel = 1
minimizeBtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Parent = frame

local isMinimized = false
local originalSize = frame.Size
local originalPos = frame.Position

minimizeBtn.MouseButton1Click:Connect(function()
	isMinimized = not isMinimized
	if isMinimized then
		frame.Size = UDim2.new(0, 160, 0, 45)
		frame.Position = UDim2.new(0.85, -80, 0.03, 0)
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
		title.Text = "MUST V5 | CHUMA V1"
	end
end)

-- ===== TEXTBOX (chhota) =====
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.9, 0, 0, 45)
textBox.Position = UDim2.new(0.05, 0, 0.16, 0)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 70)
textBox.BackgroundTransparency = 0
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.PlaceholderText = "Type here..."
textBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 200)
textBox.Text = ""
textBox.TextSize = 16
textBox.Font = Enum.Font.SourceSans
textBox.ClearTextOnFocus = false
textBox.BorderSizePixel = 2
textBox.BorderColor3 = Color3.fromRGB(100, 200, 255)
textBox.Parent = frame

-- ===== SEND BUTTON (chhota) =====
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(0.42, 0, 0, 40)
sendBtn.Position = UDim2.new(0.05, 0, 0.35, 0)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
sendBtn.BackgroundTransparency = 0
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Text = "SEND"
sendBtn.TextSize = 18
sendBtn.Font = Enum.Font.SourceSansBold
sendBtn.BorderSizePixel = 2
sendBtn.BorderColor3 = Color3.fromRGB(0, 255, 150)
sendBtn.Parent = frame

-- ===== CLEAR BUTTON =====
local clearBtn = Instance.new("TextButton")
clearBtn.Size = UDim2.new(0.42, 0, 0, 40)
clearBtn.Position = UDim2.new(0.53, 0, 0.35, 0)
clearBtn.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
clearBtn.BackgroundTransparency = 0
clearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
clearBtn.Text = "CLEAR"
clearBtn.TextSize = 18
clearBtn.Font = Enum.Font.SourceSansBold
clearBtn.BorderSizePixel = 2
clearBtn.BorderColor3 = Color3.fromRGB(255, 100, 100)
clearBtn.Parent = frame

-- ===== FIX TAGZ =====
local fixTagzBtn = Instance.new("TextButton")
fixTagzBtn.Size = UDim2.new(0.28, 0, 0, 35)
fixTagzBtn.Position = UDim2.new(0.05, 0, 0.52, 0)
fixTagzBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
fixTagzBtn.BackgroundTransparency = 0
fixTagzBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
fixTagzBtn.Text = "TAGZ"
fixTagzBtn.TextSize = 14
fixTagzBtn.Font = Enum.Font.SourceSansBold
fixTagzBtn.BorderSizePixel = 1
fixTagzBtn.BorderColor3 = Color3.fromRGB(150, 200, 255)
fixTagzBtn.Parent = frame

-- ===== SUPPORT =====
local supportBtn = Instance.new("TextButton")
supportBtn.Size = UDim2.new(0.28, 0, 0, 35)
supportBtn.Position = UDim2.new(0.36, 0, 0.52, 0)
supportBtn.BackgroundColor3 = Color3.fromRGB(150, 50, 200)
supportBtn.BackgroundTransparency = 0
supportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
supportBtn.Text = "SUPPORT"
supportBtn.TextSize = 14
supportBtn.Font = Enum.Font.SourceSansBold
supportBtn.BorderSizePixel = 1
supportBtn.BorderColor3 = Color3.fromRGB(200, 150, 255)
supportBtn.Parent = frame

-- ===== SMART LINES =====
local smartLinesBtn = Instance.new("TextButton")
smartLinesBtn.Size = UDim2.new(0.28, 0, 0, 35)
smartLinesBtn.Position = UDim2.new(0.67, 0, 0.52, 0)
smartLinesBtn.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
smartLinesBtn.BackgroundTransparency = 0
smartLinesBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
smartLinesBtn.Text = "SMART"
smartLinesBtn.TextSize = 14
smartLinesBtn.Font = Enum.Font.SourceSansBold
smartLinesBtn.BorderSizePixel = 1
smartLinesBtn.BorderColor3 = Color3.fromRGB(255, 200, 100)
smartLinesBtn.Parent = frame

-- ===== STATUS (chhota) =====
local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.9, 0, 0, 30)
status.Position = UDim2.new(0.05, 0, 0.7, 0)
status.BackgroundColor3 = Color3.fromRGB(10, 30, 10)
status.BackgroundTransparency = 0
status.TextColor3 = Color3.fromRGB(0, 255, 100)
status.Text = "READY"
status.TextSize = 14
status.Font = Enum.Font.SourceSans
status.BorderSizePixel = 1
status.BorderColor3 = Color3.fromRGB(0, 200, 100)
status.Parent = frame

-- ============================================================
-- ===== BYPASS ENGINE (5 Unicode Sets) =====
-- ============================================================
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

-- ============================================================
-- ===== SEND FUNCTION - 4 REMOTE PATHS =====
-- ============================================================
sendBtn.MouseButton1Click:Connect(function()
	local raw = textBox.Text
	if raw == "" then 
		status.Text = "⚠️ EMPTY"
		return 
	end
	
	status.Text = "⏳ SENDING..."
	local bypassed = bypassMessage(raw)
	local success = false
	local replicatedStorage = game:GetService("ReplicatedStorage")
	
	-- PATH 1: DefaultChatSystemChatEvents > SayMessageRequest
	local chatEvent = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvent then
		local sayRequest = chatEvent:FindFirstChild("SayMessageRequest")
		if sayRequest then
			pcall(function()
				sayRequest:FireServer(bypassed, "All")
				success = true
				status.Text = "✅ SENT (Path 1)"
			end)
		end
	end
	
	-- PATH 2: ChatRemote
	if not success then
		local chatRemote = replicatedStorage:FindFirstChild("ChatRemote")
		if chatRemote then
			pcall(function()
				chatRemote:FireServer(bypassed, "All")
				success = true
				status.Text = "✅ SENT (Path 2)"
			end)
		end
	end
	
	-- PATH 3: Any RemoteEvent with "Chat" in name
	if not success then
		for _, child in pairs(replicatedStorage:GetChildren()) do
			if child:IsA("RemoteEvent") and string.find(child.Name, "Chat") then
				pcall(function()
					child:FireServer(bypassed, "All")
					success = true
					status.Text = "✅ SENT (Path 3: " .. child.Name .. ")"
				end)
				break
			end
		end
	end
	
	-- PATH 4: Direct RemoteFunction (rare)
	if not success then
		for _, child in pairs(replicatedStorage:GetChildren()) do
			if child:IsA("RemoteFunction") and string.find(child.Name, "Chat") then
				pcall(function()
					child:InvokeServer(bypassed, "All")
					success = true
					status.Text = "✅ SENT (Path 4: " .. child.Name .. ")"
				end)
				break
			end
		end
	end
	
	if not success then
		status.Text = "❌ NO CHAT REMOTE FOUND"
		-- Debug: show what's in ReplicatedStorage
		local names = ""
		for _, child in pairs(replicatedStorage:GetChildren()) do
			if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
				names = names .. child.Name .. ", "
			end
		end
		if names ~= "" then
			status.Text = "❌ Found: " .. names
		end
	end
	
	textBox.Text = ""
end)

-- ===== OTHER BUTTONS =====
clearBtn.MouseButton1Click:Connect(function()
	textBox.Text = ""
	status.Text = "🧹 CLEARED"
end)

fixTagzBtn.MouseButton1Click:Connect(function()
	status.Text = "🔧 TAGZ ACTIVE (10-12 chars)"
end)

supportBtn.MouseButton1Click:Connect(function()
	status.Text = "💬 5 UNICODE SETS + ZWJ"
end)

smartLinesBtn.MouseButton1Click:Connect(function()
	status.Text = "📏 EACH CHAR = 2 RANDOM FONTS"
end)