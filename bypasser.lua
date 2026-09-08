-- Anurag Bypasser - 7‑Font Hybrid Bypass (Sketsa + Berkah Raya + XXII Arabian + Angelic War + Russian + Comic Runes + First Order)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 440, 0, 170)
frame.Position = UDim2.new(0.5, -220, 0.5, -85)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 400, 0, 50)
textBox.Position = UDim2.new(0.045, 0, 0.1, 0)
textBox.BackgroundColor3 = Color3.fromRGB(50, 45, 60)
textBox.TextColor3 = Color3.fromRGB(245, 230, 200)
textBox.PlaceholderText = "enter ur chat here (7 fonts mixed)"
textBox.PlaceholderColor3 = Color3.fromRGB(150, 140, 130)
textBox.Text = ""
textBox.Font = Enum.Font.SourceSans
textBox.Parent = frame

local sendButton = Instance.new("TextButton")
sendButton.Size = UDim2.new(0, 400, 0, 45)
sendButton.Position = UDim2.new(0.045, 0, 0.6, 0)
sendButton.BackgroundColor3 = Color3.fromRGB(180, 80, 200)
sendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sendButton.Text = "SEND (7‑layer bypass)"
sendButton.Font = Enum.Font.SourceSansBold
sendButton.Parent = frame

-- ===== FONT MAPPING TABLES (all 7 styles) =====
local fontLayers = {
	-- 1. Sketsa Ramadhan (hand‑drawn, Arabic‑inspired)
	sketsa = {
		["a"]="α", ["b"]="в", ["c"]="¢", ["d"]="ԁ", ["e"]="є",
		["f"]="ƒ", ["g"]="ɡ", ["h"]="һ", ["i"]="і", ["j"]="ј",
		["k"]="κ", ["l"]="ℓ", ["m"]="м", ["n"]="и", ["o"]="σ",
		["p"]="р", ["q"]="ԛ", ["r"]="я", ["s"]="ѕ", ["t"]="ṭ",
		["u"]="υ", ["v"]="ν", ["w"]="ω", ["x"]="χ", ["y"]="у", ["z"]="ʐ"
	},
	-- 2. Berkah Raya (festive, curly)
	berkah = {
		["a"]="α", ["b"]="ҍ", ["c"]="ɕ", ["d"]="ժ", ["e"]="ҽ",
		["f"]="ƒ", ["g"]="ց", ["h"]="հ", ["i"]="ì", ["j"]="ʝ",
		["k"]="ҟ", ["l"]="Ӏ", ["m"]="ʍ", ["n"]="ղ", ["o"]="օ",
		["p"]="ք", ["q"]="զ", ["r"]="ɾ", ["s"]="ʂ", ["t"]="է",
		["u"]="մ", ["v"]="ѵ", ["w"]="ա", ["x"]="×", ["y"]="վ", ["z"]="Հ"
	},
	-- 3. XXII Arabian Onenightstand (Arabic‑style with diacritics)
	arabian = {
		["a"]="آ", ["b"]="ب", ["c"]="ج", ["d"]="د", ["e"]="ە",
		["f"]="ف", ["g"]="گ", ["h"]="ه", ["i"]="ی", ["j"]="ج",
		["k"]="ک", ["l"]="ل", ["m"]="م", ["n"]="ن", ["o"]="ۆ",
		["p"]="پ", ["q"]="ق", ["r"]="ر", ["s"]="س", ["t"]="ت",
		["u"]="ۇ", ["v"]="ڤ", ["w"]="و", ["x"]="خ", ["y"]="ي", ["z"]="ز"
	},
	-- 4. Angelic War (gothic, sharp)
	angelic = {
		["a"]="ᴀ", ["b"]="ʙ", ["c"]="ᴄ", ["d"]="ᴅ", ["e"]="ᴇ",
		["f"]="ꜰ", ["g"]="ɢ", ["h"]="ʜ", ["i"]="ɪ", ["j"]="ᴊ",
		["k"]="ᴋ", ["l"]="ʟ", ["m"]="ᴍ", ["n"]="ɴ", ["o"]="ᴏ",
		["p"]="ᴘ", ["q"]="ǫ", ["r"]="ʀ", ["s"]="ꜱ", ["t"]="ᴛ",
		["u"]="ᴜ", ["v"]="ᴠ", ["w"]="ᴡ", ["x"]="x", ["y"]="ʏ", ["z"]="ᴢ"
	},
	-- 5. Russian letters (Cyrillic, but look like English)
	russian = {
		["a"]="А", ["b"]="В", ["c"]="С", ["d"]="Д", ["e"]="Е",
		["f"]="Ф", ["g"]="Г", ["h"]="Н", ["i"]="І", ["j"]="Ј",
		["k"]="К", ["l"]="Л", ["m"]="М", ["n"]="И", ["o"]="О",
		["p"]="Р", ["q"]="Ԛ", ["r"]="Я", ["s"]="Ѕ", ["t"]="Т",
		["u"]="У", ["v"]="Ѵ", ["w"]="Ш", ["x"]="Х", ["y"]="Ү", ["z"]="З"
	},
	-- 6. Comic Runes (runes, angular)
	comicrunes = {
		["a"]="ᚨ", ["b"]="ᛒ", ["c"]="ᚲ", ["d"]="ᛞ", ["e"]="ᛖ",
		["f"]="ᚠ", ["g"]="ᚷ", ["h"]="ᚺ", ["i"]="ᛁ", ["j"]="ᛃ",
		["k"]="ᚴ", ["l"]="ᛚ", ["m"]="ᛗ", ["n"]="ᚾ", ["o"]="ᛟ",
		["p"]="ᛔ", ["q"]="ᚲᚹ", ["r"]="ᚱ", ["s"]="ᛋ", ["t"]="ᛏ",
		["u"]="ᚢ", ["v"]="ᚡ", ["w"]="ᚹ", ["x"]="ᛉ", ["y"]="ᚤ", ["z"]="ᛉ"
	},
	-- 7. First Order (Star Wars‑style, blocky)
	firstorder = {
		["a"]="⍺", ["b"]="␢", ["c"]="⌽", ["d"]="◬", ["e"]="Ɛ",
		["f"]="⎎", ["g"]="₲", ["h"]="⏤", ["i"]="⌿", ["j"]="⋕",
		["k"]="⋉", ["l"]="⌰", ["m"]="⋔", ["n"]="⏚", ["o"]="⍜",
		["p"]="⏢", ["q"]="⌵", ["r"]="⍀", ["s"]="⌇", ["t"]="⍑",
		["u"]="⍓", ["v"]="⍊", ["w"]="⍹", ["x"]="⌧", ["y"]="⍌", ["z"]="⌿"
	}
}

