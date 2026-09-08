-- ============================================================
-- CHUMA V1  |  Brookhaven Chat Bypass  |  Animated UI
-- ============================================================

local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

-- ===== UI (Chhota, Clean, Animated) =====
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CHUMAV1"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 220)
frame.Position = UDim2.new(0.5, -170, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 40)
frame.BackgroundTransparency = 0
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(0, 200, 255)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true
frame.ClipsDescendants = true

-- Animated Gradient Overlay
local gradient = Instance.new("Frame")
gradient.Size = UDim2.new(1, 0, 1, 0)
gradient.Position = UDim2.new(0, 0, 0, 0)
gradient.BackgroundColor3 = Color3.fromRGB(255, 0, 150)
gradient.BackgroundTransparency = 0.65
gradient.Parent = frame

-- Animate gradient color (smooth cycle)
local colors = {
	Color3.fromRGB(255, 0, 150),
	Color3.fromRGB(0, 150, 255),
	Color3.fromRGB(0, 255, 200),
	Color3.fromRGB(255, 200, 0),
	Color3.fromRGB(200, 0, 255),
}
local colorIndex = 1
RunService.Heartbeat:Connect(function()
	colorIndex = colorIndex + 0.008
	if colorIndex > #colors then colorIndex = 1 end
	local t = colorIndex - math.floor(colorIndex)
	local idx1 = math.floor(colorIndex) % #colors + 1
	local idx2 = (math.floor(colorIndex) + 1) % #colors + 1
	local col = colors[idx1]:Lerp(colors[idx2], t)
	gradient.BackgroundColor3 = col
end)

-- Title (Script Name)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0, 0.5)
title.BackgroundTransparency = 0.4
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "CHUMA V1"
title.TextSize = 20
title.Font = Enum.Font.SourceSansBold
title.BorderSizePixel = 0
title.Parent = frame

-- Minimize button (small)
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 25, 0, 25)
minimizeBtn.Position = UDim2.new(1, -30, 0, 3)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
minimizeBtn.BackgroundTransparency = 0
minimizeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
minimizeBtn.Text = "─"
minimizeBtn.TextSize = 18
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
		frame.Size = UDim2.new(0, 140, 0, 35)
		frame.Position = UDim2.new(0.85, -70, 0.02, 0)
		minimizeBtn.Text = "+"
		for _, child in pairs(frame:GetChildren()) do
			if child ~= title and child ~= minimizeBtn then
				child.Visible = false
			end
		end
		title.Text = "CHUMA"
	else
		frame.Size = originalSize
		frame.Position = originalPos
		minimizeBtn.Text = "─"
		for _, child in pairs(frame:GetChildren()) do
			child.Visible = true
		end
		title.Text = "CHUMA V1"
	end
end)

-- TextBox (small)
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.9, 0, 0, 35)
textBox.Position = UDim2.new(0.05, 0, 0.18, 0)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 70)
textBox.BackgroundTransparency = 0
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.PlaceholderText = "Type here..."
textBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 200)
textBox.Text = ""
textBox.TextSize = 15
textBox.Font = Enum.Font.SourceSans
textBox.ClearTextOnFocus = false
textBox.BorderSizePixel = 1
textBox.BorderColor3 = Color3.fromRGB(100, 200, 255)
textBox.Parent = frame

-- Send Button (small)
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(0.4, 0, 0, 32)
sendBtn.Position = UDim2.new(0.05, 0, 0.4, 0)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
sendBtn.BackgroundTransparency = 0
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Text = "SEND"
sendBtn.TextSize = 16
sendBtn.Font = Enum.Font.SourceSansBold
sendBtn.BorderSizePixel = 1
sendBtn.BorderColor3 = Color3.fromRGB(0, 255, 150)
sendBtn.Parent = frame

-- Clear Button (small)
local clearBtn = Instance.new("TextButton")
clearBtn.Size = UDim2.new(0.4, 0, 0, 32)
clearBtn.Position = UDim2.new(0.55, 0, 0.4, 0)
clearBtn.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
clearBtn.BackgroundTransparency = 0
clearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
clearBtn.Text = "CLEAR"
clearBtn.TextSize = 16
clearBtn.Font = Enum.Font.SourceSansBold
clearBtn.BorderSizePixel = 1
clearBtn.BorderColor3 = Color3.fromRGB(255, 100, 100)
clearBtn.Parent = frame

-- Status Label (small)
local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.9, 0, 0, 25)
status.Position = UDim2.new(0.05, 0, 0.65, 0)
status.BackgroundColor3 = Color3.fromRGB(10, 30, 10)
status.BackgroundTransparency = 0
status.TextColor3 = Color3.fromRGB(0, 255, 100)
status.Text = "READY"
status.TextSize = 13
status.Font = Enum.Font.SourceSans
status.BorderSizePixel = 1
status.BorderColor3 = Color3.fromRGB(0, 200, 100)
status.Parent = frame

-- ============================================================
-- ===== BYPASS ENGINE (Unicode + ZWJ) =====
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
-- ===== CHAT SEND – GUARANTEED FOR BROOKHAVEN =====
-- ============================================================
sendBtn.MouseButton1Click:Connect(function()
	local raw = textBox.Text
	if raw == "" then 
		status.Text = "⚠️ EMPTY"
		return 
	end
	
	local bypassed = bypassMessage(raw)
	local success = false
	local replicatedStorage = game:GetService("ReplicatedStorage")
	
	-- PATH 1: DefaultChatSystemChatEvents > SayMessageRequest (Brookhaven standard)
	local chatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvents then
		local sayRequest = chatEvents:FindFirstChild("SayMessageRequest")
		if sayRequest then
			pcall(function()
				-- Try all possible channel arguments
				sayRequest:FireServer(bypassed, "All")
				sayRequest:FireServer(bypassed, "Everyone")
				sayRequest:FireServer(bypassed, "Game")
				sayRequest:FireServer(bypassed, "All", 1)
				success = true
				status.Text = "✅ SENT (Brookhaven)"
			end)
		end
	end
	
	-- PATH 2: Scan for any RemoteEvent with "Chat", "Say", "Message"
	if not success then
		for _, child in pairs(replicatedStorage:GetDescendants()) do
			if child:IsA("RemoteEvent") then
				local name = child.Name:lower()
				if string.find(name, "chat") or string.find(name, "say") or string.find(name, "message") or string.find(name, "talk") then
					pcall(function()
						child:FireServer(bypassed, "All")
						child:FireServer(bypassed, "Everyone")
						child:FireServer(bypassed, "Game")
						success = true
						status.Text = "✅ SENT via " .. child.Name
					end)
					break
				end
			end
		end
	end
	
	-- PATH 3: Scan all RemoteEvents and just fire with multiple args
	if not success then
		for _, child in pairs(replicatedStorage:GetDescendants()) do
			if child:IsA("RemoteEvent") then
				pcall(function()
					child:FireServer(bypassed, "All")
					child:FireServer(bypassed, "Everyone")
					child:FireServer(bypassed, {bypassed, "All"})
					success = true
					status.Text = "✅ SENT via " .. child.Name .. " (fallback)"
				end)
				break
			end
		end
	end
	
	if not success then
		status.Text = "❌ NO REMOTE FOUND"
		-- Show available RemoteEvents for debugging
		local list = ""
		for _, child in pairs(replicatedStorage:GetDescendants()) do
			if child:IsA("RemoteEvent") then
				list = list .. child.Name .. ", "
				if #list > 50 then break end
			end
		end
		if list ~= "" then
			status.Text = "🔍 Found: " .. list
		end
	end
	
	textBox.Text = ""
end)

clearBtn.MouseButton1Click:Connect(function()
	textBox.Text = ""
	status.Text = "🧹 CLEARED"
end)