local layerNames = {"sketsa","berkah","arabian","angelic","russian","comicrunes","firstorder"}

local function multiFontBypass(msg)
	local result = ""
	for i = 1, #msg do
		local char = msg:sub(i, i)
		local lower = char:lower()
		-- pick 2 random font layers per character
		local layer1 = layerNames[math.random(1, #layerNames)]
		local layer2 = layerNames[math.random(1, #layerNames)]
		local replacement = char
		-- try first layer
		if fontLayers[layer1][lower] then
			replacement = fontLayers[layer1][lower]
		end
		-- overlay second layer with 50% chance (mix within same char)
		if math.random(1, 2) == 1 and fontLayers[layer2][lower] then
			-- combine both: first + second (creates double‑stroke effect)
			replacement = replacement .. fontLayers[layer2][lower]
		end
		-- add random zero‑width joiner, diacritic, or invisible separator
		local noise = math.random(1, 5)
		if noise == 1 then
			replacement = replacement .. string.char(0x200D) -- ZWJ
		elseif noise == 2 then
			replacement = replacement .. string.char(0x064E + math.random(0, 6)) -- Arabic diacritic
		elseif noise == 3 then
			replacement = replacement .. string.char(0x200C) -- ZWNJ
		elseif noise == 4 then
			replacement = string.char(0xFEFF) .. replacement -- BOM (invisible)
		end
		result = result .. replacement
	end
	return result
end

sendButton.MouseButton1Click:Connect(function()
	local raw = textBox.Text
	if raw == "" then return end
	local bypassed = multiFontBypass(raw)
	-- Fire chat remote (Brookhaven)
	local replicatedStorage = game:GetService("ReplicatedStorage")
	local chatEvent = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvent then
		local sayRequest = chatEvent:FindFirstChild("SayMessageRequest")
		if sayRequest then
			sayRequest:FireServer(bypassed, "All")
		end
	end
	textBox.Text = ""
end)