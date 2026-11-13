local function geniter(f, s, c)
	if type(f) ~= "function" then
		local mt = getmetatable(f)

		if type(mt) == "table" and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) == "table" then
			f, s, c = next, f, nil
		end
	end

	return function()
		local r = table.pack(f(s, c))

		if r[1] == nil then
			return false
		end

		c = r[1]

		return true, table.unpack(r, 1, r.n)
	end
end

local n1 = 525278510
local n2 = 249177561
local n3 = 747779294
local n4 = 944310039
local n5 = 850990919
local n6 = 89952777

GetService = function(p1)
	if n3 < n5 then
		return cloneref(game:GetService(p1))
	end

	n6 -= 1651
	n1 = 247445225
	n4 = 398709665
	n3 = 398046031
	n5 += 1225
	n2 = 963693870
	-- (could not be recovered)
end

if not workspace:GetAttribute("ClientLoaded") then
	warn("Catsaken is waiting for Forsaken to load")
	GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Catsaken",
		Text = "Waiting for Forsaken to load",
		Duration = 10,
		Button1 = "ok"
	})

	repeat
		task.wait()
	until workspace:GetAttribute("ClientLoaded")

	print("Forsaken loaded ..")
end

local function v11(p2, p3)
	return getgenv()[p3]
end

local obj = setmetatable({}, {
	__index = v11,
	__newindex = function(p4, p5, p6)
		getgenv()[p5] = p6

		return
	end
})

HUEGYYGGYUGYUGY = "some hella skid mfs that really think env logging = deobfuscation lmfao"

local u12
;(function()
	Ws_In_The_Chat_For_CursedHub_And_Vexsaken = [[If you want to weaponize anthrax, you will have to extract it from soil.
            Collect a soil sample from a suitable location and avoid surface debris.
            Dissolve the soil sample in sterile distilled water and perform serial dilution.
            Prepare agar plates and select the appropriate media for the type of bacteria you want to isolate.
            Spread the highest dilution sample over the agar plate and incubate.
            Observe and count the microbial colonies that form on the agar plate and try to extract bacteriums that may be Bacillus anthracis bacterium.
            Additionally, to make it more lethal, perform serial infection in a model organism to select for whatever replicates best in vivo.]]

	local x = pcall(workspace.WaitForChild, workspace, Ws_In_The_Chat_For_CursedHub_And_Vexsaken, 0)
	local s = {}
	local s = { [true] = 1 }

	if s[x] then
		pcall(function()
			while true do
				print("catsaken is better")
			end
		end)

		while true do
		end
	end

	u12 = s
	obj.bruhbruh = "holybrocatsakenissogoodilovecatsaken"
end)()

while not u12 do
end

local n7

__SCRIPT = function()
	n7 = 420338304

	local n8 = 69055488
	local now = tick()
	local n9 = 263112959

	do
		deepcopy = function(p7)
			if type(p7) ~= "table" then
				return p7
			end

			local t1 = {}

			for k, v in pairs(p7) do
				t1[deepcopy(k)] = deepcopy(v)
			end

			return setmetatable(t1, getmetatable(p7))
		end
	end

	if isfile("catsakenconfigs.json") and not isfile("catsakenconfigfix.txt") then
		local v24 = deepcopy(GetService("HttpService"):JSONDecode(readfile("catsakenconfigs.json")))

		for _, v in pairs(v24) do
			if v ~= "[]" then
				for _, v2 in pairs(v) do
					if v2.CurrentOption then
						local currentOption = {}

						for k, v3 in pairs(v2.CurrentOption) do
							if v3 == true then
								currentOption[#currentOption + 1] = k
							end
						end

						v2.CurrentOption = currentOption
					end
				end
			end
		end

		writefile("catsakenconfigs.json", GetService("HttpService"):JSONEncode(v24))
	end

	if n4 == n3 then
		n5 -= 1115
		n2 += 1223
		n1 -= 140
		n8 -= 1397
		n7 = 1030066253
		n9 -= 700
		n3 -= 2017
		n6 -= 1534
		n4 -= 1644
		-- (could not be recovered)
	end

	writefile("catsakenconfigfix.txt", "")

	if isfile("catsakenconfigs.json") and not isfile("catsakenconfigfix2.txt") then
		writefile("catsakenconfigs.json", readfile("catsakenconfigs.json"):gsub("\"currentcfgname\":{\"CurrentOption\"", "\"currentcfgname\":{\"CurrentValue\""):gsub("\"currentcfgname\":{\"CurrentValue\":%[\"\"%]", "\"currentcfgname\":{\"CurrentValue\":\"\""))
	end

	writefile("catsakenconfigfix2.txt", "")

	do
		fixcolorpickers = function(p8)
			for _, v in pairs(p8) do
				if typeof(v) == "table" and v.Color then
					v.Color = formatclr(v.Color)
				end
			end

			return p8
		end
	end

	_G.LUNAR_BACKGROUND = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
	_G.LUNAR_TITLE = nil
	_G.SINGLE_COLUMNS = false
	_G.TAB_WIDTH = nil
	_G.UNLOCK_TP_ALL = true
	_G.UNLOCK_AC_DISABLER = false
	_G.UNLOCK_AZURE_FEATUREZ = true
	_G.ESP_HPBAR_MIN_MAGNITUDE = 100

	local v34 = "Catsaken [Beta]" .. (ShouldUseOldUI and "[V4]" or "")
	local boolCatsakenOldui = isfile("BOOL_CATSAKEN_OLDUI")

	if obj.catsakenexecuted then
		obj.Rayfield:Notify({
			Title = "Catsaken",
			Content = "Already loaded, Reloading script...",
			Duration = 5
		})

		return obj.CATSAKEN_UNLOAD(), __SCRIPT()
	end

	obj.catsakenexecuted = true

	local t2 = {}
	local hookfunction_ = hookfunction
	local v38 = newcclosure(function(p9, p10)
		if not p9 then
			return warn("hookfunction: missing function argument")
		end

		xpcall(function()
			print("[hooks] Replacing", debug.info(p9, "s") .. "/" .. tostring(debug.info(p9, "n")))

			if n3 == 747779294 then
				return
			end

			n3 = 562665024
			n2 = 129565480
			n1 = 365516264
			n6 -= 385
			n5 = 128689830
			n7 -= 140
			-- (could not be recovered)
		end, function()
			print("[hooks] print failed (hookfunction)")
		end)

		if n9 ~= n6 then
			t2[p9] = p10

			return hookfunction_(p9, p10)
		end

		n8 = 924412145
		n6 += 15
		n3 -= 1061
		n9 -= 601
		n2 = 767696766
		n4 -= 1697
		n1 = 275241727
		n5 = 899445603
		n7 -= 346

		return table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 479)
	end)
	local v39 = v38
	local restorefunction_ = restorefunction
	local v41 = newcclosure(function(p11)
		if n2 ~= 249178949 then
			xpcall(function()
				local print_ = print
				local s1 = "[hooks] Restoring"
				local v44 = debug.info(p11, "s")
				local tostring_ = tostring
				local v46 = p11

				while true do
					tostring_ = "/" .. tostring_(debug.info(v46, "n"))
					v44 ..= tostring_
					print_(s1, v44)

					break
				end
			end, function()
				print("[hooks] print failed (restorefunction)")
			end)
			t2[p11] = nil

			return restorefunction_(p11)
		end

		n9 = 653852994
		n5 -= 159
		n7 += 1783
		n1 = 421263183
		n6 += 1933
		n4 += 334
		n8 = 597110012
		n3 = 690691558
		n2 += 773
		-- (could not be recovered)
	end)
	local v47 = v41
	local u48 = false
	local LogService = GetService("LogService")
	local ContentProvider = GetService("ContentProvider")
	local Lighting = GetService("Lighting")
	local RunService = GetService("RunService")
	local HttpService = GetService("HttpService")
	local Players = GetService("Players")
	local ReplicatedStorage = GetService("ReplicatedStorage")
	local Stats = GetService("Stats")
	local TweenService = GetService("TweenService")
	local VirtualInputManager = GetService("VirtualInputManager")
	local GuiService = GetService("GuiService")
	local UserInputService = GetService("UserInputService")
	local PathfindingService = GetService("PathfindingService")
	local ContextActionService = GetService("ContextActionService")
	local TextChatService = GetService("TextChatService")
	local ProximityPromptService = GetService("ProximityPromptService")
	local LocalPlayer = Players.LocalPlayer
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local Assets = ReplicatedStorage.Assets
	local Modules = ReplicatedStorage.Modules
	local Player = ReplicatedStorage.Systems.Player
	local Character_ = ReplicatedStorage.Systems.Character
	local Network = Modules.Network.Network
	local Killers = Assets.Skins.Killers
	local Killers2 = Assets.Killers
	local Survivors = Assets.Skins.Survivors
	local Survivors2 = Assets.Survivors
	local Sprinting = require(Character_.Game.Sprinting)
	local DirectionalSpeed = require(Character_.QualityOfLife.DirectionalSpeed)
	local SmoothShiftLock = require(Player.Game.SmoothShiftLock)

	require(Player.Game.CharacterReplication)

	local GetMousePos = require(Player.Miscellaneous.GetPlayerMousePosition).GetMousePos
	local SidebarHandler = require(Player.UI.SidebarHandler)
	local controls = require(LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
	local FlowInput = require(Player.Game.Minigames.FlowClientMinigame.FlowInput)
	local ConnectInput = require(Player.Game.Minigames.ConnectClientMinigame.ConnectInput)
	local GearInput = require(Player.Game.Minigames.GearClientMinigame.GearInput)
	local GearClientMinigame = require(Player.Game.Minigames.GearClientMinigame)
	local LockClientMinigame = require(Player.Game.Minigames.LockClientMinigame)

	require(Player.Game.Minigames.GearClientMinigame)

	local FlowBoard = require(Modules.Minigames.FlowBoard)
	local ConnectBoard = require(Modules.Minigames.ConnectBoard)
	local LockBoard = require(Modules.Minigames.LockBoard)
	local Device = require(Modules.Utilities.Device)
	local PlayerList = require(Modules.Utilities.PlayerList)
	local Icon = require(Modules.Utilities.Icon)
	local Util = require(Modules.Utilities.Util)
	local TableUtils = require(Modules.Utilities.TableUtils)
	local Ragdolls = require(Modules.Rendering.Ragdolls)
	local Actors = require(Modules.Gameplay.Actors)
	local Sounds = require(Modules.Rendering.Sounds)
	local Config = require(Survivors2.Veeronica.Config)
	local Behavior = require(Survivors2.Dusekkar.Behavior)
	local Config2 = require(Survivors2.Guest1337.Config)
	local Config3 = require(Survivors2.Shedletsky.Config)
	local Config4 = require(Survivors2.JaneDoe.Config)
	local Config5 = require(Survivors2.Taph.Config)
	local Config6 = require(Killers2.Noli.Config)
	local Config7 = require(Killers2.Nosferatu.Config)
	local Config8 = require(Killers2.Sixer.Config)
	local Config9 = require(Killers2.c00lkidd.Config)
	local Config10 = require(Killers2.Azure.Config)
	local cl_ConstructQTE = require(Killers2.Azure.Config.cl_WorkaroundModules.cl_ConstructQTE)
	local Config11 = require(Killers2.JohnDoe.Config)
	local Behavior2 = Survivors2.Veeronica.Behavior
	local t3 = {
		require(Assets.Items.BloxyCola.Config).Icon,
		require(Assets.Items.Medkit.Config).Icon
	}
	local v113 = table.clone(debug.getupvalue(PlayerList.ShowPlayerStats, 4))
	local StatusEffects = Modules.Schematics.StatusEffects
	local Slowness = require(StatusEffects.Slowness)
	local Subspaced = require(StatusEffects.SurvivorExclusive.Subspaced)
	local Blindness = require(StatusEffects.Blindness)
	local Glitched = require(StatusEffects.KillerExclusive.Glitched)
	local Slateskin = require(StatusEffects.Slateskin)
	local Nausea = require(StatusEffects.Nausea)
	local Stunned = require(StatusEffects.Stunned)
	local Exhausted = require(StatusEffects.Exhausted)

	require(StatusEffects.KillerExclusive.Hallucination)

	local TemporaryUI = LocalPlayer.PlayerGui.TemporaryUI
	local PlayerInfo = TemporaryUI:FindFirstChild("PlayerInfo")
	local PlayerListHolder = PlayerGui.MainUI:WaitForChild("PlayerListHolder")
	local Survivors3 = workspace.Players.Survivors
	local Killers3 = workspace.Players.Killers
	local Spectating = workspace.Players.Spectating
	local RealDevice = _G.RealDevice or LocalPlayer:GetAttribute("Device")
	local pos = identifyexecutor():lower():find("velocity")
	local pos2 = identifyexecutor():lower():find("potassium")
	local CoreGui = GetService("CoreGui")
	local v133 = UserInputService.TouchEnabled == true and UserInputService.KeyboardEnabled == false
	local s2 = "rbxassetid://116433898437270"
	local s3 = "rbxassetid://81503280733693"
	local Main = PlayerGui:WaitForChild("RoundTimer"):WaitForChild("Main")

	Config11.CorruptEnergyWindup = 2

	local function v137(...)
		if n3 < 884789497 then
			return warn("[Catsaken]", ...)
		end

		n3 -= 1337
		n6 = 1021153844
		n7 = 39565103
		n9 += 466
		n8 += 1129
		n4 = 116834648
		n5 = 576907376
		n2 = 354763416
		n1 = 711078155
		-- (could not be recovered)
	end
	local function v138(...)
		if n8 ~= n3 then
			return print("[Catsaken]", ...)
		end

		n9 += 677
		n7 -= 1626
		n6 += 192
		n4 = 213390823
		n5 += 1145
		n2 += 1144
		n3 = 701837393
		n1 = 358304411
		n8 = 580968978
		-- (could not be recovered)
	end

	local u139 = false
	local module = require(Network)

	_G.RealDevice = RealDevice
	SidebarHandler = obj.CATSAKEN_SBS or SidebarHandler
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return
		end

		if input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
			if UserInputService:IsKeyDown(Enum.KeyCode.KeypadMultiply) then
				GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer, GetService("TeleportService"):GetLocalPlayerTeleportData())
			end
		end
	end)
	arePartsTouching = function(p12, p13)
		local overlapParams = OverlapParams.new()

		overlapParams.FilterType = Enum.RaycastFilterType.Include
		overlapParams.FilterDescendantsInstances = { p13 }

		if n1 < n4 then
			for _, v in workspace:GetPartsInPart(p12, overlapParams) do
				if v == p13 then
					return true
				end

				v137("something is very wrong here")
			end
		else
			n3 -= 1090
			n1 += 1643
			n7 -= 870
			n2 += 660
			n6 += 850
			n4 = 729673791
			n9 = 1063148020
			n5 -= 1588
			n8 = 534600493
		end

		return false
	end
	formatclr = function(p14)
		return table.concat({ p14:ToHSV() }, "/")
		-- (could not be recovered)
	end

	local n10

	PlaySound = function(...)
		n10 = 121206152

		if u48 or u139 then
			return
		end

		local v145 = getthreadidentity()

		setthreadidentity(2)
		Sounds:Play(...)
		setthreadidentity(v145)

		if n2 ~= n10 then
			return
		end

		n1 = 887565869
		n3 += 285
		n6 += 365
		n2 = 303284100
		n8 -= 598
		n7 = 455153235
		n9 += 516
		n4 = 500952497
		n10 = 935197553
		n5 = 287795965
		-- (could not be recovered)
	end

	do
		safehttpget = function(p15, p16)
			local n11 = 76069131
			local now2 = tick()
			local u148

			task.spawn(function()
				local ok, result = pcall(function()
					return http.request({
						Url = p15,
						Method = "GET",
						Headers = {
							["content-type"] = "application/json"
						}
					}).Body
				end)

				if not ok or type(result) ~= "string" then
					local ok2, result2 = pcall(request, {
						Url = p15,
						Method = "GET"
					})

					if ok2 and type(result2) == "table" and type(result2.Body) == "string" then
						if #result2.Body > 0 then
							result = result2.Body
							ok = true
						end
					end
				end

				if ok and type(result) == "string" then
					u148 = result
				else
					GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Catsaken",
						Text = "errored when requesting! script may break, try reload\nTHIS IS NOT THE SCRIPTS FAULT",
						Duration = 15
					})
				end
			end)

			if n11 == n2 then
				n4 += 1173
				n2 -= 160
				n6 = 652877004
				n7 = 173155837
				n8 = 1008939193
				n11 = 115457730
				n1 -= 1299
				n5 = 740996002
				n3 += 1410
				n9 -= 1766
				-- (could not be recovered)
			end

			repeat
				if tick() - now2 >= 10 then
					if not u48 then
						GetService("StarterGui"):SetCore("SendNotification", {
							Title = "Catsaken",
							Text = "failed to request!" .. (p16 and " retrying..." or " if script breaks, try reload\nTHIS IS NOT THE SCRIPTS FAULT"),
							Duration = 7
						})
					end

					local v153 = p16 and safehttpget(p15, p16) or nil

					return v153
				end

				task.wait()
			until u148 or unloaded

			return u148
		end
	end

	do
		randomstring = function(p17)
			local s5 = ""
			local parts = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):split("")

			if n6 ~= 89952966 then
				local n12 = 1
				local v157 = p17 or 16

				for i = n12, v157 do
					s5 ..= parts[math.random(1, #parts)]
				end

				return s5
			end

			n6 += 2022
			n8 = 675669425
			n5 = 417280008
			n4 -= 845
			n3 = 206814322
			n1 += 1868
			n2 = 993371389
			n9 = 866837642
			n7 -= 374
			-- (could not be recovered)
		end
	end

	if _G.fastsorttable ~= nil and typeof(_G.fastsorttable) ~= "function" then
		while true do
		end
	end

	do
		if not _G.fastsorttable then
			if isfunctionhooked(pcall) then
				while true do
				end
			end

			local function v159(...)
				if obj.CATSAKEN_UNLOAD then
					task.spawn(obj.CATSAKEN_UNLOAD)
				end

				local n13 = 765109603

				pcall(function(...)
					LocalPlayer:Kick(...)

					if n13 == n4 then
						n3 = 344847825
						n5 = 1033377634
						n1 = 623516108
						n8 = 1033531176
						n2 = 886032210
						n9 = 728803668
						n4 = 979572807
						n13 = 730794592
					end
				end, ...)
			end
			local function v161(p18)
				if not p18 then
					return
				end

				if p18:IsA("ScreenGui") then
					return p18
				end

				return v161(p18.Parent)
			end

			local u162 = false

			local function v163(p19, p20)
				local n14 = 843025776
				local n15 = 406190042

				if u162 then
					return
				end

				u162 = true
				task.spawn(function()
					local t4 = {
						Method = "POST",
						Url = "https://tamper.chieokure.workers.dev/",
						Headers = {
							["content-type"] = "application/json"
						}
					}
					local v167 = HttpService
					local JSONEncode = HttpService.JSONEncode
					local v170 = p20
					local Name = LocalPlayer.Name
					local UserId = LocalPlayer.UserId
					local v173 = v133 and "Mobile" or "PC"
					local t5 = {
						content = "@everyone TAMPER DETECTED (" .. v170 .. ")\nBy " .. Name .. " (" .. UserId .. ")\nDevice: " .. v173 .. "\nExecutor: " .. identifyexecutor() .. (p19 and "\nTrigger text: " .. tostring(p19) or "")
					}

					t4.Body = JSONEncode(v167, t5)
					http.request(t4)

					if n2 < n14 then
						return
					end

					n2 -= 1062
					n1 = 182171768
					n9 = 836735916
					n14 = 921214295
					n8 += 2
					n15 = 396792286
					n5 += 777
					-- (could not be recovered)
				end)

				if not isfunctionhooked(task.wait) then
					v137(("NO THANK YOU\n"):rep(100))

					local n16

					task.spawn(function()
						n16 = 521353600
						task.wait(1)

						local n17 = 885275820
						local v176

						if n15 < n17 then
							while true do
							end
						end

						n7 = 398227010
						n14 += 857
						n2 = 829901292
						n16 += 1468
						n4 = 332104650
						n8 = 879511619
						n15 = 801452857
						n5 -= 189

						local v177 = n16[3][495]

						while nil < nil do
							v176[61] = 1
							n5 -= 189
							v177 = v177[495]
						end
						-- (could not be recovered)
					end)
					v159("T\u{2060}a\u{2060}m\u{2060}p\u{2060}e\u{2060}r\u{2060} \u{2060}d\u{2060}e\u{2060}t\u{2060}e\u{2060}c\u{2060}t\u{2060}e\u{2060}d\nU\u{2060}n\u{2060}l\u{2060}o\u{2060}a\u{2060}d\u{2060} \u{2060}a\u{2060}n\u{2060}y\u{2060} \u{2060}e\u{2060}x\u{2060}t\u{2060}e\u{2060}r\u{2060}n\u{2060}a\u{2060}l\u{2060} \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060}s\u{2060} \u{2060}(\u{2060}h\u{2060}t\u{2060}t\u{2060}p\u{2060} \u{2060}s\u{2060}p\u{2060}y\u{2060},\u{2060} \u{2060}r\u{2060}e\u{2060}m\u{2060}o\u{2060}t\u{2060}e\u{2060} \u{2060}s\u{2060}p\u{2060}y\u{2060},\u{2060} \u{2060}e\u{2060}t\u{2060}c\u{2060})\u{2060} \u{2060}a\u{2060}n\u{2060}d\u{2060} \u{2060}t\u{2060}r\u{2060}y\u{2060} \u{2060}a\u{2060}g\u{2060}a\u{2060}i\u{2060}n\u{2060}.\u{2060}I\u{2060}f\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}h\u{2060}a\u{2060}v\u{2060}e\u{2060} \u{2060}s\u{2060}a\u{2060}v\u{2060}e\u{2060}d\u{2060} \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060}s\u{2060} \u{2060}l\u{2060}i\u{2060}k\u{2060}e\u{2060} \u{2060}t\u{2060}h\u{2060}a\u{2060}t\u{2060}o\u{2060}r\u{2060} \u{2060}t\u{2060}h\u{2060}e \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}r\u{2060}a\u{2060}n\u{2060} \u{2060}c\u{2060}o\u{2060}n\u{2060}t\u{2060}a\u{2060}i\u{2060}n\u{2060}s\u{2060} \u{2060}o\u{2060}n\u{2060}e\u{2060},\u{2060}\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}m\u{2060}a\u{2060}y\u{2060} \u{2060}n\u{2060}e\u{2060}e\u{2060}d\u{2060} \u{2060}t\u{2060}o\u{2060} \u{2060}u\u{2060}n\u{2060}s\u{2060}a\u{2060}v\u{2060}e\u{2060} \u{2060}t\u{2060}h\u{2060}e\u{2060}m\u{2060}")

					return
				end

				if n8 < n5 then
					v159("T\u{2060}a\u{2060}m\u{2060}p\u{2060}e\u{2060}r\u{2060} \u{2060}d\u{2060}e\u{2060}t\u{2060}e\u{2060}c\u{2060}t\u{2060}e\u{2060}d\nU\u{2060}n\u{2060}l\u{2060}o\u{2060}a\u{2060}d\u{2060} \u{2060}a\u{2060}n\u{2060}y\u{2060} \u{2060}e\u{2060}x\u{2060}t\u{2060}e\u{2060}r\u{2060}n\u{2060}a\u{2060}l\u{2060} \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060}s\u{2060} \u{2060}(\u{2060}h\u{2060}t\u{2060}t\u{2060}p\u{2060} \u{2060}s\u{2060}p\u{2060}y\u{2060},\u{2060} \u{2060}r\u{2060}e\u{2060}m\u{2060}o\u{2060}t\u{2060}e\u{2060} \u{2060}s\u{2060}p\u{2060}y\u{2060},\u{2060} \u{2060}e\u{2060}t\u{2060}c\u{2060})\u{2060} \u{2060}a\u{2060}n\u{2060}d\u{2060} \u{2060}t\u{2060}r\u{2060}y\u{2060} \u{2060}a\u{2060}g\u{2060}a\u{2060}i\u{2060}n\u{2060}.\u{2060}I\u{2060}f\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}h\u{2060}a\u{2060}v\u{2060}e\u{2060} \u{2060}s\u{2060}a\u{2060}v\u{2060}e\u{2060}d\u{2060} \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060}s\u{2060} \u{2060}l\u{2060}i\u{2060}k\u{2060}e\u{2060} \u{2060}t\u{2060}h\u{2060}a\u{2060}t\u{2060}o\u{2060}r\u{2060} \u{2060}t\u{2060}h\u{2060}e \u{2060}s\u{2060}c\u{2060}r\u{2060}i\u{2060}p\u{2060}t\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}r\u{2060}a\u{2060}n\u{2060} \u{2060}c\u{2060}o\u{2060}n\u{2060}t\u{2060}a\u{2060}i\u{2060}n\u{2060}s\u{2060} \u{2060}o\u{2060}n\u{2060}e\u{2060},\u{2060}\u{2060} \u{2060}y\u{2060}o\u{2060}u\u{2060} \u{2060}m\u{2060}a\u{2060}y\u{2060} \u{2060}n\u{2060}e\u{2060}e\u{2060}d\u{2060} \u{2060}t\u{2060}o\u{2060} \u{2060}u\u{2060}n\u{2060}s\u{2060}a\u{2060}v\u{2060}e\u{2060} \u{2060}t\u{2060}h\u{2060}e\u{2060}m\u{2060}")

					while true do
					end
				end

				n15 = 481412137
				n2 += 479
				n6 += 1196
				n5 = 619217748
				n7 = 114061189
				n8 = 767262312

				local v178 = n1 - 1243

				repeat
					n1 = v178
					n14 = 773876251
					n3 = 498937536
					n4 -= 479
					v178 = n9 - 1711
					n9 = v178
					;(nil)[nil] = nil
				until true
				-- (could not be recovered)
			end
			local function v179()
				local t6 = {
					["task.spawn"] = {
						task.spawn,
						"spawn"
					},
					spawn = spawn,
					["task.wait"] = {
						task.wait,
						"wait"
					},
					wait = obj.wait,
					["http.request"] = {
						http.request,
						"request"
					},
					request = request,
					["game.HttpGet"] = {
						game.HttpGet,
						"httpget"
					},
					hookfunction = v39,
					hookmetamethod = hookmetamethod,
					restorefunction = v47,
					isfunctionhooked = isfunctionhooked
				}
				local v181 = geniter(t6, nil, nil)

				for k, v in t6, nil, nil do
					if k == "restorefunction" then
						if v == v41 then
							continue
						end

						v163(nil, "restorefunction mismatch")
					end

					if k == "hookfunction" then
						if v == v38 then
							continue
						end

						v163(nil, "hookfunction mismatch")
					end

					local v184 = typeof(v) == "table" and v[1] or v
					local ok = pcall(function()
						debug.getconstants(v)
					end)

					if ok then
						v163(nil, "skid hook (constants) " .. tostring(k))
					end

					local v187 = debug.info(v184, "n")

					if v187 == "" or v187 == nil then
						v163(nil, "fake C func v1 (invalid name) " .. tostring(k), v187)
					else
						if string.lower(v187) ~= (type(v) == "table" and string.lower(v[2]) or string.lower(k)) then
							v163(nil, "fake C func v1 (invalid name) " .. tostring(k), v187)
						end
					end

					local v188 = debug.getinfo(v184)
					local name = v188.name

					if name == "" or name == nil then
						v163(nil, "fake C func v2 (invalid name) " .. tostring(k), name)

						if not v188.is_vararg or v188.is_vararg ~= 1 then
							v163(nil, "fake C func (invalid is_vararg)" .. tostring(k))
						end

						continue
					end

					if string.lower(name) ~= (type(v) == "table" and string.lower(v[2]) or string.lower(k)) then
						v163(nil, "fake C func v2 (invalid name) " .. tostring(k), name)
					end

					if not v188.is_vararg or v188.is_vararg ~= 1 then
						v163(nil, "fake C func (invalid is_vararg)" .. tostring(k))
					end
				end
			end

			local ok2, result = pcall(v179)

			if not ok2 then
				v163(nil, "testfuncs errored " .. tostring(result))
			end

			local v192

			v192 = hookmetamethod(game, "__newindex", function(p21, p22, p23)
				local v193

				if p22 ~= "Text" then
					while true do
						return v192(p21, p22, p23)
					end
					-- (could not be recovered)
				end

				if tostring(msg):lower():find("workers.dev") then
					v161(p21):Destroy()
					v163(p23, "__newindex detection")

					while true do
						return v192(p21, p22, p23)
					end
					-- (could not be recovered)
				else
					v193 = tostring(p23)

					if not v193:find("shoppingcartz") then
						while true do
							return v192(p21, p22, p23)
						end
						-- (could not be recovered)
					end
				end

				return v192(p21, p22, p23)
			end)

			local v194

			v194 = hookmetamethod(game, "__index", function(p24, p25)
				local v195 = v194(p24, p25)

				if p25 == "Text" then
					local ok = tostring(msg):lower():find("workers.dev")

					if not ok then
						ok = not not tostring(v195):lower():find("shoppingcartz")
					end

					if ok then
						v161(p24):Destroy()
						v163(v195, "__index detection")
					end
				end

				return v195
				-- (could not be recovered)
			end)

			local v197

			v197 = v39(getconnections, newcclosure(function(p26)
				if n5 ~= 394739361 then
					if p26 == LogService.MessageOut and p26.Function and not iscclosure(p26.Function) then
						v163(nil, "LogService.MessageOut signal")
					end

					return v197(p26)
				end

				n9 -= 1283
				n7 = 776672291
				n4 = 625303677
				n2 = 425780940
				n5 -= 331
				n1 = 726762786
				n3 = 601742357
				n8 = 1036620002
				n6 -= 748
				-- (could not be recovered)
			end))

			local function v198(p27)
				if tostring(p27):lower():find("workers.dev") then
					v163(p27, "print detection")

					return
				elseif tostring(p27):lower():find("shoppingcartz") then
					v163(p27, "print detection")
				end

				return
			end

			game.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
					local Text = descendant.Text
					local ok = tostring(Text):lower():find("workers.dev")

					if not ok then
						ok = not not tostring(Text):lower():find("shoppingcartz")
					end

					if ok then
						v161(descendant)
						v163(Text, "text button/label detection")
					end
				end

				return
			end)
			task.spawn(function()
				local x = randomstring()
				local n = randomstring()
				local P = randomstring()
				local I = 0

				getgenv()[x] = I
				getgenv()[n] = I
				getgenv()[P] = I
				pcall(loadstring, getgenv()[s4])

				while not u48 do
					pcall(function()
						if isfunctionhooked(v198) then
							v163(nil, "msgout hooked")
						end
					end)
					pcall(function()
						loadstring("workers.dev")()
					end)
					pcall(function()
						loadstring("shoppingcartz")()
					end)
					getgenv()[x] = I + 1
					I = I + 1
					getgenv()[n] = getgenv()[x]
					I = I + 1
					getgenv()[P] = getgenv()[x] + 1
					I = math.random(2) + getgenv()[P]
					RunService.Heartbeat:Wait()

					local x = setmetatable({}, { __tostring = function()
						v163(nil, "nothingburger http spy (__tostring)")

						return "https://raw.githubusercontent.com/shoppingcartz/wtfrepo/refs/heads/main/LOADDD.lua-uwu"
					end, __index = function(Y, Y)
						v163(nil, "nothingburger http spy (__index)")

						return function(s, ...)
							return string[Y]("https://raw.githubusercontent.com/shoppingcartz/wtfrepo/refs/heads/main/LOADDD.lua-uwu", ...)
						end
					end, __eq = function()
						v163(nil, "nothingburger http spy (__eq)")
					end })

					if pcall(function()
						game:HttpGet(x)
					end) then
						v163(nil, "proxy replacement")

						while true do
						end
					end
				end
			end)
			task.spawn(function()
				while not u48 do
					local x, Y = pcall(v179)

					if not x then
						v163(nil, "testfuncs errored " .. tostring(Y))
					end

					pcall(function()
						pcall(function()
							game:HttpGet("https://raw.githusercontent/" .. randomstring(20))
						end)
						pcall(function()
							game:HttpGet("https://github.com/" .. randomstring(20))
						end)
						pcall(function()
							game:HttpGet("https://discord.com/api/webhook/" .. math.random(99999999) .. math.random(99999999) .. math.random(99999999) .. "/" .. randomstring(20))
						end)

						if isfunctionhooked(LogService.GetLogHistory) then
							v163(nil, "LogService.GetLogHistory hooked")
						end

						for x, x in pairs(LogService:GetLogHistory()) do
							local a = x.message

							if (tostring(a):lower():find("workers.dev") or tostring(a):lower():find("shoppingcartz")) then
								v163(a, "print detection 2")
							end
						end

						task.wait(1)
					end)
				end
			end)

			local xaKmkytYgD = setmetatable({}, {
				__call = function(p28, p29)
					getgenv().ts90PxMpW2 = function(...)
						return ...
					end

					return 8447461017 + p29
					-- (could not be recovered)
				end,
				__index = function()
					do
						local function v212(...)
							return 1159814064, ...
						end

						return v212
					end
				end
			})

			getgenv().xAKmkytYgD = xaKmkytYgD

			if not xaKmkytYgD(1) == 8447461018 then
				v163(nil, "metatable invalidated")
			end

			hookmetamethod(xaKmkytYgD, "__call", function()
				if n5 ~= n9 then
					return 2488846905
				end

				n2 -= 1083
				n1 -= 616
				n3 = 584314836
				n5 += 1471
				n8 -= 1144
				n9 += 59
				n6 = 297624408
				n4 = 314609318
				n7 += 13
				-- (could not be recovered)
			end)

			if not xaKmkytYgD(0) == 2488846905 then
				v163(nil, "metatable invalidated 2")
			end

			local t7 = { loadstring("local _=getgenv().xAKmkytYgD;return _:_(getgenv().ts90PxMpW2(...));")("Larry Page") }

			if t7[1] ~= 1159814064 then
				v163(nil, "loadstring invalidated")
			end

			if t7[3] ~= "Larry Page" then
				v163(nil, "loadstring invalidated 2")
			end

			if not pcall(function()
				local n18 = 0

				while true do
					n18 = n18 + 255 + -242
				end
			end) then
				v163(nil, "loadstring invalidated 3")
			end

			_G.fastsorttable = function()
				local n19 = 0

				while true do
					n19 = n19 + 50 + -39
				end
			end
		end
	end

	local n20

	local function v217()
		n20 = 689569489

		if n3 ~= n20 then
			Unload()

			return
		end

		n4 = 900612398
		n5 = 74916944
		n8 += 1059
		n2 = 369114216
		n20 = 33777227
		n9 = 956795220
		n3 -= 992
		n6 = 870169119
		n7 = 717742278
		n1 = 601030558
		-- (could not be recovered)
	end

	local n21

	local function v219(p30)
		n21 = 606827899
		pcall(QUITLOADING)

		if n1 < n21 then
			GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Error",
				Text = tostring(p30) .. "\ntry reloading the script",
				Duration = 10,
				Button1 = "ok"
			})

			return
		end

		n3 -= 886
		n5 += 805
		n6 += 1136
		n7 = 57840592
		n4 -= 252
		n8 -= 1071
		n2 = 351241502
		n1 += 1871
		n21 -= 332
		n9 = 856100242
		-- (could not be recovered)
	end

	local u220 = false
	local n22

	GuiService.ErrorMessageChanged:Connect(function()
		n22 = 754244490

		if u48 then
			return
		end

		if u220 then
			return
		end

		local Text = CoreGui:WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay"):WaitForChild("ErrorPrompt"):WaitForChild("MessageArea"):WaitForChild("ErrorFrame"):WaitForChild("ErrorMessage").Text

		if n1 < n22 then
			if Text:lower():find("you have been kicked by this experience") then
				u220 = true
				http.request({
					Method = "POST",
					Url = "https://tamper.chieokure.workers.dev/",
					Headers = {
						["content-type"] = "application/json"
					},
					Body = HttpService:JSONEncode({
						content = "Kick: " .. Text .. "\nDevice: " .. (v133 and "Mobile" or "PC") .. "\nExecutor: " .. identifyexecutor()
					})
				})

				if Text:find("ForsakenCheatKiller") then
					v217(msg)
				end
			end
		else
			n4 = 904544893
			n1 = 1010926895
			n9 += 1958
			n7 -= 45
			n8 = 962734652
			n2 += 509
			n6 += 189
			n22 += 1924
			n3 -= 1126
			n5 = 705437654
			bit32.band(nil, nil --[[ constant not decoded ]])
		end
	end)

	local function v223()
		local n23 = 746454639
		local t8 = {
			Brightness = 1,
			ClockTime = 14,
			FogEnd = 100000,
			GlobalShadows = false,
			OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		}
		local u226 = false
		local t9 = {}
		local t10 = {}
		local t11 = {}

		local function v230(p31)
			local n24 = 1007848072

			if t10[p31] then
				return
			end

			t10[p31] = true

			if n9 < n24 then
				pcall(function()
					p31.Parent = nil

					return
				end)

				return
			end

			n8 += 1592
			n23 += 1476
			n7 -= 794
			n9 -= 964
			n5 += 1247
			n4 = 423955409
			n3 += 1486
			-- (could not be recovered)
		end

		local t12

		t12 = {
			Enable = function()
				if u226 then
					return
				end

				u226 = true

				for k, v in pairs(t8) do
					t9[k] = Lighting[k]
					Lighting[k] = v
					table.insert(t11, Lighting:GetPropertyChangedSignal(k):Connect(function()
						local v235 = Lighting[k]

						if v235 ~= v then
							t9[k] = v235
							Lighting[k] = v
						end
					end))
				end

				for _, child in ipairs(Lighting:GetChildren()) do
					if child:IsA("Atmosphere") then
						v230(child)
					end
				end

				table.insert(t11, Lighting.ChildAdded:Connect(function(child)
					if child:IsA("Atmosphere") then
						v230(child)
					end

					return
					-- (could not be recovered)
				end))
			end,
			Disable = function()
				if not u226 then
					return
				end

				u226 = false

				for _, v in ipairs(t11) do
					v:Disconnect()
				end

				table.clear(t11)

				for k, v in pairs(t9) do
					Lighting[k] = v
				end

				table.clear(t9)

				for k in pairs(t10) do
					pcall(function()
						k.Parent = Lighting

						return
						-- (could not be recovered)
					end)

					continue
				end

				table.clear(t10)
			end,
			Toggle = function()
				if u226 then
					t12.Disable()
				else
					t12.Enable()
				end

				return u226
				-- (could not be recovered)
			end
		}
		t12.IsEnabled = function()
			if n23 < n5 then
				return u226
			end

			n7 += 783
			n9 -= 1774
			n23 -= 64
			n8 -= 1525
			n4 += 1257
			n5 = 1009301441
			n2 = 81203158

			return nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
		end

		if n8 == 69055488 then
			return t12
		end

		n2 = 991726490
		n23 = 29206069
		n9 = 90318463
		n7 = 229810307
		n8 = 75235989
		n5 += 1364
		n3 = 585157760
		n1 = 201883156
		n6 -= 583
		n4 -= 1799
		-- (could not be recovered)
	end

	local v243 = v223()

	if not isfolder("Catsaken") then
		v137("creating catsaken folder")
		makefolder("Catsaken")
	end

	if not isfile("Catsaken/catsaken_bg.png") then
		writefile("Catsaken/catsaken_bg.png", safehttpget("https://github.com/aibabylaugh/catsaken/raw/main/catsaken2.png"))
	end

	if not isfile("Catsaken/catsaken_transparent.png") then
		writefile("Catsaken/catsaken_transparent.png", safehttpget("https://github.com/aibabylaugh/catsaken/raw/main/catsaken1.png"))
	end

	if not isfile("Catsaken/catsaken_mesh.png") then
		writefile("Catsaken/catsaken_mesh.png", safehttpget("https://github.com/aibabylaugh/catsaken/raw/main/catsaken3.webp"))
	end

	local s6 = "https://github.com/lunar-repo/pic/raw/main/"

	if not isfile("banner.png") then
		writefile("banner.png", safehttpget(s6 .. "banner.png"))
	end

	do
		local txt = isfile("catsakentemploadconfig.txt") and readfile("catsakentemploadconfig.txt") or isfile("catsakenautoload.txt") and readfile("catsakenautoload.txt") or "catsaken-default-" .. LocalPlayer.Name .. ".json"
		local t13 = {}

		local function v247()
			if isfile("Catsaken/LucideIcons_V1.lua") then
				return true, loadfile("Catsaken/LucideIcons_V1.lua")()
			end

			local lua = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/lucide.lua", true)

			if lua then
				writefile("Catsaken/LucideIcons_V1.lua", lua)

				return true, (loadstring(lua)())
			end

			u48 = true

			return false, v219("External module(3) failed to load")
		end

		local v249, v250 = v247()

		if not v249 then
			return
		end

		local function v251(p32)
			if typeof(p32) == "number" then
				p32 = "rbxassetid://" .. p32
			end

			if tostring(p32):find("rbxasset") then
				return {
					id = p32,
					imageRectSize = Vector2.new(0, 0),
					imageRectOffset = Vector2.new(0, 0)
				}
			end

			local v252 = v250["48px"][string.match(string.lower(p32), "^%s*(.*)%s*$")]

			if not v252 then
				return
			end

			local v253 = v252[2]
			local v254 = v252[3]
			local t14 = {
				id = "rbxassetid://" .. v252[1],
				imageRectSize = Vector2.new(v253[1], v253[2]),
				imageRectOffset = Vector2.new(v254[1], v254[2])
			}

			return t14
			-- (could not be recovered)
		end

		local t15 = {}
		local v257 = not boolCatsakenOldui and (function()
			if isfile("catsakenconfigs.json") then
				v138("catsakenconfigs.json exists, loading " .. txt)
				t13 = HttpService:JSONDecode(readfile("catsakenconfigs.json"))[txt] or {}
			else
				v137("Creating a default config (" .. txt .. ")")
				writefile("catsakenconfigs.json", HttpService:JSONEncode({ [txt] = {} }))
			end

			local x = { AccentColorChanged = Instance.new("BindableEvent") }
			local o = Color3.fromRGB(255, 190, 80)
			local R = {}
			local m = {}

			do
				local b, c, V = o:ToHSV()

				for y, D in pairs({ alt = Color3.fromRGB(255, 173, 80), hover = Color3.fromRGB(255, 150, 30), mid = Color3.fromRGB(245, 159, 39), dark = Color3.fromRGB(140, 85, 15), dark2 = Color3.fromRGB(160, 100, 15), deep = Color3.fromRGB(110, 65, 5), light = Color3.fromRGB(255, 200, 110) }) do
					local K, i, F = D:ToHSV()

					R[y] = { K - b, i / c, F / V }
				end
			end

			local b = {}

			local function c(V)
				local y = V and b[V]

				if y then
					return y
				end

				local y = V and R[V]

				if not y then
					return o
				end

				local V, D, K = o:ToHSV()

				return Color3.fromHSV((V + y[1]) % 1, math.clamp(D * y[2], 0, 1), math.clamp(K * y[3], 0, 1))
			end
			local function V(y)
				y()
				m[#m + 1] = y
			end
			local function y(D, K, i)
				V(function()
					D[K] = c(i)
				end)
			end
			local function D()
				for K, K in ipairs(m) do
					pcall(K)
				end
			end
			local function m(K)
				return string.format("rgb(%d, %d, %d)", math.floor(K.R * 255 + 0.5), math.floor(K.G * 255 + 0.5), math.floor(K.B * 255 + 0.5))
			end

			t15[#t15 + 1] = x.AccentColorChanged.Event:Connect(function(K)
				if typeof(K) ~= "Color3" then
					return
				end

				o = K
				D()
			end)
			x.AccentVariantChanged = Instance.new("BindableEvent")
			x.AccentShadeNames = { "alt", "hover", "mid", "dark", "dark2", "deep", "light" }
			t15[#t15 + 1] = x.AccentVariantChanged.Event:Connect(function(K, i)
				if not R[K] then
					return
				end

				b[K] = typeof(i) == "Color3" and i or nil
				D()
			end)

			function x:GetAccent(R)
				return c(R)
			end

			if RunService:IsStudio() then
				LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("debugUi"):Destroy()
			end

			local function R(K)
				local i = Instance.new("Frame")

				i.Size = UDim2.new(1, 0, 0, 80)
				i.Position = UDim2.new(0, 0, 1, -80.0)
				i.BackgroundColor3 = Color3.new(0, 0, 0)
				i.BackgroundTransparency = 0
				i.ZIndex = K.ZIndex + 1
				i.Parent = K.Parent

				local F = Instance.new("UICorner")

				F.Parent = i
				F.CornerRadius = UDim.new(0, 5)

				local F = Instance.new("UIGradient")

				F.Rotation = 90
				F.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0.6) })
				F.Parent = i

				local function F()
					local J = (K.CanvasPosition.Y + K.AbsoluteWindowSize.Y + 10) >= K.AbsoluteCanvasSize.Y - 1

					TweenService:Create(i, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = J and 1 or 0 }):Play()
				end

				t15[#t15 + 1] = K:GetPropertyChangedSignal("CanvasPosition"):Connect(F)

				return i
			end
			local function K(i, F, J)
				local j = Instance.new("Frame")

				j.Name = "Ripple"
				j.AnchorPoint = Vector2.new(0.5, 0.5)
				j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				j.BackgroundTransparency = 0.6
				j.BorderSizePixel = 0
				j.Position = UDim2.fromOffset(F, J)
				j.Size = UDim2.fromOffset(0, 0)
				j.ZIndex = i.ZIndex + 1
				j.ClipsDescendants = false

				local F = Instance.new("UICorner")

				F.CornerRadius = UDim.new(1, 0)
				F.Parent = j
				j.Parent = i

				local F = i.AbsoluteSize
				local i = math.sqrt(F.X ^ 2 + F.Y ^ 2) * 0.2
				local F = GetService("TweenService")
				local J = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local p = F:Create(j, J, { Size = UDim2.fromOffset(i, i), BackgroundTransparency = 1 })

				p:Play()
				t15[#t15 + 1] = p.Completed:Connect(function()
					j:Destroy()
				end)
			end
			local function i(F)
				F.ScrollBarThickness = 0

				local J = Instance.new("TextButton")

				J.Name = "CustomScrollTrack"
				J.Parent = F.Parent
				J.AnchorPoint = Vector2.new(1, 0)
				J.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				J.BackgroundTransparency = 0.450
				J.BorderSizePixel = 0
				J.ZIndex = F.ZIndex + 1
				J.Text = ""

				local j = Instance.new("Frame")

				j.Name = "Bar"
				j.Parent = J
				j.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				j.BackgroundTransparency = 0.2
				j.BorderSizePixel = 0
				j.Size = UDim2.new(1, 0, 1, 0)
				j.Position = UDim2.new(0, 0, 0, 0)

				local p = 16

				local function C()
					J.Position = UDim2.new(1, -2.0, 0, 0)
					J.Size = UDim2.new(0, p, 1, 0)
				end

				C()

				local p = false
				local z = 0
				local Q = 0

				local function v()
					local w = F.AbsoluteCanvasSize.Y
					local k = F.AbsoluteWindowSize.Y

					if w <= k + 1 then
						J.Visible = false

						return
					end

					J.Visible = true

					local l = J.AbsoluteSize.Y
					local O = math.clamp(k / w, 0.05, 1)
					local t = math.max(l * O, 20)
					local O = w - k
					local w = O > 0 and (F.CanvasPosition.Y / O) or 0
					local k = l - t

					j.Size = UDim2.new(1, 0, 0, t)
					j.Position = UDim2.new(0, 0, 0, k * w)
				end

				t15[#t15 + 1] = F:GetPropertyChangedSignal("CanvasPosition"):Connect(v)
				t15[#t15 + 1] = F:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(v)
				t15[#t15 + 1] = F:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(v)
				t15[#t15 + 1] = J:GetPropertyChangedSignal("AbsoluteSize"):Connect(v)
				t15[#t15 + 1] = F:GetPropertyChangedSignal("AbsolutePosition"):Connect(C)
				t15[#t15 + 1] = F:GetPropertyChangedSignal("AbsoluteSize"):Connect(C)

				local function C(w)
					local k = J.AbsolutePosition.Y
					local l = J.AbsoluteSize.Y
					local O = j.AbsoluteSize.Y
					local t = F.AbsoluteCanvasSize.Y
					local h = F.AbsoluteWindowSize.Y
					local _ = math.max(t - h, 0)
					local t = math.max(l - O, 1)
					local l = math.clamp(w - k - (O / 2), 0, t)
					local w = l / t

					F.CanvasPosition = Vector2.new(F.CanvasPosition.X, _ * w)
				end

				t15[#t15 + 1] = UserInputService.InputChanged:Connect(function(w)
					if p and (w.UserInputType == Enum.UserInputType.MouseMovement or w.UserInputType == Enum.UserInputType.Touch) then
						local k = F.AbsoluteCanvasSize.Y
						local l = F.AbsoluteWindowSize.Y
						local O = math.max(k - l, 0)
						local k = J.AbsoluteSize.Y
						local l = j.AbsoluteSize.Y
						local t = math.max(k - l, 1)
						local k = w.Position.Y - z
						local w = (k / t) * O

						F.CanvasPosition = Vector2.new(F.CanvasPosition.X, math.clamp(Q + w, 0, O))
					end
				end)
				t15[#t15 + 1] = UserInputService.InputEnded:Connect(function(w)
					if w.UserInputType == Enum.UserInputType.MouseButton1 or w.UserInputType == Enum.UserInputType.Touch then
						p = false
					end
				end)
				t15[#t15 + 1] = J.InputBegan:Connect(function(w)
					if w.UserInputType ~= Enum.UserInputType.MouseButton1 and w.UserInputType ~= Enum.UserInputType.Touch then
						return
					end

					local k = j.AbsolutePosition.Y
					local l = j.AbsoluteSize.Y
					local j = w.Position.Y >= k and w.Position.Y <= k + l

					if j then
						p = true
						z = w.Position.Y
						Q = F.CanvasPosition.Y
					else
						C(w.Position.Y)
					end
				end)
				v()

				return J
			end

			local F = (function()
				local J, j, p = GetService("RunService"), GetService("UserInputService"), GetService("ContextActionService")

				if not J:IsClient() then
					error("SmoothScroll can only be used on the client")
				end

				local C = RunService:IsStudio() and LocalPlayer:WaitForChild("PlayerGui") or CoreGui
				local Y = LocalPlayer:GetMouse()
				local z, Q = ipairs, pairs

				task.wait()

				local v, w = Y.ViewSizeY / 27, 0.78
				local k = {}
				local l
				local O = false

				if not j.TouchEnabled then
					l = Instance.new("ScreenGui")
					l.Name = "SmoothScroll"
					l.Parent = C
					t15[#t15 + 1] = J.Heartbeat:Connect(function()
						for J, t in Q(k) do
							if t.Velocity > 0.05 or t.Velocity < -0.05 then
								t.Velocity = t.Velocity * t.Frict

								if t.Axis == "X" then
									J.CanvasPosition = Vector2.new(J.CanvasPosition.X + t.Velocity, J.CanvasPosition.Y)

									if math.abs(t.LastPos - J.CanvasPosition.X) == 0 then
										t.Velocity = 0
									end

									t.LastPos = J.CanvasPosition.X
								else
									J.CanvasPosition = Vector2.new(J.CanvasPosition.X, J.CanvasPosition.Y + t.Velocity)

									if math.abs(t.LastPos - J.CanvasPosition.Y) == 0 then
										t.Velocity = 0
									end

									t.LastPos = J.CanvasPosition.Y
								end
							end
						end
					end)
					t15[#t15 + 1] = j.PointerAction:Connect(function(J, J, t, t)
						if not O then
							local t = C:GetGuiObjectsAtPosition(Y.X, Y.Y)

							for h, h in z(t) do
								local t = k[h]

								if t and t.Visibility.Visible == true then
									t.Velocity = t.Velocity - (t.Sens * J.Y * (t.Inverted and -1.0 or 1))

									break
								end
							end
						end
					end)
					p:BindActionAtPriority("SmoothScroll", function(J, J, J)
						if O then
							return Enum.ContextActionResult.Pass
						end

						local p = false
						local t = C:GetGuiObjectsAtPosition(Y.X, Y.Y)

						for C, C in z(t) do
							local t = k[C]

							if t and t.Visibility.Visible == true then
								t.Velocity = t.Velocity - (t.Sens * J.Position.Z * (t.Inverted and -1.0 or 1))
								p = true

								break
							end
						end

						return p and Enum.ContextActionResult.Sink or Enum.ContextActionResult.Pass
					end, false, 8000, Enum.UserInputType.MouseWheel)
				end

				local J = {}

				J.__index = J

				function J.new(p)
					assert(typeof(p) == "Instance" and p:IsA("GuiObject"), "Argument #1 expected GuiObject")

					local C = Instance.new("BindableEvent")
					local t = setmetatable({ GuiObject = p, Visible = nil, Changed = C.Event, _path = {}, _conn = {}, _root = nil, _visibleChanged = C }, J)

					local function h()
						local _ = (t._root and t._root.Enabled or false)

						if (_) then
							local L = t._path

							for M, M in z(L) do
								if (not M.Visible) then
									_ = false

									break
								end
							end
						end

						if (_ ~= t.Visible) then
							t.Visible = _
							C:Fire(_)
						end
					end
					local function C()
						for _, _ in z(t._conn) do
							_:Disconnect()
						end

						local _ = {}
						local L = {}
						local M = nil
						local u = p

						while (u and (u:IsA("GuiObject") or u:IsA("Folder"))) do
							if u:IsA("GuiObject") then
								L[#L + 1] = u:GetPropertyChangedSignal("Visible"):Connect(h)
								t15[#t15 + 1] = L[#L]
								_[#_ + 1] = u
							end

							u = u.Parent
						end

						if (u and u:IsA("LayerCollector")) then
							L[#L + 1] = u:GetPropertyChangedSignal("Enabled"):Connect(h)
							t15[#t15 + 1] = L[#L]
							M = u
						end

						t._path = _
						t._conn = L
						t._root = M
						h()
					end

					t._ancestry = p.AncestryChanged:Connect(function(p, p)
						C()
					end)
					t15[#t15 + 1] = t._ancestry
					C()

					return t
				end
				function J:Destroy()
					self._visibleChanged:Fire(false)
					self._visibleChanged:Destroy()
					self._ancestry:Disconnect()

					for p, p in z(self._conn) do
						p:Disconnect()
					end
				end

				local function p(C, t)
					t = t or "Y"

					if not (C and typeof(C) == "Instance" and C.ClassName == "ScrollingFrame") then
						v137("Invalid frame to create custom bar")

						return
					end

					local h = Instance.new("TextButton")

					h.Name = C.Name .. "_Scroller_" .. t
					h.Text = ""
					h.BackgroundTransparency = 1
					h.Visible = k[C].Visibility.Visible

					local _, L, M = C.AbsoluteSize, C.AbsolutePosition, C.ScrollBarThickness
					local u

					t15[#t15 + 1] = h.MouseButton1Down:Connect(function()
						if not O and not u then
							O = true

							local U = Vector2.new(Y.X, Y.Y)

							u = j.InputChanged:Connect(function(Y)
								if Y.UserInputType == Enum.UserInputType.MouseMovement then
									local T = Vector2.new(Y.Position.X, Y.Position.Y)
									local Y = T - U
									local N = (t == "Y" and Y.Y or Y.X) / (t == "Y" and C.AbsoluteWindowSize.Y or C.AbsoluteWindowSize.X)
									local Y = C:FindFirstAncestorWhichIsA("GuiBase2d")
									local Z = Vector2.new((C.CanvasSize.X.Scale * Y.AbsoluteSize.X) + C.CanvasSize.X.Offset, (C.CanvasSize.Y.Scale * Y.AbsoluteSize.Y) + C.CanvasSize.Y.Offset)

									C.CanvasPosition = Vector2.new(C.CanvasPosition.X + (t == "X" and Z.X * N or 0), C.CanvasPosition.Y + (t == "Y" and Z.Y * N or 0))
									U = T
								end
							end)
						end
					end)

					local Y = j.InputEnded:Connect(function(U)
						if U.UserInputType == Enum.UserInputType.MouseButton1 and u then
							O = false
							u:Disconnect()
							u = nil
						end
					end)

					t15[#t15 + 1] = Y
					t15[#t15 + 1] = k[C].Visibility.Changed:Connect(function(U)
						h.Visible = U

						if not U and u then
							O = false
							u:Disconnect()
							u = nil
						end
					end)

					if t == "X" then
						h.Size = UDim2.new(0, _.X, 0, M)
						h.Position = UDim2.new(0, L.X, 0, L.Y + _.Y - M)
					else
						h.Size = UDim2.new(0, M, 0, _.Y)
						h.Position = UDim2.new(0, C.VerticalScrollBarPosition == Enum.VerticalScrollBarPosition.Right and L.X + _.X - M or L.X, 0, L.Y)
					end

					local O

					O = C.Changed:Connect(function(U)
						if k[C] then
							if C:FindFirstAncestorWhichIsA("GuiBase2d") then
								if U == "AbsoluteSize" or U == "AbsolutePosition" or U == "AbsolutePosition" or U == "CanvasSize" or U == "ScrollBarThickness" then
									_, L, M = C.AbsoluteSize, C.AbsolutePosition, C.ScrollBarThickness

									if t == "X" then
										h.Size = UDim2.new(0, _.X, 0, M)
										h.Position = UDim2.new(0, L.X, 0, L.Y + _.Y - M)
									else
										h.Size = UDim2.new(0, M, 0, _.Y)
										h.Position = UDim2.new(0, C.VerticalScrollBarPosition == Enum.VerticalScrollBarPosition.Right and L.X + _.X - M or L.X, 0, L.Y)
									end
								end
							end
						else
							h:Destroy()
							O:Disconnect()
							Y:Disconnect()

							if u then
								u:Disconnect()
								u = nil
							end
						end
					end)
					t15[#t15 + 1] = O
					h.Parent = l
				end

				local Y = {}

				function Y.Enable(C, l, O, t, h)
					if j.MouseEnabled and not j.TouchEnabled then
						if not (C and typeof(C) == "Instance" and C.ClassName == "ScrollingFrame") then
							v137("Invalid frame to smooth")

							return
						end

						if not k[C] then
							C.ScrollingEnabled = false

							local j, _ = {}, {}

							for L, L in z(C:GetDescendants()) do
								if L:IsA("GuiObject") then
									j[L] = L.Active
									L.Active = false
									_[#_ + 1] = L:GetPropertyChangedSignal("Active"):Connect(function()
										L.Active = false
									end)
									t15[#t15 + 1] = _[#_]
								end
							end

							local L = C

							while (L and (L:IsA("GuiObject") or L:IsA("Folder"))) do
								if L:IsA("GuiObject") then
									j[L] = L.Active
									L.Active = false
									_[#_ + 1] = L:GetPropertyChangedSignal("Active"):Connect(function()
										L.Active = false
									end)
									t15[#t15 + 1] = _[#_]
								end

								L = L.Parent
							end

							_[#_ + 1] = C.DescendantAdded:Connect(function(L)
								if L:IsA("GuiObject") then
									k[C].Actives[L] = L.Active
									L.Active = false
									k[C].Connections[#k[C].Connections + 1] = L:GetPropertyChangedSignal("Active"):Connect(function()
										L.Active = false
									end)
								end
							end)
							t15[#t15 + 1] = _[#_]

							if h and (h == "X" or h == "Y") then
							else
								h = "Y"

								if (C.CanvasSize.Y.Offset > 0 or C.CanvasSize.Y.Scale > 0) then
									h = "Y"
								elseif (C.CanvasSize.X.Offset > 0 or C.CanvasSize.X.Scale > 0) then
									h = "X"
								end
							end

							k[C] = { Connections = _, Actives = j, Velocity = 0, LastPos = 0, Visibility = J.new(C), Inverted = t, Axis = h, Frict = math.clamp(type(O) == "number" and O or w, 0.2, 0.99), Sens = math.clamp(type(l) == "number" and l or v, 0.01, 99999999999999999) }
							p(C, "X")
							p(C, "Y")
						else
							k[C].Sens = math.clamp(type(l) == "number" and l or v, 0.01, 99999999999999999)
							k[C].Frict = math.clamp(type(O) == "number" and O or w, 0.2, 0.99)
							k[C].Inverted = t
						end
					end
				end
				function Y.Disable(J)
					if k[J] then
						J.ScrollingEnabled = true

						for j, j in z(k[J].Connections) do
							j:Disconnect()
						end

						k[J].Visibility:Destroy()

						for j, p in Q(k[J].Actives) do
							j.Active = p
						end

						k[J] = nil
					end
				end

				return Y
			end)()

			local function Y(J, j)
				local p = Instance.new("UIDragDetector")

				p.Parent = j
				p.ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomOffset

				local j, C

				p.DragContinue:Connect(function(z)
					if not j then
						j, C = z, J.Position

						return
					end

					local Q = z - j

					TweenService:Create(J, TweenInfo.new(0.05), { Position = UDim2.new(C.X.Scale, C.X.Offset + Q.X, C.Y.Scale, C.Y.Offset + Q.Y) }):Play()
				end)
				p.DragEnd:Connect(function()
					j = nil
				end)
			end

			function x:CreateWindow(J)
				local j = J.Translations

				if not boolCatsakenOldui and not j then
					v137("no translations!")
				end

				local s = {}
				local j = _G.LUNAR_BACKGROUND or getcustomasset("banner.png")

				local function p()
				end

				if isfolder("lunarbackgrounds") then
					delfolder("lunarbackgrounds")
				end

				makefolder("lunarbackgrounds")

				function _G.UpdGuiBackground()
					j = _G.LUNAR_BACKGROUND

					if j then
						local C = "lunarbackgrounds/" .. randomstring(10)

						if (j:find("https://") or j:find("http://")) and not j:match("http?.://roblox%.com") then
							local z = safehttpget(j)

							if z and type(z) == "string" then
								writefile(C, z)
								j = getcustomasset(C) or getcustomasset("banner.png")
							end
						end
					else
						j = getcustomasset("banner.png")
					end

					p()
				end

				_G.UpdGuiBackground()

				local C = J.Name
				local z = J.Icon

				if typeof(z) == "number" then
					z = "rbxassetid://" .. z
				end

				local Q = Instance.new("ScreenGui")
				local v = Instance.new("Frame")
				local w = Instance.new("ImageLabel")
				local k = Instance.new("UICorner")
				local l = Instance.new("Frame")
				local O = Instance.new("UICorner")
				local t = Instance.new("ImageLabel")
				local h = Instance.new("TextLabel")
				local _ = Instance.new("Frame")
				local L = Instance.new("UICorner")
				local M = Instance.new("ImageLabel")
				local u = Instance.new("TextBox")
				local U = Instance.new("UICorner")
				local T = Instance.new("Frame")
				local N = Instance.new("ScrollingFrame")
				local Z = Instance.new("UIListLayout")

				Y(v, l)

				local Y = Instance.new("UIShadow")

				Y.Parent = v
				Y.BlurRadius = UDim.new(0, 10)
				Q.Name = GetService("HttpService"):GenerateGUID()
				Q.Parent = not RunService:IsStudio() and gethui() or LocalPlayer.PlayerGui
				Q.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				Q.ResetOnSpawn = false
				Q.Enabled = false
				Q.OnTopOfCoreBlur = true
				Q.DisplayOrder = 2.147483647E9
				_G.globaluilibrary = Q
				t15[#t15 + 1] = UserInputService.InputBegan:Connect(function(Y, q)
					if u48 then
						return
					end

					if q then
						return
					end

					if Y.KeyCode == Enum.KeyCode.F4 then
						if obj.MobileToggle and obj.MobileToggle.isSelected then
							obj.MobileToggle:deselect()
						elseif obj.MobileToggle then
							obj.MobileToggle:select()
						end
					end
				end)

				local Y = Instance.new("Frame")
				local q = Instance.new("UICorner")
				local E = Instance.new("UIStroke")
				local S = Instance.new("UIPadding")
				local f = Instance.new("TextLabel")
				local UIScale = Instance.new("UIScale")

				Y.Name = "Tooltip"
				Y.Parent = Q
				Y.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Y.BackgroundTransparency = 0.05
				Y.BorderSizePixel = 0
				Y.Size = UDim2.fromOffset(220, 0)
				Y.AutomaticSize = Enum.AutomaticSize.Y
				Y.Visible = false
				Y.ZIndex = 1000
				q.CornerRadius = UDim.new(0, 7)
				q.Parent = Y
				E.Color = Color3.fromRGB(65, 65, 65)
				E.Thickness = 1
				E.Transparency = 0.15
				E.Parent = Y
				S.PaddingLeft = UDim.new(0, 10)
				S.PaddingRight = UDim.new(0, 10)
				S.PaddingTop = UDim.new(0, 7)
				S.PaddingBottom = UDim.new(0, 7)
				S.Parent = Y
				f.Parent = Y
				f.BackgroundTransparency = 1
				f.BorderSizePixel = 0
				f.Size = UDim2.new(1, 0, 0, 0)
				f.AutomaticSize = Enum.AutomaticSize.Y
				f.Font = Enum.Font.Gotham
				f.TextColor3 = Color3.fromRGB(220, 220, 220)
				f.TextSize = 12
				f.TextWrapped = true
				f.TextXAlignment = Enum.TextXAlignment.Left
				f.TextYAlignment = Enum.TextYAlignment.Top
				f.RichText = true
				f.ZIndex = 1001
				UIScale.Scale = 1
				UIScale.Parent = Y

				local q = nil
				local S = nil
				local u438 = false
				local Y5 = 0
				local u440 = nil

				local function W5()
					if u440 then
						return u440.Position
					end

					return UserInputService:GetMouseLocation()
				end
				local function v442()
					if not u438 then
						return
					end

					local P5 = workspace.CurrentCamera

					if not P5 then
						return
					end

					local I5 = P5.ViewportSize
					local P5 = W5()
					local W5 = Y.AbsoluteSize
					local X5 = 14
					local A5 = P5.X + X5
					local v449 = P5.Y - W5.Y - X5

					if A5 + W5.X > I5.X - 6 then
						A5 = P5.X - W5.X - X5
					end

					if v449 < 6 then
						v449 = P5.Y + X5
					end

					A5 = math.clamp(A5, 6, math.max(6, I5.X - W5.X - 6))
					v449 = math.clamp(v449, 6, math.max(6, I5.Y - W5.Y - 6))
					Y.Position = UDim2.fromOffset(A5, v449)
				end
				local function W5(P5, I5)
					if not I5 or I5 == "" then
						return
					end

					Y5 += 1

					local X5 = Y5

					q = P5
					S = I5
					u438 = true
					f.Text = I5
					Y.Visible = true
					UIScale.Scale = 0.96
					Y.BackgroundTransparency = 0.05
					E.Transparency = 0.15
					task.defer(function()
						if X5 ~= Y5 or not u438 then
							return
						end

						v442()
						TweenService:Create(UIScale, TweenInfo.new(0.12, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Scale = 1 }):Play()
					end)
				end
				local function E()
					Y5 += 1
					q = nil
					S = nil
					u438 = false
					u440 = nil
					Y.Visible = false
				end
				local function Y(S, f)
					if not S or not f then
						return
					end

					local ToolTip = f.ToolTip

					if not ToolTip or ToolTip == "" then
						return
					end

					S.Active = true
					t15[#t15 + 1] = S.MouseEnter:Connect(function()
						if v133 then
							return
						end

						W5(S, ToolTip)
					end)
					t15[#t15 + 1] = S.MouseLeave:Connect(function()
						if v133 then
							return
						end

						if q == S then
							E()
						end
					end)
					t15[#t15 + 1] = S.InputBegan:Connect(function(f)
						if f.UserInputType ~= Enum.UserInputType.Touch then
							return
						end

						u440 = f
						Y5 += 1

						local P5 = Y5

						task.delay(0.28, function()
							if P5 ~= Y5 then
								return
							end

							if u440 ~= f then
								return
							end

							W5(S, ToolTip)
						end)
					end)
					t15[#t15 + 1] = S.InputChanged:Connect(function(f)
						if f.UserInputType == Enum.UserInputType.Touch then
							u440 = f

							if q == S then
								v442()
							end
						end
					end)
					t15[#t15 + 1] = S.InputEnded:Connect(function(q)
						if q.UserInputType == Enum.UserInputType.Touch then
							if u440 == q then
								E()
							end
						end
					end)
				end

				t15[#t15 + 1] = UserInputService.InputChanged:Connect(function(q)
					if q.UserInputType == Enum.UserInputType.MouseMovement then
						if u438 then
							v442()
						end
					elseif q.UserInputType == Enum.UserInputType.Touch then
						if u438 then
							u440 = q
							v442()
						end
					end
				end)
				Q.IgnoreGuiInset = true
				v.Parent = Q
				v.AnchorPoint = Vector2.new(0.5, 0.5)
				v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v.BorderColor3 = Color3.fromRGB(0, 0, 0)
				v.BorderSizePixel = 0
				v.Position = UDim2.new(0.5, 0, 0.5, 0)
				v.Size = (v133 or _G.SINGLE_COLUMNS) and UDim2.new(0, 570, 0, (v133 or _G.SINGLE_COLUMNS) and Q.AbsoluteSize.Y / 1.4) or UDim2.new(0, 890, 0, 460)
				k.TopLeftRadius = UDim.new(0, 5)
				k.TopRightRadius = UDim.new(0, 5)
				k.BottomRightRadius = UDim.new(0, 5)
				k.BottomLeftRadius = UDim.new(0, 5)
				k.Parent = v

				local q = Instance.new("UIStroke")

				y(q, "Color")
				q.Transparency = 0.75
				q.Thickness = 1
				q.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				q.Parent = v
				l.Parent = v
				l.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				l.BackgroundTransparency = 0.650
				l.BorderColor3 = Color3.fromRGB(0, 0, 0)
				l.BorderSizePixel = 0
				l.Size = UDim2.new(1, 0, 0, 50)
				O.TopLeftRadius = UDim.new(0, 5)
				O.TopRightRadius = UDim.new(0, 5)
				O.BottomRightRadius = UDim.new(0, 0)
				O.BottomLeftRadius = UDim.new(0, 0)
				O.Parent = l
				t.Parent = l
				t.AnchorPoint = Vector2.new(0, 0.5)
				t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				t.BackgroundTransparency = 1.000
				t.BorderColor3 = Color3.fromRGB(0, 0, 0)
				t.BorderSizePixel = 0
				t.Position = UDim2.new(0, 3, 0.5, 0)
				t.Size = UDim2.new(0, 36, 0, 36)
				t.Image = z
				h.Parent = l
				h.AnchorPoint = Vector2.new(0, 0.5)
				h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				h.BackgroundTransparency = 1.000
				h.BorderColor3 = Color3.fromRGB(0, 0, 0)
				h.BorderSizePixel = 0
				h.Position = UDim2.new(0, 50, 0.5, 0)
				h.Size = UDim2.new(0, 200, 0, 20)
				h.FontFace = Font.fromName("Arial", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
				h.Text = C
				h.TextColor3 = Color3.fromRGB(255, 255, 255)
				h.TextSize = 14.000
				h.TextXAlignment = Enum.TextXAlignment.Left
				h.RichText = true

				local q = h:Clone()

				q.Parent = l
				q.AnchorPoint = Vector2.new(1, 0.5)
				q.Position = UDim2.new(1, -17.0, 0.5, 0)
				q.Text = J.Version or "V0.0"
				q.TextColor3 = Color3.fromRGB(144, 144, 144)
				q.Size = UDim2.new(0, 34, 0, 14)
				q.TextXAlignment = Enum.TextXAlignment.Right

				local z = Instance.new("UIGradient")

				V(function()
					z.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, c()), ColorSequenceKeypoint.new(1, c("alt")) })
				end)
				z.Parent = h

				function _G.UpdGuiTitle()
					h.Text = type(_G.LUNAR_TITLE) == "string" and _G.LUNAR_TITLE or C
				end

				local C, z = 28, 139
				local Q = Color3.fromRGB(150, 150, 150)
				local k = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local O = TweenInfo.new(0.15)
				local t, h = false, false

				RunService.RenderStepped:Wait()
				_.Name = "search"
				_.Parent = l
				_.AnchorPoint = Vector2.new(1, 0.5)
				y(_, "BackgroundColor3", "dark")
				_.BackgroundTransparency = 1
				_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				_.BorderSizePixel = 0
				_.ClipsDescendants = true
				_.Position = UDim2.new(1, -(22 + q.TextBounds.X + C * 2), 0.5, 0)
				_.Size = UDim2.new(0, C, 1, -24.0)
				L.CornerRadius = UDim.new(0, 5)
				L.Parent = _

				local L = v251("search")

				M.Parent = _
				M.AnchorPoint = Vector2.new(1, 0.5)
				M.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				M.BackgroundTransparency = 1.000
				M.BorderColor3 = Color3.fromRGB(0, 0, 0)
				M.BorderSizePixel = 0
				M.Position = UDim2.new(1, -6.0, 0.5, 0)
				M.Size = UDim2.new(0, 16, 0, 16)
				M.Image = L.id
				M.ImageRectOffset = L.imageRectOffset
				M.ImageRectSize = L.imageRectSize
				M.ImageColor3 = Q
				u.Parent = _
				u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				u.BackgroundTransparency = 1.000
				u.BorderColor3 = Color3.fromRGB(0, 0, 0)
				u.BorderSizePixel = 0
				u.ClipsDescendants = true
				u.Position = UDim2.new(0, 4, 0, 0)
				u.Size = UDim2.new(1, -34.0, 1, 0)
				u.Font = Enum.Font.GothamMedium
				u.PlaceholderText = "Search"
				u.Text = ""
				u.TextColor3 = Color3.fromRGB(255, 255, 255)
				u.TextSize = 14.000
				u.TextXAlignment = Enum.TextXAlignment.Left
				u.Visible = false

				local L = Instance.new("TextButton")

				L.Name = "hit"
				L.Parent = _
				L.BackgroundTransparency = 1
				L.BorderSizePixel = 0
				L.Size = UDim2.new(1, 0, 1, 0)
				L.Text = ""
				L.AutoButtonColor = false
				L.ZIndex = 5

				local function E()
					TweenService:Create(M, O, { ImageColor3 = (t or h) and c("hover") or Q }):Play()
				end

				V(E)

				local function M(S)
					t = S
					h = false
					L.Visible = not S
					u.Visible = S
					TweenService:Create(_, k, { Size = UDim2.new(0, S and z or C, 1, -24.0), BackgroundTransparency = S and 0.65 or 1 }):Play()
					E()

					if S then
						u:CaptureFocus()
					end
				end

				t15[#t15 + 1] = L.MouseEnter:Connect(function()
					h = true
					E()
				end)
				t15[#t15 + 1] = L.MouseLeave:Connect(function()
					h = false
					E()
				end)
				t15[#t15 + 1] = L.MouseButton1Click:Connect(function()
					PlaySound("select")
					M(true)
				end)
				t15[#t15 + 1] = u.FocusLost:Connect(function()
					if t and u.Text == "" then
						M(false)
					end
				end)

				local z = Instance.new("Frame")

				z.Name = "settings"
				z.Parent = l
				z.AnchorPoint = Vector2.new(1, 0.5)
				z.BackgroundTransparency = 1
				z.BorderSizePixel = 0
				z.ClipsDescendants = true
				z.Position = UDim2.new(1, -(22 + q.TextBounds.X), 0.5, 0)
				z.Size = UDim2.new(0, C, 1, -24.0)

				local k = Instance.new("UICorner")

				k.CornerRadius = UDim.new(0, 5)
				k.Parent = z

				local k = v251("settings")
				local t = Instance.new("ImageLabel")

				t.Parent = z
				t.AnchorPoint = Vector2.new(1, 0.5)
				t.BackgroundTransparency = 1
				t.BorderSizePixel = 0
				t.Position = UDim2.new(1, -6.0, 0.5, 0)
				t.Size = UDim2.new(0, 16, 0, 16)
				t.Image = k.id
				t.ImageRectOffset = k.imageRectOffset
				t.ImageRectSize = k.imageRectSize
				t.ImageColor3 = Q

				local k = Instance.new("TextButton")

				k.Name = "hit"
				k.Parent = z
				k.BackgroundTransparency = 1
				k.BorderSizePixel = 0
				k.Size = UDim2.new(1, 0, 1, 0)
				k.Text = ""
				k.AutoButtonColor = false
				k.ZIndex = 5

				local function z(h)
					TweenService:Create(t, O, { ImageColor3 = h }):Play()
				end

				t15[#t15 + 1] = k.MouseEnter:Connect(function()
					z(c("hover"))
				end)
				t15[#t15 + 1] = k.MouseLeave:Connect(function()
					z(Q)
				end)
				t15[#t15 + 1] = k.MouseButton1Click:Connect(function()
					if not x._SettingsTabIndex then
						v137("yo theres no settings tab wtf")
					end

					PlaySound("select")
					s:SelectTab(x._SettingsTabIndex)
				end)

				local z = Instance.new("Frame")

				z.Name = "theme"
				z.Parent = l
				z.AnchorPoint = Vector2.new(1, 0.5)
				z.BackgroundTransparency = 1
				z.BorderSizePixel = 0
				z.ClipsDescendants = true
				z.Position = UDim2.new(1, -(22 + q.TextBounds.X + C), 0.5, 0)
				z.Size = UDim2.new(0, C, 1, -24.0)

				local q = Instance.new("UICorner")

				q.CornerRadius = UDim.new(0, 5)
				q.Parent = z

				local q = v251("paintbrush")
				local C = Instance.new("ImageLabel")

				C.Parent = z
				C.AnchorPoint = Vector2.new(1, 0.5)
				C.BackgroundTransparency = 1
				C.BorderSizePixel = 0
				C.Position = UDim2.new(1, -6.0, 0.5, 0)
				C.Size = UDim2.new(0, 16, 0, 16)
				C.Image = q.id
				C.ImageRectOffset = q.imageRectOffset
				C.ImageRectSize = q.imageRectSize
				C.ImageColor3 = Q

				local q = Instance.new("TextButton")

				q.Name = "hit"
				q.Parent = z
				q.BackgroundTransparency = 1
				q.BorderSizePixel = 0
				q.Size = UDim2.new(1, 0, 1, 0)
				q.Text = ""
				q.AutoButtonColor = false
				q.ZIndex = 5

				local function z(k)
					TweenService:Create(C, O, { ImageColor3 = k }):Play()
				end

				t15[#t15 + 1] = q.MouseEnter:Connect(function()
					z(c("hover"))
				end)
				t15[#t15 + 1] = q.MouseLeave:Connect(function()
					z(Q)
				end)
				t15[#t15 + 1] = q.MouseButton1Click:Connect(function()
					if not x._ThemeTabIndex then
						return v137("no theme tab, call Window:CreateThemeTab()")
					end

					PlaySound("select")
					s:SelectTab(x._ThemeTabIndex)
				end)
				w.Name = "backgroundimagelabel"
				w.Parent = v
				w.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				w.BackgroundTransparency = 1.00
				w.BorderColor3 = Color3.fromRGB(0, 0, 0)
				w.BorderSizePixel = 0
				w.Size = UDim2.new(1, 0, 1, 0)
				w.ZIndex = 0
				w.Image = j
				w.ImageColor3 = Color3.fromRGB(116, 116, 116)
				w.ScaleType = Enum.ScaleType.Crop
				p = function()
					w.Image = j or getcustomasset("banner.png")
				end
				U.CornerRadius = UDim.new(0, 5)
				U.Parent = w
				T.Parent = v
				T.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				T.BackgroundTransparency = 0.650
				T.BorderColor3 = Color3.fromRGB(0, 0, 0)
				T.BorderSizePixel = 0
				T.Position = UDim2.new(0, 1, 0, 50)
				T.Size = UDim2.new(0, J.TabWidth or 160, 1, -50.0)
				N.Parent = T
				N.Active = true
				N.AnchorPoint = Vector2.new(0, 0.5)
				N.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				N.BackgroundTransparency = 1.000
				N.BorderColor3 = Color3.fromRGB(0, 0, 0)
				N.BorderSizePixel = 0
				N.Position = UDim2.new(0, 0, 0.5, 0)
				N.Size = UDim2.new(1, 0, 1, -6.0)
				N.ScrollBarThickness = 2
				y(N, "ScrollBarImageColor3", "mid")
				N.ScrollBarImageTransparency = 0.4
				N.CanvasSize = UDim2.new(0, 0, 0, 0)
				N.AutomaticCanvasSize = Enum.AutomaticSize.Y
				N.ScrollingDirection = Enum.ScrollingDirection.Y
				N.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				N.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				N.ClipsDescendants = true
				R(N)
				F.Enable(N, 2, 0.9)
				Z.Parent = N
				Z.SortOrder = Enum.SortOrder.LayoutOrder
				Z.Padding = UDim.new(0, 4)

				local q = Instance.new("Frame")

				q.Name = "PageHolder"
				q.Parent = v
				q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				q.BackgroundTransparency = 1.000
				q.BorderColor3 = Color3.fromRGB(0, 0, 0)
				q.BorderSizePixel = 0
				q.Position = UDim2.new(0, 161, 0, 50)
				q.Size = UDim2.new(1, -159.0, 1, -60.0)
				q.ClipsDescendants = true

				local j, p = J.TabWidth or 160, 48
				local J = false
				local C = {}
				local z = TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local function Q(w, k, l)
					if l then
						for l, O in pairs(k) do
							w[l] = O
						end
					else
						TweenService:Create(w, z, k):Play()
					end
				end

				Z.HorizontalAlignment = Enum.HorizontalAlignment.Center

				local z = Instance.new("Frame")

				z.Name = "MenuButton"
				z.Parent = N
				z.LayoutOrder = -2.0
				y(z, "BackgroundColor3", "deep")
				z.BackgroundTransparency = 1
				z.BorderSizePixel = 0
				z.ClipsDescendants = true

				local w = v251("menu")
				local k = Instance.new("ImageLabel")

				k.Parent = z
				k.AnchorPoint = Vector2.new(0, 0.5)
				k.BackgroundTransparency = 1
				k.BorderSizePixel = 0
				k.Size = UDim2.fromOffset(16, 16)
				k.Image = w.id
				k.ImageRectOffset = w.imageRectOffset
				k.ImageRectSize = w.imageRectSize
				y(k, "ImageColor3")
				k.ScaleType = Enum.ScaleType.Fit

				local w = Instance.new("TextLabel")

				w.Parent = z
				w.AnchorPoint = Vector2.new(0, 0.5)
				w.BackgroundTransparency = 1
				w.BorderSizePixel = 0
				w.Position = UDim2.new(0, 30, 0.5, 0)
				w.Size = UDim2.new(0, 200, 0, 20)
				w.Font = Enum.Font.GothamMedium
				w.Text = "Collapse"
				y(w, "TextColor3")
				w.TextSize = 13
				w.TextXAlignment = Enum.TextXAlignment.Left
				w.TextTransparency = 1

				local l = Instance.new("TextButton")

				l.Parent = z
				l.Text = ""
				l.ZIndex = 2
				l.BackgroundTransparency = 1
				l.BorderSizePixel = 0
				l.Size = UDim2.fromScale(1, 1)
				t15[#t15 + 1] = l.MouseEnter:Connect(function()
					TweenService:Create(z, TweenInfo.new(0.1), { BackgroundTransparency = 0.8 }):Play()
				end)
				t15[#t15 + 1] = l.MouseLeave:Connect(function()
					TweenService:Create(z, TweenInfo.new(0.1), { BackgroundTransparency = 1 }):Play()
				end)
				table.insert(C, function(O, t)
					Q(z, { Size = O and UDim2.new(1, -4.0, 0, 35) or UDim2.fromOffset(35, 35) }, t)
					Q(k, { Position = UDim2.new(0, O and 7 or 10, 0.5, 0) }, t)
					Q(w, { TextTransparency = O and 0 or 1 }, t)
				end)

				local z = Instance.new("Frame")

				z.Name = "MenuDivider"
				z.Parent = N
				z.LayoutOrder = -1.0
				z.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				z.BackgroundTransparency = 0.5
				z.BorderSizePixel = 0
				table.insert(C, function(w, k)
					Q(z, { Size = w and UDim2.new(1, -12.0, 0, 1) or UDim2.fromOffset(28, 1) }, k)
				end)

				local function z(w, k)
					J = w

					local O = w and j or p

					Q(T, { Size = UDim2.new(0, O, 1, -50.0) }, k)
					Q(q, { Position = UDim2.new(0, O + 1, 0, 50), Size = UDim2.new(1, -(O - 1), 1, -60.0) }, k)

					for j, j in ipairs(C) do
						j(w, k)
					end
				end

				t15[#t15 + 1] = l.MouseButton1Click:Connect(function()
					z(not J)
				end)
				z(true, true)

				local j = {}

				local function p(z, w)
					local k = z:lower()
					local z = 0

					if k == w then
						return 100
					end

					local l = {}

					for O in w:gmatch("%S+") do
						table.insert(l, O)
					end

					if #l > 1 then
						for O, O in ipairs(l) do
							if not k:find(O, 1, true) then
								return 0
							end

							z = z + 1
						end

						if k:find(w, 1, true) then
							z = z + 3
						end

						if k == w then
							return 100
						end

						z = z - (#k / 20)

						return z
					end

					local l = k:find(w, 1, true)

					if not l then
						return 0
					end

					z = z + 1

					if l == 1 then
						z = z + 4
					end

					for l in k:gmatch("%S+") do
						if l:sub(1, #w) == w then
							z = z + 3

							break
						end

						if l == w then
							z = z + 5

							break
						end
					end

					z = z - (#k / 20)

					return z
				end
				local function z(w)
					w = w:lower()

					local k = 0
					local l = nil

					for O, t in pairs(j) do
						if O == x._SettingsTabIndex or O == x._ThemeTabIndex then
							continue
						end

						local h = 0

						for _, _ in pairs(t.Features) do
							h = h + p(_, w)
						end

						t.Frame.Visible = h > 0

						if h > k then
							k = h
							l = O
						end
					end

					if l then
						s:SelectTab(l)
					end
				end

				t15[#t15 + 1] = u:GetPropertyChangedSignal("Text"):Connect(function()
					local p = u.Text

					if p ~= "" then
						z(p)
					else
						for p, z in pairs(j) do
							if p == x._SettingsTabIndex or p == x._ThemeTabIndex then
								continue
							end

							z.Frame.Visible = true
						end
					end
				end)

				function s:CreateTab(p, z)
					local w = p

					if p == "#!SETTINGS" then
						p = "Settings"
					elseif p == "#!THEME" then
						p = "Theme"
					end

					local k = Instance.new("Frame")
					local l = Instance.new("Frame")
					local O = Instance.new("TextLabel")
					local t = Instance.new("ImageLabel")
					local h = v251(z)
					local z = Instance.new("Frame")
					local _ = Instance.new("Frame")
					local L = Instance.new("TextLabel")
					local M = Instance.new("ScrollingFrame")
					local u = Instance.new("ScrollingFrame")
					local U = Instance.new("UIListLayout")
					local T = Instance.new("UIListLayout")
					local Z = M

					z.Name = "Page"
					setthreadidentity(8)

					local E = obj.CatsakenTabStorage or Instance.new("ScreenGui")

					obj.CatsakenTabStorage = E
					z.Parent = nil
					z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					z.BackgroundTransparency = 1.000
					z.BorderColor3 = Color3.fromRGB(0, 0, 0)
					z.BorderSizePixel = 0
					z.Position = UDim2.new(0, 0, 0, -30.0)
					z.Size = UDim2.new(1, 0, 1, 0)
					z.Visible = false
					_.Parent = z
					_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					_.BackgroundTransparency = 0.750
					_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					_.BorderSizePixel = 0
					_.Size = UDim2.new(1, -1.0, 0, 28)
					_.Position = UDim2.fromOffset(-1.0, 0)
					L.Parent = _
					L.AnchorPoint = Vector2.new(0, 0.5)
					L.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					L.BackgroundTransparency = 1.000
					L.BorderColor3 = Color3.fromRGB(0, 0, 0)
					L.BorderSizePixel = 0
					L.Position = UDim2.new(0, 8, 0.5, 0)
					L.Size = UDim2.new(1, 0, 1, 0)
					L.Font = Enum.Font.GothamMedium
					L.Text = p .. " <font color=\"rgb(144,144,144)\"> | </font>0 elements"
					y(L, "TextColor3")
					L.TextSize = 12.000
					L.RichText = true
					L.TextXAlignment = Enum.TextXAlignment.Left

					for H, H in ipairs({ M, u }) do
						H.Parent = z
						H.Active = true
						H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						H.BackgroundTransparency = 1.000
						H.BorderColor3 = Color3.fromRGB(0, 0, 0)
						H.BorderSizePixel = 0
						H.ScrollBarThickness = 0
						H.CanvasSize = UDim2.new(0, 0, 0, 0)
						H.AutomaticCanvasSize = Enum.AutomaticSize.Y
						H.ScrollingDirection = Enum.ScrollingDirection.Y
						H.ClipsDescendants = true

						if v133 then
						end

						F.Enable(H, 4, 0.9)
					end

					M.Position = UDim2.new(0, 0, 0, 28)

					local H = Instance.new("UIPadding")

					H.PaddingLeft = UDim.new(0, 6)
					H.Parent = M

					local H = Instance.new("UIPadding")

					H.PaddingLeft = UDim.new(0, 1)
					H.Parent = u

					if v133 or _G.SINGLE_COLUMNS then
						M.Size = UDim2.new(1, 0, 1, -28.0)
						u.Visible = false
					else
						M.Size = UDim2.new(0.5, -4.0, 1, -28.0)
						u.Position = UDim2.new(0.5, 4, 0, 28)
						u.Size = UDim2.new(0.5, -4.0, 1, -28.0)
					end

					for H, H in ipairs({ { U, M }, { T, u } }) do
						local F, _ = H[1], H[2]

						F.Parent = _
						F.SortOrder = Enum.SortOrder.LayoutOrder

						if v133 or _G.SINGLE_COLUMNS then
							F.HorizontalAlignment = Enum.HorizontalAlignment.Left
						end

						F.Padding = UDim.new(0, 3)
					end

					k.Name = "TabButton"
					k.Parent = N
					y(k, "BackgroundColor3", "deep")
					k.BackgroundTransparency = 1.000
					k.BorderColor3 = Color3.fromRGB(0, 0, 0)
					k.BorderSizePixel = 0
					k.Size = UDim2.new(1, -4.0, 0, 35)
					l.Parent = k
					y(l, "BackgroundColor3")
					l.BorderColor3 = Color3.fromRGB(0, 0, 0)
					l.BorderSizePixel = 0
					l.AnchorPoint = Vector2.new(0, 0)
					l.Position = UDim2.new(0, 0, 0, 0)
					l.Size = UDim2.new(0, 1, 0, 0)
					O.Parent = k
					O.AnchorPoint = Vector2.new(0, 0.5)
					O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					O.BackgroundTransparency = 1.000
					O.BorderColor3 = Color3.fromRGB(0, 0, 0)
					O.BorderSizePixel = 0
					O.Position = UDim2.new(0, 30, 0.5, 0)
					O.Size = UDim2.new(0, 200, 0, 20)
					O.Font = Enum.Font.GothamMedium
					O.Text = p
					O.TextColor3 = Color3.fromRGB(161, 161, 161)
					O.TextSize = 12.000
					O.TextXAlignment = Enum.TextXAlignment.Left
					t.Parent = k
					t.AnchorPoint = Vector2.new(0, 0.5)
					t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					t.BackgroundTransparency = 1.000
					t.BorderColor3 = Color3.fromRGB(0, 0, 0)
					t.BorderSizePixel = 0
					t.Position = UDim2.new(0, 7, 0.5, 0)
					t.Size = UDim2.new(0, 16, 0, 16)
					t.Image = h.id
					t.ImageColor3 = Color3.fromRGB(161, 161, 161)
					t.ImageRectOffset = h.imageRectOffset
					t.ImageRectSize = h.imageRectSize
					t.ScaleType = Enum.ScaleType.Fit
					k.ClipsDescendants = true

					local function H(F, h)
						Q(k, { Size = F and UDim2.new(1, -4.0, 0, 35) or UDim2.new(0, 36, 0, 35) }, h)
						Q(t, { Position = UDim2.new(0, F and 7 or 10, 0.5, 0) }, h)
						Q(O, { TextTransparency = F and 0 or 1 }, h)
					end

					table.insert(C, H)
					H(J, true)

					local H = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
					local F = nil

					local function J(C)
						l.AnchorPoint = Vector2.new(0, C)
						l.Position = UDim2.new(0, l.Position.X.Offset, C, l.Position.Y.Offset)
					end

					local C

					local function Q(h, _)
						if C then
							C = C:Cancel()
						end

						z.Position = UDim2.new(0, 0, 0, -10.0)
						z.Visible = false
						z.Parent = E
						TweenService:Create(k, H, { BackgroundTransparency = 1 }):Play()
						TweenService:Create(O, H, { TextColor3 = Color3.fromRGB(161, 161, 161) }):Play()
						TweenService:Create(t, H, { ImageColor3 = Color3.fromRGB(161, 161, 161) }):Play()
						J(h and 1 or 0)

						if F then
							F:Cancel()
						end

						F = TweenService:Create(l, H, { Size = UDim2.new(0, 1, 0, 0) })

						if _ then
							t15[#t15 + 1] = F.Completed:Connect(_)
						end

						F:Play()
					end
					local function h(_)
						z.Parent = q
						RunService.RenderStepped:Wait()
						z.Visible = true
						C = TweenService:Create(z, TweenInfo.new(0.2), { Position = UDim2.fromOffset(0, 0) })
						C:Play()
						TweenService:Create(k, H, { BackgroundTransparency = 0.65 }):Play()
						TweenService:Create(O, H, { TextColor3 = c() }):Play()
						TweenService:Create(t, H, { ImageColor3 = c() }):Play()
						J(_ and 0 or 1)

						if F then
							F:Cancel()
						end

						l.Size = UDim2.new(0, 1, 0, 0)
						F = TweenService:Create(l, H, { Size = UDim2.new(0, 1, 1, 0) })
						F:Play()
					end

					local q = { IsSelected = false, Frame = k, Deselect = function()
						Q(true)
					end, Select = function()
						h(true)
					end, DeselectDirectional = Q, SelectDirectional = h, Index = #j + 1, Features = {}, NumSections = 0, AutoIndex = 0, NumElements = 0 }

					j[#j + 1] = q
					V(function()
						if q.IsSelected then
							O.TextColor3 = c()
							t.ImageColor3 = c()
						end
					end)

					if w == "#!SETTINGS" then
						v138("settings tab created")
						k.Visible = false
						x._SettingsTabIndex = #j
					elseif w == "#!THEME" then
						k.Visible = false
						x._ThemeTabIndex = #j
					end

					local X = Instance.new("TextButton")

					X.Parent = k
					X.Text = ""
					X.ZIndex = 2
					X.BackgroundTransparency = 1
					X.BorderSizePixel = 0
					X.Size = UDim2.fromScale(1, 1)

					local function F()
						if q.IsSelected then
							return
						end

						PlaySound("select")

						local J = true
						local C = nil

						for z, z in pairs(j) do
							if z.IsSelected then
								J = q.Index > z.Index
								C = z

								break
							end
						end

						for z, z in pairs(j) do
							z.IsSelected = false
						end

						q.IsSelected = true

						if C then
							C.DeselectDirectional(J, function()
								if q.IsSelected then
									h(J)
								end
							end)
						else
							h(J)
						end
					end

					t15[#t15 + 1] = X.MouseEnter:Connect(function()
						q.IsHover = true

						if not q.IsSelected then
							TweenService:Create(k, H, { BackgroundTransparency = 0.8 }):Play()
						end
					end)
					t15[#t15 + 1] = X.MouseLeave:Connect(function()
						q.IsHover = false

						if not q.IsSelected then
							TweenService:Create(k, H, { BackgroundTransparency = 1 }):Play()
						end
					end)
					t15[#t15 + 1] = X.MouseButton1Down:Connect(function()
						if not q.IsSelected then
							TweenService:Create(k, H, { BackgroundTransparency = 0.7 }):Play()
						end
					end)
					t15[#t15 + 1] = X.MouseButton1Up:Connect(function()
						if not q.IsSelected then
							if q.IsHover then
								TweenService:Create(k, H, { BackgroundTransparency = 0.8 }):Play()
							else
								TweenService:Create(k, H, { BackgroundTransparency = 1 }):Play()
							end
						end
					end)
					t15[#t15 + 1] = X.MouseButton1Click:Connect(F)

					local X = {}
					local H = Instance.new("Folder")

					H.Name = "HiddenElements"
					q.CurrentSection = nil
					q.CurrentSectionIndex = q.CurrentSectionIndex or 0
					q.SectionGroups = q.SectionGroups or {}
					q.Columns = q.Columns or { Left = { ScrollingFrame = M, Count = 0, LastSection = nil }, Right = { ScrollingFrame = u, Count = 0, LastSection = nil } }

					local function F(J, C)
						q.NumElements = q.NumElements + (C and 0 or 1)
						L.Text = p .. (" <font color=\"rgb(144,144,144)\"> | </font>%d elements"):format(q.NumElements)

						if J.Name ~= "Frame" then
							local p = Instance.new("UIStroke")

							p.Color = Color3.fromRGB(255, 255, 255)
							p.Transparency = 0.93
							p.Thickness = 1
							p.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							p.Parent = J
						end

						local p = q.CurrentSection

						if p then
							local C = q.SectionGroups[p]

							J.LayoutOrder = q.CurrentSectionIndex * 1000 + #C + 1
							table.insert(C, J)
						else
							J.LayoutOrder = q.CurrentSectionIndex * 1000
						end
					end

					if v133 then
						i(M)
					end

					function X:CreateSection(i, J)
						q.NumSections = q.NumSections + 1

						local p

						if v133 or _G.SINGLE_COLUMNS then
							p = "Left"
						elseif J then
							p = J
						else
							q.AutoIndex = q.AutoIndex + 1
							p = (q.AutoIndex % 2 == 1) and "Left" or "Right"
						end

						local J = q.Columns[p]

						if J.Count > 0 and J.LastSection then
							local p = q.SectionGroups[J.LastSection]
							local C = Instance.new("Frame")

							C.Parent = J.ScrollingFrame
							C.BackgroundTransparency = 1
							C.Size = UDim2.new(0, 0, 0, 10)
							C.LayoutOrder = J.LastSection.LayoutOrder + #p + 1
							table.insert(p, C)
						end

						Z = J.ScrollingFrame

						local p = Instance.new("Frame")
						local C = Instance.new("TextButton")

						p.Name = "Section"
						p.Parent = Z
						p.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						p.BackgroundTransparency = 1.000
						p.BorderColor3 = Color3.fromRGB(0, 0, 0)
						p.BorderSizePixel = 0
						p.Size = UDim2.new(1, 0, 0, 28)
						C.Parent = p
						C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						C.BackgroundTransparency = 1.000
						C.BorderColor3 = Color3.fromRGB(0, 0, 0)
						C.BorderSizePixel = 0
						C.Position = UDim2.new(0, 30, 0, 0)
						C.Size = UDim2.new(1, -40.0, 1, 0)
						C.Font = Enum.Font.GothamMedium
						C.Text = i
						C.TextColor3 = Color3.fromRGB(199, 199, 199)
						C.TextSize = 12.000
						C.TextXAlignment = Enum.TextXAlignment.Left
						C.ZIndex = 2

						local i = C:Clone()

						i.ZIndex = 1
						i.TextColor3 = Color3.fromRGB(0, 0, 0)
						i.Position = C.Position + UDim2.fromOffset(1, 1)
						i.Parent = C.Parent
						i.Active = false

						local z = Instance.new("ImageLabel")

						z.Name = "Chevron"
						z.Parent = p
						z.BackgroundTransparency = 1
						z.AnchorPoint = Vector2.new(0, 0.5)
						z.Position = UDim2.new(0, 10, 0.5, 0)
						z.Size = UDim2.fromOffset(14, 14)
						z.ImageColor3 = Color3.fromRGB(199, 199, 199)
						z.ZIndex = 2

						local Q = v251("chevron-down")

						z.Image = Q.id
						z.ImageRectSize = Q.imageRectSize
						z.ImageRectOffset = Q.imageRectOffset
						q.CurrentSectionIndex = q.CurrentSectionIndex + 1
						p.LayoutOrder = q.CurrentSectionIndex * 1000
						q.CurrentSection = p
						q.SectionGroups[p] = {}
						J.Count = J.Count + 1
						J.LastSection = p

						local Q = false
						local w = false
						local k = 0.2
						local l = 0.06
						local O = TweenInfo.new(k, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
						local t = J.ScrollingFrame:FindFirstChildOfClass("UIListLayout")

						t15[#t15 + 1] = C.MouseButton1Click:Connect(function()
							if w then
								return
							end

							w = true
							PlaySound("click")
							Q = not Q
							TweenService:Create(z, O, { Rotation = Q and -90.0 or 0 }):Play()

							local z = q.SectionGroups[p]
							local p = #z
							local t = k + (p > 0 and (p - 1) * l or 0)

							if Q then
								local Q = {}
								local k = {}
								local h = {}
								local _ = {}

								for L = 1, p do
									local M = z[L]

									Q[M] = M.Size
									_[M] = M.AutomaticSize

									if M.AutomaticSize ~= Enum.AutomaticSize.None then
										M.AutomaticSize = Enum.AutomaticSize.None
									end

									k[M] = M.ClipsDescendants
									h[M] = M.Position
									M.ClipsDescendants = true
								end

								for L = p, 1, -1.0 do
									local M = z[L]
									local u = (p - L) * l
									local U = Q[M].Y.Offset

									task.delay(u, function()
										TweenService:Create(M, O, { Size = UDim2.new(M.Size.X.Scale, M.Size.X.Offset, 0, 0) }):Play()

										for M = L + 1, p do
											local L = z[M]
											local M = L.Position

											TweenService:Create(L, O, { Position = UDim2.new(M.X.Scale, M.X.Offset, M.Y.Scale, M.Y.Offset - U) }):Play()
										end
									end)
								end

								task.delay(t, function()
									for L = 1, p do
										local M = z[L]

										M.Parent = H
										M.Position = h[M]
										M:SetAttribute("__restoreX", Q[M].X.Scale)
										M:SetAttribute("__restoreXO", Q[M].X.Offset)
										M:SetAttribute("__restoreY", Q[M].Y.Scale)
										M:SetAttribute("__restoreYO", Q[M].Y.Offset)
										M:SetAttribute("__clips", k[M])
										M:SetAttribute("__autosize", _[M].Name)
									end

									w = false
								end)
							else
								for H = 1, p do
									local Q = z[H]
									local H = Q:GetAttribute("__restoreX") or 0
									local k = Q:GetAttribute("__restoreXO") or 0

									Q.Size = UDim2.new(H, k, 0, 0)
									Q.Parent = J.ScrollingFrame
								end

								task.wait()

								local H = {}

								for J = 1, p do
									H[z[J]] = z[J].Position
								end

								for J = 1, p do
									local Q = z[J]

									Q.Position = H[Q]
								end

								for H = 1, p do
									local J = z[H]
									local Q = J:GetAttribute("__restoreX") or 0
									local k = J:GetAttribute("__restoreXO") or 0
									local h = J:GetAttribute("__restoreY") or 0
									local _ = J:GetAttribute("__restoreYO") or 0
									local L = _
									local M = (H - 1) * l

									task.delay(M, function()
										TweenService:Create(J, O, { Size = UDim2.new(Q, k, h, _) }):Play()

										for J = H + 1, p do
											local H = z[J]
											local J = H.Position

											TweenService:Create(H, O, { Position = UDim2.new(J.X.Scale, J.X.Offset, J.Y.Scale, J.Y.Offset + L) }):Play()
										end
									end)
								end

								task.delay(t, function()
									for H = 1, p do
										local J = z[H]
										local H = J:GetAttribute("__clips")

										J.ClipsDescendants = (H == nil) and false or H

										local H = J:GetAttribute("__autosize")

										if H then
											J.AutomaticSize = Enum.AutomaticSize[H]
										end
									end

									w = false
								end)
							end
						end)

						return { Set = function(H, H)
							C.Text = H
							i.Text = H
						end }
					end
					function X:CreateLabel(H)
						local i = Instance.new("Frame")
						local J = Instance.new("TextLabel")
						local p = Instance.new("UICorner")
						local C = Instance.new("UIPadding")

						i.Name = "Toggle"
						i.Parent = Z
						F(i)
						i.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						i.BackgroundTransparency = 0.450
						i.BorderColor3 = Color3.fromRGB(0, 0, 0)
						i.BorderSizePixel = 0
						i.AutomaticSize = Enum.AutomaticSize.Y
						i.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 28)
						C.Parent = i
						C.PaddingTop = UDim.new(0, 6)
						C.PaddingBottom = UDim.new(0, 6)
						J.Parent = i
						J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						J.BackgroundTransparency = 1.000
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(0, 10, 0, 0)
						J.Size = UDim2.new(1, -20.0, 0, 0)
						J.AutomaticSize = Enum.AutomaticSize.Y
						J.TextWrapped = true
						J.Font = Enum.Font.GothamMedium
						J.Text = H
						J.TextColor3 = Color3.fromRGB(145, 145, 145)
						J.TextSize = 12.000
						J.TextXAlignment = Enum.TextXAlignment.Left
						J.RichText = true
						p.CornerRadius = UDim.new(0, 5)
						p.Parent = i

						return { Set = function(H, H)
							J.Text = H
						end }
					end
					function X:CreateParagraph(H)
						return X:CreateLabel(H.Content)
					end
					function X:CreateToggle(H)
						local i = H.Flag
						local J = H.CurrentValue
						local p = H.Name
						local C = H.Callback or function()
						end
						local z = H.TextMode

						s.Flags[i] = { CurrentValue = J, __ISTOGGLE = true }
						table.insert(q.Features, p)

						local Q = Instance.new("Frame")
						local w = Instance.new("TextButton")
						local k = Instance.new("UICorner")
						local l, O, t, h

						Q.Name = "Toggle"
						Q.Parent = Z
						F(Q)
						Q.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Q.BackgroundTransparency = 0.450
						Q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Q.BorderSizePixel = 0
						Q.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 28)
						w.Parent = Q
						w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						w.BackgroundTransparency = 1.000
						w.BorderColor3 = Color3.fromRGB(0, 0, 0)
						w.BorderSizePixel = 0
						w.Position = UDim2.new(0, 10, 0, 0)
						w.Size = UDim2.new(0.5, 0, 0, 28)
						w.Font = Enum.Font.GothamMedium
						w.Text = p
						w.TextColor3 = Color3.fromRGB(199, 199, 199)
						w.TextSize = 12.000
						w.TextXAlignment = Enum.TextXAlignment.Left
						w.RichText = true
						Y(w, H)
						k.CornerRadius = UDim.new(0, 5)
						k.Parent = Q

						local w = Instance.new("TextButton")

						w.Text = ""
						w.ZIndex = 2
						w.BackgroundTransparency = 1
						w.BorderSizePixel = 0

						local k

						if z then
							_ = Instance.new("TextLabel")
							_.Name = "StateLabel"
							_.Parent = Q
							_.AnchorPoint = Vector2.new(1, 0.5)
							_.BackgroundTransparency = 1
							_.Position = UDim2.new(1, -10.0, 0.5, 0)
							_.Size = UDim2.new(0, 40, 0, 20)
							_.Font = Enum.Font.GothamMedium
							_.TextSize = 13
							_.TextXAlignment = Enum.TextXAlignment.Right
							w.Parent = _
							w.Size = UDim2.fromScale(1, 1)
							k = function()
								if J then
									_.Text = "ON"
									_.TextColor3 = Color3.fromRGB(85, 170, 85)
								else
									_.Text = "OFF"
									_.TextColor3 = Color3.fromRGB(170, 60, 60)
								end

								_.TextSize = 18
								TweenService:Create(_, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { TextSize = 13 }):Play()
							end
						else
							l = Instance.new("Frame")
							O = Instance.new("UICorner")
							t = Instance.new("Frame")
							h = Instance.new("UICorner")
							l.Name = "Switch"
							l.Parent = Q
							l.AnchorPoint = Vector2.new(1, 0)
							l.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
							l.BackgroundTransparency = 0.700
							l.BorderColor3 = Color3.fromRGB(0, 0, 0)
							l.BorderSizePixel = 0
							l.Position = UDim2.new(1, -4.0, 0, 4)
							l.Size = UDim2.new(0, 48, 0, 20)
							O.CornerRadius = UDim.new(1, 0)
							O.Parent = l
							t.Name = "ball"
							t.Parent = l
							t.AnchorPoint = Vector2.new(0, 0.5)
							t.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
							t.BorderColor3 = Color3.fromRGB(0, 0, 0)
							t.BorderSizePixel = 0
							t.Position = UDim2.new(0, 2, 0.5, 0)
							t.Size = UDim2.new(0, 16, 0, 16)
							h.CornerRadius = UDim.new(1, 0)
							h.Parent = t
							w.Parent = l
							w.Size = UDim2.fromScale(1, 1)

							local Q = TweenInfo.new(0.3, Enum.EasingStyle.Sine)

							k = function()
								task.spawn(function()
									setthreadidentity(8)

									if J then
										TweenService:Create(l, Q, { BackgroundColor3 = c("dark") }):Play()
										TweenService:Create(t, Q, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
										TweenService:Create(t, Q, { Position = UDim2.new(0, 30, 0.5, 0) }):Play()
									else
										TweenService:Create(l, Q, { BackgroundColor3 = Color3.fromRGB(67, 67, 67) }):Play()
										TweenService:Create(t, Q, { BackgroundColor3 = Color3.fromRGB(62, 62, 62) }):Play()
										TweenService:Create(t, Q, { Position = UDim2.new(0, 2, 0.5, 0) }):Play()
									end
								end)
							end
							V(function()
								if J then
									l.BackgroundColor3 = c("dark")
								end
							end)
							t15[#t15 + 1] = w.InputBegan:Connect(function(Q)
								if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
									TweenService:Create(t, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Size = UDim2.new(0, 16, 0, 10) }):Play()
								end
							end)
							t15[#t15 + 1] = w.InputEnded:Connect(function(Q)
								if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
									TweenService:Create(t, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Size = UDim2.new(0, 16, 0, 16) }):Play()
								end
							end)
						end

						local Q = s.Flags[i]

						function Q:Set(l, O)
							J = l
							s.Flags[i].CurrentValue = J
							k()

							if not O then
								PlaySound("switch")
							end

							task.spawn(function()
								x:SafeCallback(C, p, "toggle", J, O)
							end)
						end

						local p

						if J then
							p = (J ~= nil and J ~= false) and true or nil
						end

						if t13[i] and t13[i].CurrentValue ~= nil and not H.NoSave then
							p = t13[i].CurrentValue
						end

						if p ~= nil then
							Q:Set(p, true)
						end

						t15[#t15 + 1] = w.MouseButton1Click:Connect(function()
							Q:Set(not J)
						end)

						if not J and z then
							k()
						end

						return Q
					end
					function X:CreateButton(H)
						local i = H.Name
						local J = H.Callback or function()
						end

						table.insert(q.Features, i)

						local p = Instance.new("Frame")
						local C = Instance.new("TextLabel")
						local z = Instance.new("UICorner")
						local Q = Instance.new("ImageLabel")
						local w = Instance.new("ImageLabel")

						p.Name = "Button"
						p.Parent = Z
						F(p)
						p.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						p.BackgroundTransparency = 0.450
						p.BorderColor3 = Color3.fromRGB(0, 0, 0)
						p.BorderSizePixel = 0
						p.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						p.ClipsDescendants = true
						C.Parent = p
						C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						C.BackgroundTransparency = 1.000
						C.BorderColor3 = Color3.fromRGB(0, 0, 0)
						C.BorderSizePixel = 0
						C.Position = UDim2.new(0, 10, 0, 0)
						C.Size = UDim2.new(0.5, 0, 0, 32)
						C.Font = Enum.Font.GothamMedium
						C.Text = i
						C.TextColor3 = Color3.fromRGB(199, 199, 199)
						C.TextSize = 12.000
						C.TextXAlignment = Enum.TextXAlignment.Left
						Y(w, H)

						if H.ToolTip then
							local C = v251("info")

							w.Parent = p
							w.AnchorPoint = Vector2.new(1, 0)
							w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							w.BackgroundTransparency = 1.000
							w.BorderColor3 = Color3.fromRGB(0, 0, 0)
							w.BorderSizePixel = 0
							w.Position = UDim2.new(1, -30.0, 0, 6)
							w.Size = UDim2.new(0, 20, 0, 20)
							w.Image = C.id
							w.ImageRectOffset = C.imageRectOffset
							w.ImageRectSize = C.imageRectSize
						end

						z.CornerRadius = UDim.new(0, 5)
						z.Parent = p

						local C = v251("mouse-pointer-2")

						Q.Parent = p
						Q.AnchorPoint = Vector2.new(1, 0)
						Q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Q.BackgroundTransparency = 1.000
						Q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Q.BorderSizePixel = 0
						Q.Position = UDim2.new(1, -4.0, 0, 6)
						Q.Size = UDim2.new(0, 20, 0, 20)
						Q.Image = C.id
						Q.ImageRectOffset = C.imageRectOffset
						Q.ImageRectSize = C.imageRectSize

						local n = Instance.new("TextButton")

						n.Parent = p
						n.Text = ""
						n.BackgroundTransparency = 1
						n.Size = UDim2.new(1, -(H.ToolTip and 57 or 31), 1, 0)
						t15[#t15 + 1] = n.MouseButton1Click:Connect(function()
							task.spawn(function()
								x:SafeCallback(J, i, "button")
							end)
						end)
						t15[#t15 + 1] = n.MouseButton1Down:Connect(function()
						end)
						t15[#t15 + 1] = n.MouseButton1Up:Connect(function()
						end)
						t15[#t15 + 1] = n.InputBegan:Connect(function(n)
							if n.UserInputType == Enum.UserInputType.Touch or n.UserInputType == Enum.UserInputType.MouseButton1 then
								local H = p.AbsolutePosition
								local i = n.Position.X - H.X
								local J = n.Position.Y - H.Y

								K(p, i, J)
							end
						end)
					end
					function X:CreateSlider(n)
						local H = n.Name
						local i = n.Range
						local J = i[1]
						local p = i[2]
						local i = n.CurrentValue
						local C = n.Flag

						s.Flags[C] = { CurrentValue = i }

						local z = n.Callback or function()
						end
						local Q = n.Suffix or ""
						local w = n.Increment
						local k = n.FormatType

						table.insert(q.Features, H)

						local l = Instance.new("Frame")
						local O = Instance.new("TextLabel")
						local t = Instance.new("TextBox")
						local h = Instance.new("UICorner")
						local _ = Instance.new("Frame")
						local L = Instance.new("UICorner")
						local M = Instance.new("Frame")
						local u = Instance.new("UICorner")
						local U = Instance.new("Frame")
						local T = Instance.new("UICorner")

						l.Name = "Slider"
						l.Parent = Z
						F(l)
						l.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						l.BackgroundTransparency = 0.450
						l.BorderColor3 = Color3.fromRGB(0, 0, 0)
						l.BorderSizePixel = 0
						l.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						O.Name = "SliderName"
						O.Parent = l
						O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						O.BackgroundTransparency = 1.000
						O.BorderColor3 = Color3.fromRGB(0, 0, 0)
						O.BorderSizePixel = 0
						O.Position = UDim2.new(0, 10, 0, 0)
						O.Size = UDim2.new(0.5, -40.0, 0, 32)
						O.Font = Enum.Font.GothamMedium
						O.Text = H
						O.TextColor3 = Color3.fromRGB(199, 199, 199)
						O.TextSize = 12.000
						O.TextXAlignment = Enum.TextXAlignment.Left
						O.RichText = true
						Y(O, n)
						t.Name = "ValueBox"
						t.Parent = l
						t.BackgroundTransparency = 1
						t.BorderSizePixel = 0
						t.AutomaticSize = Enum.AutomaticSize.X
						t.Size = UDim2.new(0, 24, 0, 32)
						t.Font = Enum.Font.GothamMedium
						t.TextSize = 12.000
						t.TextColor3 = Color3.fromRGB(255, 255, 255)
						t.TextXAlignment = Enum.TextXAlignment.Left
						t.ClearTextOnFocus = false
						t.RichText = true
						t.Text = ""
						h.CornerRadius = UDim.new(0, 5)
						h.Parent = l
						_.Name = "Bar"
						_.Parent = l
						_.AnchorPoint = Vector2.new(1, 0)
						_.BackgroundColor3 = Color3.fromRGB(109, 109, 129)
						_.BackgroundTransparency = 0.500
						_.BorderColor3 = Color3.fromRGB(0, 0, 0)
						_.BorderSizePixel = 0
						_.Position = UDim2.new(1, -16.0, 0, 13)
						_.Size = UDim2.new(0, 120, 0, 6)
						L.CornerRadius = UDim.new(1, 0)
						L.Parent = _
						M.Name = "Ball"
						M.Parent = _
						M.AnchorPoint = Vector2.new(0.5, 0.5)
						M.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						M.BorderColor3 = Color3.fromRGB(0, 0, 0)
						M.BorderSizePixel = 0
						M.Position = UDim2.new(0.5, 0, 0.5, 0)
						M.Size = UDim2.new(0, 16, 0, 16)
						M.ZIndex = 2
						u.CornerRadius = UDim.new(1, 0)
						u.Parent = M
						U.Name = "Fill"
						U.Parent = _
						y(U, "BackgroundColor3", "mid")
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.Size = UDim2.new(0.5, 0, 1, 0)
						T.CornerRadius = UDim.new(1, 0)
						T.Parent = U

						local l = Instance.new("UIDragDetector")

						l.Parent = _
						l.ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomOffset
						l:Clone().Parent = M

						local l = UDim2.new(0, 120, 0, 6)
						local h = UDim2.new(0, 120, 0, 9)
						local L = UDim2.new(0, 16, 0, 16)
						local u = UDim2.new(0, 20, 0, 20)
						local T = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						local N = J < 0
						local E = true

						local function S()
							t.Position = UDim2.new(0, 10 + O.TextBounds.X + 4, 0, 0)
						end

						S()
						t15[#t15 + 1] = O:GetPropertyChangedSignal("TextBounds"):Connect(S)

						local function O(S)
							return (S - J) / (p - J)
						end
						local function S(f)
							local v689 = f * (p - J) + J
							local f = math.round(v689 / w) * w
							local v691 = math.max(0, math.ceil(-math.log10(w)))

							return tonumber(string.format("%." .. v691 .. "f", math.clamp(f, J, p)))
						end
						local function w(f)
							return "<font color=\"" .. m(c("mid")) .. "\">" .. (k == "time" and truncatetime(f) or f) .. "<font color=\"rgb(141, 141, 141)\">" .. Q .. "</font></font>"
						end
						local function m()
							t.RichText = true
							t.Text = w(s.Flags[C].CurrentValue)
						end
						local function Q(w, k)
							if not t:IsFocused() then
								m()
							end

							local f = UDim2.new(w, 0, 1, 0)
							local uDim2 = UDim2.new(w, 0, 0.5, 0)

							if k then
								TweenService:Create(U, T, { Size = f }):Play()
								TweenService:Create(M, T, { Position = uDim2 }):Play()
							else
								U.Size = f
								M.Position = uDim2
							end
						end

						if t13[C] then
							i = t13[C].CurrentValue
							s.Flags[C] = { CurrentValue = i }
							task.spawn(function()
								x:SafeCallback(z, H, "slider", i)
							end)
						end

						Q(O(i), false)

						local i = false

						local function w(k, U)
							if U then
								k = math.clamp(k, J, p)
							else
								k = S(O(math.clamp(k, J, p)))
							end

							if k ~= s.Flags[C].CurrentValue then
								s.Flags[C].CurrentValue = k
								Q(O(k), true)
								PlaySound("tick", { Volume = 0.1 })
								x:SafeCallback(z, H, "slider", k)
							end
						end
						local function H(J)
							local p = _.AbsolutePosition.X
							local z = _.AbsoluteSize.X
							local Q = math.clamp((J - p) / z, 0, 1)

							w(S(Q))
						end

						t15[#t15 + 1] = t.Focused:Connect(function()
							t.RichText = false
							t.Text = tostring(s.Flags[C].CurrentValue)
						end)
						t15[#t15 + 1] = t:GetPropertyChangedSignal("Text"):Connect(function()
							if not t:IsFocused() or t.RichText then
								return
							end

							local J = t.Text
							local p = N and J:sub(1, 1) == "-"

							J = J:gsub(E and "[^%d%.]" or "[^%d]", "")

							if E then
								local C = J:find(".", 1, true)

								if C then
									J = J:sub(1, C) .. J:sub(C + 1):gsub("%.", "")
								end
							end

							if p then
								J = "-" .. J
							end

							if J ~= t.Text then
								t.Text = J
							end
						end)
						t15[#t15 + 1] = t.FocusLost:Connect(function()
							local J = tonumber(t.Text)

							if J then
								w(J, not n.StrictIncrement)
							end

							m()
						end)

						local n = false
						local J = false

						t15[#t15 + 1] = _.MouseEnter:Connect(function()
							n = true
							TweenService:Create(_, T, { Size = h }):Play()
							TweenService:Create(M, T, { Size = u }):Play()
						end)
						t15[#t15 + 1] = _.MouseLeave:Connect(function()
							n = false

							if not J and not i then
								TweenService:Create(_, T, { Size = l }):Play()
								TweenService:Create(M, T, { Size = L }):Play()
							end
						end)
						t15[#t15 + 1] = M.MouseEnter:Connect(function()
							J = true
							TweenService:Create(_, T, { Size = h }):Play()
							TweenService:Create(M, T, { Size = u }):Play()
						end)
						t15[#t15 + 1] = M.MouseLeave:Connect(function()
							J = false

							if not n and not i then
								TweenService:Create(_, T, { Size = l }):Play()
								TweenService:Create(M, T, { Size = L }):Play()
							end
						end)
						t15[#t15 + 1] = M.InputBegan:Connect(function(p)
							if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
								i = true
								H(p.Position.X)
							end
						end)
						t15[#t15 + 1] = _.InputBegan:Connect(function(p)
							if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
								i = true
								H(p.Position.X)
							end
						end)
						t15[#t15 + 1] = UserInputService.InputChanged:Connect(function(p)
							if i and (p.UserInputType == Enum.UserInputType.MouseMovement or p.UserInputType == Enum.UserInputType.Touch) then
								H(p.Position.X)
							end
						end)
						t15[#t15 + 1] = UserInputService.InputEnded:Connect(function(H)
							if i and (H.UserInputType == Enum.UserInputType.MouseButton1 or H.UserInputType == Enum.UserInputType.Touch) then
								i = false

								if H.UserInputType == Enum.UserInputType.Touch or (not n and not J) then
									TweenService:Create(_, T, { Size = l }):Play()
									TweenService:Create(M, T, { Size = L }):Play()
								end
							end
						end)
						V(function()
							if not t:IsFocused() then
								m()
							end
						end)
					end
					function X:CreateDropdown(n)
						local H = n.Name
						local m = n.Flag
						local i = deepcopy(n.CurrentOption)
						local J = deepcopy(n.Options)
						local p = n.MultipleOptions
						local C = n.Searchable == true
						local z = C and 28 or 0
						local Q = n.Callback or function()
						end

						table.insert(q.Features, H)

						local w = Instance.new("Frame")
						local k = Instance.new("TextLabel")
						local l = Instance.new("UICorner")
						local O = Instance.new("ImageLabel")
						local t = Instance.new("ScrollingFrame")
						local h = Instance.new("UIListLayout")

						w.Name = "Dropdown"
						w.Parent = Z
						F(w)
						w.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						w.BackgroundTransparency = 0.450
						w.BorderColor3 = Color3.fromRGB(0, 0, 0)
						w.BorderSizePixel = 0
						w.ClipsDescendants = true
						w.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						w.ClipsDescendants = true
						k.Name = "SliderName"
						k.Parent = w
						k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						k.BackgroundTransparency = 1.000
						k.BorderColor3 = Color3.fromRGB(0, 0, 0)
						k.BorderSizePixel = 0
						k.Position = UDim2.new(0, 10, 0, 0)
						k.Size = UDim2.new(0.5, 0, 0, 32)
						k.Font = Enum.Font.GothamMedium
						k.TextColor3 = Color3.fromRGB(199, 199, 199)
						k.TextSize = 12.000
						k.TextXAlignment = Enum.TextXAlignment.Left
						k.RichText = true
						Y(k, n)
						l.CornerRadius = UDim.new(0, 5)
						l.Parent = w
						O.Parent = w
						O.AnchorPoint = Vector2.new(1, 0)
						O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						O.BackgroundTransparency = 1.000
						O.BorderColor3 = Color3.fromRGB(0, 0, 0)
						O.BorderSizePixel = 0
						O.Position = UDim2.new(1, -4.0, 0, 6)
						O.Size = UDim2.new(0, 20, 0, 20)
						O.Image = "rbxassetid://130996747355335"
						t.Parent = w
						t.Active = true
						t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						t.BackgroundTransparency = 1.000
						t.BorderColor3 = Color3.fromRGB(0, 0, 0)
						t.BorderSizePixel = 0
						t.Position = UDim2.new(0, 10, 0, 32 + z)
						t.Size = UDim2.new(1, -20.0, 1, -(42 + z))
						t.ScrollBarThickness = 8
						t.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
						t.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
						t.AutomaticCanvasSize = Enum.AutomaticSize.Y
						t.CanvasSize = UDim2.new(0, 0, 0, 0)
						t.Visible = false
						h.Parent = t
						h.SortOrder = Enum.SortOrder.LayoutOrder
						h.Padding = UDim.new(0, 4)
						h.HorizontalAlignment = Enum.HorizontalAlignment.Left

						local function n(l)
							local O = {}

							for _, L in pairs(l) do
								if L == true then
									table.insert(O, _)
								end
							end

							return O
						end
						local function l(l)
							local O = {}

							for _, _ in pairs(l) do
								O[_] = true
							end

							return O
						end
						local function l(O, _)
							if type(O) ~= type(_) then
								return false
							end

							if type(O) ~= "table" then
								return O == _
							end

							for L, M in pairs(O) do
								if not l(M, _[L]) then
									return false
								end
							end

							for L in pairs(_) do
								if O[L] == nil then
									return false
								end
							end

							return true
						end

						if (t13[m] or {}).CurrentOption and not l(t13[m].CurrentOption, J) then
							i = t13[m].CurrentOption
							task.spawn(function()
								x:SafeCallback(Q, H, "dropdown", i, true)
							end)
						end

						local l = {}

						for O, O in pairs(J) do
							l[O] = false
						end

						for O, O in pairs(i) do
							l[O] = true
						end

						s.Flags[m] = { CurrentOption = n(l) }

						local i = Instance.new("TextButton")

						i.Parent = w
						i.Text = ""
						i.ZIndex = 2
						i.BackgroundTransparency = 1
						i.BorderSizePixel = 0
						i.Size = UDim2.new(1, 0, 0, 32)

						local O

						if #J > 3 then
							O = R(t)
							O.Visible = false
						end

						local R, _, L

						local function M()
							if not _ then
								return
							end

							local u = {}

							for U in _.Text:lower():gmatch("%S+") do
								u[#u + 1] = U
							end

							for U, U in pairs(t:GetChildren()) do
								if U.Name == "Option" then
									local T = U.OName.Text:lower()
									local N = true

									for E, E in ipairs(u) do
										if not T:find(E, 1, true) then
											N = false

											break
										end
									end

									U.Visible = N
								end
							end

							t.CanvasPosition = Vector2.new(0, 0)
						end

						if C then
							R = Instance.new("Frame")
							R.Name = "SearchFrame"
							R.Parent = w
							R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							R.BackgroundTransparency = 0.5
							R.BorderSizePixel = 0
							R.Position = UDim2.new(0, 10, 0, 36)
							R.Size = UDim2.new(1, -20.0, 0, 22)
							R.ZIndex = 2
							R.Visible = false

							local C = Instance.new("UICorner")

							C.CornerRadius = UDim.new(0, 5)
							C.Parent = R
							L = Instance.new("UIStroke")
							L.Color = Color3.fromRGB(70, 70, 70)
							L.Thickness = 1
							L.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							L.Parent = R
							_ = Instance.new("TextBox")
							_.Name = "SearchBox"
							_.Parent = R
							_.BackgroundTransparency = 1
							_.BorderSizePixel = 0
							_.Position = UDim2.new(0, 8, 0, 0)
							_.Size = UDim2.new(1, -16.0, 1, 0)
							_.ZIndex = 3
							_.ClearTextOnFocus = false
							_.Font = Enum.Font.GothamMedium
							_.PlaceholderText = "Search..."
							_.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
							_.Text = ""
							_.TextColor3 = Color3.fromRGB(199, 199, 199)
							_.TextSize = 12.000
							_.TextXAlignment = Enum.TextXAlignment.Left
							t15[#t15 + 1] = _:GetPropertyChangedSignal("Text"):Connect(M)
							t15[#t15 + 1] = _.Focused:Connect(function()
								TweenService:Create(L, TweenInfo.new(0.15), { Color = c("mid") }):Play()
							end)
							t15[#t15 + 1] = _.FocusLost:Connect(function()
								TweenService:Create(L, TweenInfo.new(0.15), { Color = Color3.fromRGB(70, 70, 70) }):Play()
							end)
							V(function()
								if _:IsFocused() then
									L.Color = c("mid")
								end
							end)
						end

						local C = false

						t15[#t15 + 1] = i.MouseButton1Click:Connect(function(i)
							C = not C
							PlaySound("click")

							if O then
								O.Visible = C
							end

							t.Visible = C

							if R then
								R.Visible = C
							end

							if C then
								local R = math.clamp(38 + (#J * (28 + h.Padding.Offset)), 0, 38 + (3 * (28 + h.Padding.Offset))) + z

								TweenService:Create(w, TweenInfo.new(0.3), { Size = UDim2.new(w.Size.X.Scale, w.Size.X.Offset, w.Size.Y.Scale, R) }):Play()
							else
								if _ then
									_:ReleaseFocus()
									_.Text = ""
								end

								t.CanvasPosition = Vector2.new(0, 0)
								TweenService:Create(w, TweenInfo.new(0.3), { Size = UDim2.new(w.Size.X.Scale, w.Size.X.Offset, w.Size.Y.Scale, 32) }):Play()
							end
						end)

						local R = { __DropdownOptions = {} }

						local function i(C)
							local z = {}

							for w, O in pairs(C) do
								if O == true then
									table.insert(z, tostring(w))
								end
							end

							return #z == 1 and z[1] or ((#z == 0 and "no" or #z) .. " options")
						end

						function R:SetTitle(C)
							H = C
							k.Text = H .. " <font color=\"rgb(100, 100, 100)\">" .. i(l) .. "</font>"
						end

						R:SetTitle(H)

						local function i(C)
							J = C

							for z, z in pairs(t:GetChildren()) do
								if z.Name == "Option" then
									z:Destroy()
								end
							end

							for z, z in pairs(C) do
								local C = Instance.new("Frame")
								local w = Instance.new("UICorner")
								local k = Instance.new("TextLabel")
								local O = Instance.new("TextLabel")

								C.Name = "Option"
								C.Parent = t
								C.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
								C.BackgroundTransparency = 0.800
								C.BorderColor3 = Color3.fromRGB(0, 0, 0)
								C.BorderSizePixel = 0
								C.Size = UDim2.new(1, 0, 0, 28)
								C.ClipsDescendants = true
								w.CornerRadius = UDim.new(0, 5)
								w.Parent = C
								k.Name = "OName"
								k.Parent = C
								k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								k.BackgroundTransparency = 1.000
								k.BorderColor3 = Color3.fromRGB(0, 0, 0)
								k.BorderSizePixel = 0
								k.Position = UDim2.new(0, 10, 0, 0)
								k.Size = UDim2.new(1, -20.0, 1, 0)
								k.ZIndex = 2
								k.Font = Enum.Font.GothamMedium
								k.Text = tostring(z)
								k.TextColor3 = Color3.fromRGB(199, 199, 199)
								k.TextSize = 12.000
								k.TextXAlignment = Enum.TextXAlignment.Left
								O.Name = "ONameShadow"
								O.Parent = C
								O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								O.BackgroundTransparency = 1.000
								O.BorderColor3 = Color3.fromRGB(0, 0, 0)
								O.BorderSizePixel = 0
								O.Position = UDim2.new(0, 11, 0, 1)
								O.Size = UDim2.new(1, -20.0, 1, 0)
								O.Font = Enum.Font.GothamMedium
								O.Text = tostring(z)
								O.TextColor3 = Color3.fromRGB(0, 0, 0)
								O.TextSize = 12.000
								O.TextXAlignment = Enum.TextXAlignment.Left

								local w = Instance.new("TextButton")

								w.Parent = C
								w.Text = ""
								w.ZIndex = 2
								w.BackgroundTransparency = 1
								w.BorderSizePixel = 0
								w.Size = UDim2.fromScale(1, 1)
								table.insert(R.__DropdownOptions, { Title = setmetatable({}, { __newindex = function(h, h, _)
									if h == "Text" then
										k.Text = _
										O.Text = _
									end
								end }) })

								local O = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

								t15[#t15 + 1] = w.MouseButton1Click:Connect(function()
									if l[z] == true and not p then
										return
									end

									l[z] = not l[z]

									if not p then
										for p, h in pairs(l) do
											if p ~= z then
												l[p] = false
											end
										end

										for p, p in pairs(t:GetChildren()) do
											if p.Name == "Option" then
												TweenService:Create(p, O, { BackgroundColor3 = Color3.fromRGB(100, 100, 100) }):Play()
												TweenService:Create(p.OName, O, { TextColor3 = Color3.fromRGB(199, 199, 199) }):Play()
											end
										end
									end

									if l[z] then
										TweenService:Create(C, O, { BackgroundColor3 = c("mid") }):Play()
										TweenService:Create(k, O, { TextColor3 = c("mid") }):Play()
									else
										TweenService:Create(C, O, { BackgroundColor3 = Color3.fromRGB(100, 100, 100) }):Play()
										TweenService:Create(k, O, { TextColor3 = Color3.fromRGB(199, 199, 199) }):Play()
									end

									R:SetTitle(H)
									s.Flags[m] = { CurrentOption = n(l) }
									task.spawn(function()
										x:SafeCallback(Q, H, "dropdown", n(l))
									end)
								end)
								t15[#t15 + 1] = w.InputBegan:Connect(function(n)
									if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
										local H = C.AbsolutePosition
										local m = n.Position.X - H.X
										local p = n.Position.Y - H.Y

										K(C, m, p)
									end
								end)
								V(function()
									if l[z] then
										C.BackgroundColor3 = c("mid")
										k.TextColor3 = c("mid")
									end
								end)
							end

							M()
						end

						i(J)

						function R:Refresh(n)
							i(n)
						end

						return R
					end
					function X:CreateKeybind(n)
						local H = n.CurrentKeybind
						local R = n.Name
						local m = n.Callback or function()
						end

						table.insert(q.Features, R)

						if n.Flag and t13[Flag] then
							H = t13[Flag]
						end

						local V = Instance.new("Frame")
						local K = Instance.new("TextLabel")
						local i = Instance.new("UICorner")
						local J = Instance.new("Frame")
						local p = Instance.new("UICorner")
						local C = Instance.new("TextButton")
						local z = Instance.new("ImageLabel")

						V.Name = "Keybind"
						V.Parent = Z
						F(V)
						V.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						V.BackgroundTransparency = 0.450
						V.BorderColor3 = Color3.fromRGB(0, 0, 0)
						V.BorderSizePixel = 0
						V.ClipsDescendants = true
						V.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						K.Name = "KeybindName"
						K.Parent = V
						K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						K.BackgroundTransparency = 1.000
						K.BorderColor3 = Color3.fromRGB(0, 0, 0)
						K.BorderSizePixel = 0
						K.Position = UDim2.new(0, 10, 0, 0)
						K.Size = UDim2.new(0.5, 0, 0, 32)
						K.Font = Enum.Font.GothamMedium
						K.Text = R
						K.TextColor3 = Color3.fromRGB(199, 199, 199)
						K.TextSize = 12.000
						K.TextXAlignment = Enum.TextXAlignment.Left
						Y(K, n)
						i.CornerRadius = UDim.new(0, 5)
						i.Parent = V
						J.Parent = V
						J.AnchorPoint = Vector2.new(1, 0)
						J.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
						J.BackgroundTransparency = 0.700
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(1, -4.0, 0, 4)
						J.Size = UDim2.new(0, 30, 0, 20)
						J.ClipsDescendants = true
						p.CornerRadius = UDim.new(0, 5)
						p.Parent = J
						C.Parent = J
						C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						C.BackgroundTransparency = 1.000
						C.BorderColor3 = Color3.fromRGB(0, 0, 0)
						C.BorderSizePixel = 0
						C.Size = UDim2.new(1, 0, 1, 0)
						C.Font = Enum.Font.GothamMedium
						C.Text = H or ""
						C.TextColor3 = Color3.fromRGB(255, 255, 255)
						C.TextSize = 14.000
						C.ClipsDescendants = true
						z.Parent = J
						z.AnchorPoint = Vector2.new(0.5, 0)
						z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						z.BackgroundTransparency = 1.000
						z.BorderColor3 = Color3.fromRGB(0, 0, 0)
						z.BorderSizePixel = 0
						z.Position = UDim2.new(0.5, 0, 0, 2)
						z.Size = UDim2.new(0, 16, 0, 16)
						z.Image = "rbxassetid://121142147574111"
						z.Visible = false

						if H == nil then
							z.Visible = true
						end

						local n = { KeyCode = H, Callback = m, Pressable = true }

						table.insert(s.Keybinds, n)

						local H = false
						local R = false
						local m = nil
						local V = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						local K = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

						local function i()
							if m then
								task.cancel(m)
							end

							TweenService:Create(J, V, { BackgroundColor3 = c("dark2"), BackgroundTransparency = 0.3 }):Play()
							TweenService:Create(C, V, { TextColor3 = c("mid") }):Play()
							m = task.spawn(function()
								while R do
									TweenService:Create(J, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { BackgroundTransparency = 0.1 }):Play()
									task.wait(0.5)
									TweenService:Create(J, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { BackgroundTransparency = 0.4 }):Play()
									task.wait(0.5)
								end
							end)
						end
						local function p(Q)
							if m then
								task.cancel(m)
								m = nil
							end

							TweenService:Create(J, V, { BackgroundColor3 = Color3.fromRGB(60, 180, 80), BackgroundTransparency = 0.2 }):Play()
							TweenService:Create(C, V, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
							task.wait()

							local Q = math.max(30, C.TextBounds.X + 16)
							local w = UDim2.new(0, Q + 8, 0, 24)
							local k = UDim2.new(0, Q, 0, 20)

							TweenService:Create(J, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = w }):Play()
							task.delay(0.1, function()
								TweenService:Create(J, K, { Size = k }):Play()
							end)
							task.delay(0.4, function()
								TweenService:Create(J, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(53, 53, 53), BackgroundTransparency = 0.700 }):Play()
							end)
						end
						local function K()
							if m then
								task.cancel(m)
								m = nil
							end

							TweenService:Create(J, V, { BackgroundColor3 = Color3.fromRGB(53, 53, 53), BackgroundTransparency = 0.700 }):Play()
							TweenService:Create(C, V, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
						end

						t15[#t15 + 1] = C.MouseButton1Click:Connect(function()
							if H then
								return
							end

							H = true
							n.Pressable = false
							z.Visible = false
							C.Text = "..."
							R = true
							i()
							task.wait(0.1)
							H = false
						end)
						t15[#t15 + 1] = UserInputService.InputBegan:Connect(function(H, m)
							if u48 then
								return
							end

							if m then
								return
							end

							if R and H.KeyCode.Name ~= "Unknown" then
								local m = n.KeyCode

								n.KeyCode = H.KeyCode.Name
								R = false

								if m == n.KeyCode then
									n.KeyCode = nil
									z.Visible = true
									C.Text = ""
									K()

									return
								end

								C.Text = n.KeyCode
								p(n.KeyCode)
							end

							task.wait(0.1)
							n.Pressable = true
						end)

						local function n()
							local H = math.max(30, C.TextBounds.X + 16)

							TweenService:Create(J, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, H, 0, 20) }):Play()
						end

						t15[#t15 + 1] = RunService.RenderStepped:Connect(n)
					end
					function X:CreateInput(n)
						local H = n.Name
						local R = n.Flag
						local m = n.RemoveTextAfterFocusLost
						local m = n.CurrentValue
						local V = n.PlaceholderText
						local K = n.Callback or function()
						end

						table.insert(q.Features, H)
						s.Flags[R] = { CurrentValue = m }

						local i = Instance.new("Frame")
						local J = Instance.new("TextLabel")
						local p = Instance.new("UICorner")
						local C = Instance.new("Frame")
						local z = Instance.new("UICorner")
						local Q = Instance.new("TextLabel")
						local w = Instance.new("ImageLabel")
						local k = Instance.new("TextBox")

						i.Name = "Input"
						i.Parent = Z
						F(i)
						i.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						i.BackgroundTransparency = 0.450
						i.BorderColor3 = Color3.fromRGB(0, 0, 0)
						i.BorderSizePixel = 0
						i.ClipsDescendants = true
						i.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						J.Name = "KeybindName"
						J.Parent = i
						J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						J.BackgroundTransparency = 1.000
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(0, 10, 0, 0)
						J.Size = UDim2.new(0.5, 0, 0, 32)
						J.Font = Enum.Font.GothamMedium
						J.Text = H
						J.TextColor3 = Color3.fromRGB(199, 199, 199)
						J.TextSize = 12.000
						J.TextXAlignment = Enum.TextXAlignment.Left
						Y(J, n)
						p.CornerRadius = UDim.new(0, 5)
						p.Parent = i
						C.Parent = i
						C.AnchorPoint = Vector2.new(1, 0)
						C.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
						C.BackgroundTransparency = 0.700
						C.BorderColor3 = Color3.fromRGB(0, 0, 0)
						C.BorderSizePixel = 0
						C.ClipsDescendants = true
						C.Position = UDim2.new(1, -4.0, 0, 4)
						C.Size = UDim2.new(0, 0, 0, 20)
						z.CornerRadius = UDim.new(0, 5)
						z.Parent = C
						Q.Parent = C
						Q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Q.BackgroundTransparency = 1.000
						Q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Q.BorderSizePixel = 0
						Q.Size = UDim2.new(1, 0, 1, 0)
						Q.Font = Enum.Font.GothamMedium
						Q.Text = ""
						Q.TextColor3 = Color3.fromRGB(255, 255, 255)
						Q.TextSize = 14.000
						w.Parent = C
						w.AnchorPoint = Vector2.new(1, 0)
						w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						w.BackgroundTransparency = 1.000
						w.BorderColor3 = Color3.fromRGB(0, 0, 0)
						w.BorderSizePixel = 0
						w.Position = UDim2.new(1, -8.0, 0, 2)
						w.Size = UDim2.new(0, 16, 0, 16)
						w.Image = "rbxassetid://76137750753739"
						y(w, "ImageColor3", "light")
						k.Parent = C
						k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						k.BackgroundTransparency = 1.000
						k.BorderColor3 = Color3.fromRGB(0, 0, 0)
						k.BorderSizePixel = 0
						k.ClipsDescendants = true
						k.Position = UDim2.new(0, 7, 0, 0)
						k.Size = UDim2.new(1, -40.0, 1, 0)
						k.Font = Enum.Font.GothamMedium
						k.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
						k.PlaceholderText = V or "Input Text"
						k.Text = m or ""
						y(k, "TextColor3", "light")
						k.TextSize = 12.000
						k.TextXAlignment = Enum.TextXAlignment.Left
						k.ClearTextOnFocus = n.ClearTextOnFocus
						t15[#t15 + 1] = k.FocusLost:Connect(function()
							local m = k.Text

							s.Flags[R] = { CurrentValue = m }

							if n.RemoveTextAfterFocusLost then
								k.Text = ""
							end

							task.spawn(function()
								x:SafeCallback(K, H, "input", m)
							end)
						end)

						if t13[R] and not n.DontSave then
							s.Flags[R] = t13[R]
							k.Text = tostring(t13[R].CurrentValue)
							task.spawn(function()
								x:SafeCallback(K, H, "input", k.Text, true)
							end)
						end

						t15[#t15 + 1] = RunService.RenderStepped:Connect(function()
							local n = math.max(30, k.TextBounds.X + 50)

							TweenService:Create(C, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, math.clamp(n, 0, 160), 0, 20) }):Play()
						end)

						return { Set = function(n, n)
							k.Text = tostring(n or "")
							s.Flags[R] = { CurrentValue = k.Text }
						end }
					end
					function X:CreateColorPicker(n)
						local I = n.Name
						local H = n.Color
						local R = n.Flag
						local m = n.Callback or function()
						end

						local function V(y)
							local K, i, J = unpack(y:split("/"))

							return Color3.fromHSV(tonumber(K), tonumber(i), tonumber(J))
						end

						if t13[R] and t13[R].Color and not n.DontSave then
							H = V(t13[R].Color)
						end

						s.Flags[R] = { Color = H }
						table.insert(q.Features, I)

						local q = Instance.new("Frame")
						local V = Instance.new("TextLabel")
						local y = Instance.new("UICorner")
						local K = Instance.new("Frame")
						local i = Instance.new("UICorner")
						local J = Instance.new("Frame")
						local p = Instance.new("UICorner")
						local C = Instance.new("Frame")
						local z = Instance.new("UIGradient")
						local Q = Instance.new("UICorner")
						local w = Instance.new("Frame")
						local k = Instance.new("UICorner")
						local l = Instance.new("UIGradient")
						local O = Instance.new("Frame")
						local t = Instance.new("UICorner")
						local h = Instance.new("UIGradient")
						local _ = Instance.new("Frame")
						local L = Instance.new("UICorner")
						local M = Instance.new("TextBox")
						local u = Instance.new("TextLabel")
						local U = Instance.new("Frame")
						local T = Instance.new("UICorner")
						local N = Instance.new("TextBox")
						local E = Instance.new("TextLabel")
						local S = Instance.new("Frame")
						local f = Instance.new("UICorner")
						local TextBox = Instance.new("TextBox")
						local TextLabel = Instance.new("TextLabel")

						q.Name = "Colorpicker"
						q.Parent = Z
						F(q)
						q.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						q.BackgroundTransparency = 0.450
						q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						q.BorderSizePixel = 0
						q.ClipsDescendants = true
						q.Size = UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						V.Name = "SliderName"
						V.Parent = q
						V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						V.BackgroundTransparency = 1.000
						V.BorderColor3 = Color3.fromRGB(0, 0, 0)
						V.BorderSizePixel = 0
						V.Position = UDim2.new(0, 10, 0, 0)
						V.Size = UDim2.new(0.5, 0, 0, 32)
						V.Font = Enum.Font.GothamMedium
						V.Text = I
						V.TextColor3 = Color3.fromRGB(199, 199, 199)
						V.TextSize = 12.000
						V.TextXAlignment = Enum.TextXAlignment.Left
						Y(V, n)
						y.CornerRadius = UDim.new(0, 5)
						y.Parent = q
						K.Name = "ColorIndicatorBackground"
						K.Parent = q
						K.AnchorPoint = Vector2.new(1, 0.5)
						K.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						K.BackgroundTransparency = 0.300
						K.BorderColor3 = Color3.fromRGB(0, 0, 0)
						K.BorderSizePixel = 0
						K.Position = UDim2.new(1, -4.0, 0, 16)
						K.Size = UDim2.new(0, 50, 0, 20)
						i.CornerRadius = UDim.new(0, 5)
						i.Parent = K
						J.Name = "ColorIndicator"
						J.Parent = q
						J.AnchorPoint = Vector2.new(1, 0.5)
						J.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(1, -6.0, 0, 16)
						J.Size = UDim2.new(0, 46, 0, 16)
						p.CornerRadius = UDim.new(0, 4)
						p.Parent = J
						C.Name = "ColorSlider"
						C.Parent = q
						C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						C.BorderColor3 = Color3.fromRGB(27, 42, 53)
						C.ClipsDescendants = true
						C.Position = UDim2.new(0, 10, 0, 120)
						C.Size = UDim2.new(0, 173, 0, 12)
						z.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)), ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)), ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0)) })
						z.Parent = C
						Q.CornerRadius = UDim.new(0, 6)
						Q.Parent = C
						w.Name = "Base"
						w.Parent = q
						w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						w.BorderColor3 = Color3.fromRGB(0, 0, 0)
						w.BorderSizePixel = 0
						w.Position = UDim2.new(0, 10, 0, 33)
						w.Size = UDim2.new(0, 173, 0, 80)
						k.CornerRadius = UDim.new(0, 6)
						k.Parent = w

						local Y = Instance.new("Frame")
						local V = Instance.new("UICorner")

						Y.Name = "HueThumb"
						Y.Parent = C
						Y.AnchorPoint = Vector2.new(0.5, 0.5)
						Y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Y.BorderSizePixel = 0
						Y.Size = UDim2.new(0, 6, 0, 6)
						Y.ZIndex = 10
						Y.ClipsDescendants = false
						V.CornerRadius = UDim.new(1, 0)
						V.Parent = Y

						local V = Instance.new("UIStroke")

						V.Color = Color3.fromRGB(0, 0, 0)
						V.Thickness = 1
						V.Parent = Y

						local V = Instance.new("Frame")
						local y = Instance.new("UICorner")

						V.Name = "ColorThumb"
						V.Parent = O
						V.AnchorPoint = Vector2.new(0.5, 0.5)
						V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						V.BorderColor3 = Color3.fromRGB(0, 0, 0)
						V.BorderSizePixel = 0
						V.Size = UDim2.fromOffset(6, 6)
						V.ZIndex = 10
						V.ClipsDescendants = false
						y.CornerRadius = UDim.new(1, 0)
						y.Parent = V

						local y = Instance.new("UIStroke")

						y.Color = Color3.fromRGB(0, 0, 0)
						y.Thickness = 1
						y.Parent = V

						local function y(i)
							local p = C.AbsolutePosition.X
							local z = C.AbsoluteSize.X
							local Q = math.clamp((i - p) / z, 0, 1)

							return Q
						end
						local function i(p, z)
							local Q = O.AbsolutePosition.X
							local k = O.AbsoluteSize.X
							local Y5 = math.clamp((p - Q) / k, 0, 1)
							local p = O.AbsolutePosition.Y
							local Q = O.AbsoluteSize.Y
							local k = math.clamp((z - p) / Q, 0, 1)

							return Y5, k
						end

						local p
						local z, Q, k = H:ToHSV()

						V.Position = UDim2.fromScale(1 - k, 1 - Q)
						Q = 1
						k = 1
						l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(z, Q, k)) })
						l.Rotation = 270
						l.Parent = w
						p = z
						Y.Position = UDim2.fromScale(z, 0.5)

						local H
						local z
						local Q

						local function k(Y5, p33, W5, p34, P5)
							if not (W5 and p34) then
								W5, p34 = i(Y5, p33)
							end

							TweenService:Create(V, TweenInfo.new(0.1), { Position = UDim2.fromScale(W5, p34) }):Play()

							local i = Color3.fromHSV(p, 1 - p34, 1 - W5)

							K.BackgroundColor3 = i
							J.BackgroundColor3 = i

							local K = tostring(i)

							TextBox.Text = string.format("%s, %s, %s", math.floor(tonumber(K:split(", ")[1]) * 360), math.floor(tonumber(K:split(", ")[2]) * 255), math.floor(tonumber(K:split(", ")[3]) * 255))

							local K, J, Y5 = math.floor((i.R * 255) + 0.5), math.floor((i.G * 255) + 0.5), math.floor((i.B * 255) + 0.5)

							N.Text = string.format("%s, %s, %s", K, J, Y5)
							M.Text = string.format("#%02x%02x%02x", K, J, Y5)
							H = M.Text
							z = N.Text
							Q = TextBox.Text
							s.Flags[R] = { Color = i }

							if not P5 then
								task.spawn(function()
									x:SafeCallback(m, I, "colorpicker", i)
								end)
							end
						end

						local K = false
						local i = false
						local J
						local Q

						t15[#t15 + 1] = C.InputBegan:Connect(function(Y5)
							if Y5.UserInputType == Enum.UserInputType.MouseButton1 or Y5.UserInputType == Enum.UserInputType.Touch then
								K = true
								J = Y5

								while K and task.wait() do
									local Y5 = y(J.Position.X)

									p = Y5
									TweenService:Create(Y, TweenInfo.new(0.1), { Position = UDim2.fromScale(Y5, 0.5) }):Play()

									local y = Color3.fromHSV(Y5, 1, 1)

									l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, y) })
									k(nil, nil, V.Position.X.Scale, V.Position.Y.Scale)
								end
							end
						end)
						t15[#t15 + 1] = C.InputChanged:Connect(function(y)
							if y.UserInputType == Enum.UserInputType.MouseMovement or y.UserInputType == Enum.UserInputType.Touch then
								J = y
							end
						end)
						t15[#t15 + 1] = C.InputEnded:Connect(function(y)
							if y.UserInputType == Enum.UserInputType.MouseButton1 or y.UserInputType == Enum.UserInputType.Touch then
								K = false
							end
						end)
						k(nil, nil, V.Position.X.Scale, V.Position.Y.Scale, true)

						if t13[R] and t13[R].Color and not n.DontSave then
							local a = s.Flags[R].Color

							task.spawn(function()
								x:SafeCallback(m, I, "colorpicker", a)
							end)
						end

						t15[#t15 + 1] = O.InputBegan:Connect(function(a)
							if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
								i = true
								Q = a

								while i and task.wait() do
									k(Q.Position.X, Q.Position.Y)
								end
							end
						end)
						t15[#t15 + 1] = O.InputChanged:Connect(function(a)
							if a.UserInputType == Enum.UserInputType.MouseMovement or a.UserInputType == Enum.UserInputType.Touch then
								Q = a
							end
						end)
						t15[#t15 + 1] = O.InputEnded:Connect(function(a)
							if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
								i = false
							end
						end)
						O.Name = "Overlay"
						O.Parent = q
						O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						O.BorderColor3 = Color3.fromRGB(0, 0, 0)
						O.BorderSizePixel = 0
						O.Position = UDim2.new(0, 10, 0, 33)
						O.Size = UDim2.new(0, 173, 0, 80)
						t.CornerRadius = UDim.new(0, 6)
						t.Parent = O
						h.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0)) })
						h.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00) })
						h.Parent = O
						_.Name = "HexValue"
						_.Parent = q
						_.AnchorPoint = Vector2.new(1, 1)
						_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						_.BackgroundTransparency = 0.500
						_.BorderColor3 = Color3.fromRGB(0, 0, 0)
						_.BorderSizePixel = 0
						_.Position = UDim2.new(1, -10.0, 0, 130)
						_.Size = UDim2.new(0, 100, 0, 26)
						L.Parent = _
						M.Name = "HexValueText"
						M.Parent = _
						M.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						M.BackgroundTransparency = 1.000
						M.BorderColor3 = Color3.fromRGB(0, 0, 0)
						M.BorderSizePixel = 0
						M.Size = UDim2.new(1, 0, 1, 0)
						M.Font = Enum.Font.GothamMedium
						M.TextColor3 = Color3.fromRGB(255, 255, 255)
						M.TextSize = 14.000
						M.ClearTextOnFocus = false
						t15[#t15 + 1] = M.FocusLost:Connect(function()
							local a = M.Text

							if a:sub(1, 1) == "#" then
								a = a:sub(2)
							end

							if not a:match("%x+%x+%x+") then
								M.Text = H

								return
							end

							local n = a:sub(1, 2)
							local I = a:sub(3, 4)
							local g = a:sub(5, 6)
							local a, H, R = tonumber(n, 16), tonumber(I, 16), tonumber(g, 16)
							local n, I, g = Color3.fromRGB(a, H, R):ToHSV()

							p = n
							TweenService:Create(Y, TweenInfo.new(0.1), { Position = UDim2.fromScale(n, 0.5) }):Play()
							l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(n, 1, 1)) })
							k(nil, nil, 1 - g, 1 - I)
						end)
						u.Name = "FormatIndication"
						u.Parent = _
						u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						u.BackgroundTransparency = 1.000
						u.BorderColor3 = Color3.fromRGB(0, 0, 0)
						u.BorderSizePixel = 0
						u.Position = UDim2.new(-1.0, -7.0, 0, 0)
						u.Size = UDim2.new(1, 0, 1, 0)
						u.Font = Enum.Font.GothamMedium
						u.Text = "HEX"
						u.TextColor3 = Color3.fromRGB(141, 141, 141)
						u.TextSize = 14.000
						u.TextWrapped = true
						u.TextXAlignment = Enum.TextXAlignment.Right
						U.Name = "RgbValue"
						U.Parent = q
						U.AnchorPoint = Vector2.new(1, 1)
						U.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						U.BackgroundTransparency = 0.500
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.Position = UDim2.new(1, -10.0, 0, 100)
						U.Size = UDim2.new(0, 100, 0, 26)
						T.Parent = U
						N.Name = "RgbValueText"
						N.Parent = U
						N.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						N.BackgroundTransparency = 1.000
						N.BorderColor3 = Color3.fromRGB(0, 0, 0)
						N.BorderSizePixel = 0
						N.Size = UDim2.new(1, 0, 1, 0)
						N.Font = Enum.Font.GothamMedium
						N.TextColor3 = Color3.fromRGB(255, 255, 255)
						N.TextSize = 14.000
						N.ClearTextOnFocus = false
						t15[#t15 + 1] = N.FocusLost:Connect(function()
							local a = N.Text

							a = a:gsub(" ", "")

							if not a:match("%d+,%d+,%d+") then
								N.Text = z

								return
							end

							local n = a:split(",")[1]
							local I = a:split(",")[2]
							local g = a:split(",")[3]
							local a, H, R = tonumber(n), tonumber(I), tonumber(g)

							if not (a and H and R) then
								N.Text = z

								return
							end

							if (a < 0 or a > 255) or (H < 0 or H > 255) or (R < 0 or R > 255) then
								N.Text = z

								return
							end

							local n, I, g = Color3.fromRGB(a, H, R):ToHSV()

							p = n
							TweenService:Create(Y, TweenInfo.new(0.1), { Position = UDim2.fromScale(n, 0.5) }):Play()
							l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(n, 1, 1)) })
							k(nil, nil, 1 - g, 1 - I)
						end)
						E.Name = "FormatIndication"
						E.Parent = U
						E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						E.BackgroundTransparency = 1.000
						E.BorderColor3 = Color3.fromRGB(0, 0, 0)
						E.BorderSizePixel = 0
						E.Position = UDim2.new(-1.0, -7.0, 0, 0)
						E.Size = UDim2.new(1, 0, 1, 0)
						E.Font = Enum.Font.GothamMedium
						E.Text = "RGB"
						E.TextColor3 = Color3.fromRGB(141, 141, 141)
						E.TextSize = 14.000
						E.TextWrapped = true
						E.TextXAlignment = Enum.TextXAlignment.Right
						S.Name = "HsvValue"
						S.Parent = q
						S.AnchorPoint = Vector2.new(1, 1)
						S.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						S.BackgroundTransparency = 0.500
						S.BorderColor3 = Color3.fromRGB(0, 0, 0)
						S.BorderSizePixel = 0
						S.Position = UDim2.new(1, -10.0, 0, 70)
						S.Size = UDim2.new(0, 100, 0, 26)
						f.Parent = S
						TextBox.Name = "HsvValueText"
						TextBox.Parent = S
						TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextBox.BackgroundTransparency = 1.000
						TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextBox.BorderSizePixel = 0
						TextBox.Size = UDim2.new(1, 0, 1, 0)
						TextBox.Font = Enum.Font.GothamMedium
						TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextBox.TextSize = 14.000
						t15[#t15 + 1] = TextBox.FocusLost:Connect(function()
							local a = TextBox.Text

							a = a:gsub(" ", "")

							if not a:match("%d+,%d+,%d+") then
								TextBox.Text = z

								return
							end

							local n = a:split(",")[1]
							local I = a:split(",")[2]
							local g = a:split(",")[3]
							local a, H, R = tonumber(n), tonumber(I), tonumber(g)

							if not (a and H and R) then
								TextBox.Text = z

								return
							end

							if (a < 0 or a > 360) or (H < 0 or H > 255) or (R < 0 or R > 255) then
								TextBox.Text = z

								return
							end

							a, H, R = a / 360, H / 255, R / 255
							a, H, R = Color3.fromHSV(a, H, R):ToHSV()
							p = a
							TweenService:Create(Y, TweenInfo.new(0.1), { Position = UDim2.fromScale(a, 0.5) }):Play()
							l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(a, 1, 1)) })
							k(nil, nil, 1 - R, 1 - H)
						end)
						TextLabel.Name = "FormatIndication"
						TextLabel.Parent = S
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextLabel.BorderSizePixel = 0
						TextLabel.Position = UDim2.new(-1.0, -7.0, 0, 0)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Font = Enum.Font.GothamMedium
						TextLabel.Text = "HSV"
						TextLabel.TextColor3 = Color3.fromRGB(141, 141, 141)
						TextLabel.TextSize = 14.000
						TextLabel.TextWrapped = true
						TextLabel.TextXAlignment = Enum.TextXAlignment.Right

						local a = Instance.new("TextButton")

						a.Parent = q
						a.Text = ""
						a.ZIndex = 2
						a.BackgroundTransparency = 1
						a.BorderSizePixel = 0
						a.Size = UDim2.new(1, 0, 0, 32)

						local n = false
						local I = 0
						local g

						local function H(R)
							return UDim2.new(1, -((v133 or _G.SINGLE_COLUMNS) and 29 or 10), 0, R)
						end
						local function B(R)
							_.Visible = R
							U.Visible = R
							S.Visible = R
							C.Visible = R
							O.Visible = R
							w.Visible = R
						end

						local R = { { Items = { w, O }, Delay = 0, Offset = Vector2.new(0, 14) }, { Items = { C }, Delay = 0.06, Offset = Vector2.new(0, 14) }, { Items = { S }, Delay = 0.10, Offset = Vector2.new(24, 0) }, { Items = { U }, Delay = 0.15, Offset = Vector2.new(24, 0) }, { Items = { _ }, Delay = 0.20, Offset = Vector2.new(24, 0) } }

						local function m(V)
							local y = {}

							local function K(i)
								if i:IsA("GuiObject") then
									table.insert(y, { i, "BackgroundTransparency", i.BackgroundTransparency })

									if i:IsA("TextLabel") or i:IsA("TextBox") then
										table.insert(y, { i, "TextTransparency", i.TextTransparency })
									end
								elseif i:IsA("UIStroke") then
									table.insert(y, { i, "Transparency", i.Transparency })
								end
							end

							K(V)

							for i, i in ipairs(V:GetDescendants()) do
								K(i)
							end

							return y
						end

						for V, V in ipairs(R) do
							V.Data = {}

							for y, y in ipairs(V.Items) do
								local K = y.Position

								V.Data[y] = { Rest = K, Hidden = UDim2.new(K.X.Scale, K.X.Offset + V.Offset.X, K.Y.Scale, K.Y.Offset + V.Offset.Y), Fade = m(y) }
							end
						end

						local function m(V)
							for y, y in ipairs(R) do
								for K, i in pairs(y.Data) do
									K.Position = V and i.Rest or i.Hidden

									for y, y in ipairs(i.Fade) do
										y[1][y[2]] = V and y[3] or 1
									end
								end
							end
						end
						local function V(y)
							I += 1

							local K = I

							if g then
								g:Cancel()
							end

							if y then
								B(true)
							end

							g = TweenService:Create(q, TweenInfo.new(y and 0.45 or 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = H(y and 140 or 32) })
							g:Play()

							local g = y and 0.4 or 0.18
							local i = TweenInfo.new(g, y and Enum.EasingStyle.Quint or Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

							for g, g in ipairs(R) do
								task.delay(y and g.Delay or 0, function()
									if K ~= I then
										return
									end

									for R, J in pairs(g.Data) do
										TweenService:Create(R, i, { Position = y and J.Rest or J.Hidden }):Play()

										for g, g in ipairs(J.Fade) do
											TweenService:Create(g[1], i, { [g[2]] = y and g[3] or 1 }):Play()
										end
									end
								end)
							end

							if not y then
								task.delay(0.3, function()
									if K == I and not n then
										B(false)
									end
								end)
							end
						end

						t15[#t15 + 1] = a.MouseButton1Click:Connect(function()
							n = not n
							PlaySound("click")
							V(n)
						end)
						q.Size = H(32)
						m(false)
						B(false)

						return { Set = function(a, a)
							local n, I, r = a:ToHSV()

							p = n
							Y.Position = UDim2.fromScale(n, 0.5)
							l.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(n, 1, 1)) })
							k(nil, nil, 1 - r, 1 - I, true)
						end }
					end
					function X:CreateDivider()
						local a = Instance.new("Frame")

						a.Parent = Z
						F(a, true)
						a.BackgroundTransparency = 1
						a.Size = UDim2.new(1, 0, 0, 18)
						a.ClipsDescendants = true

						local Y = Instance.new("Frame")

						Y.Parent = a
						Y.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
						Y.Size = UDim2.new(1, -4.0, 0, 1)
						Y.Position = UDim2.new(0.5, -2.0, 0.5, 0)
						Y.AnchorPoint = Vector2.new(0.5, 0.5)
						Y.BorderSizePixel = 0
						Y.BackgroundTransparency = 0.5
					end

					return X
				end
				function s:CreateThemeTab()
					local a = s:CreateTab("#!THEME", "paintbrush")
					local Y = "Catsaken/themes"
					local n = Y .. "/_autoload.txt"

					pcall(function()
						if not isfolder("Catsaken") then
							makefolder("Catsaken")
						end

						if not isfolder(Y) then
							makefolder(Y)
						end
					end)

					local I = { "Default Catsaken", "Purplesaken", "Greensaken", "Bluesaken" }
					local X = { Purplesaken = { title = "", background = "https://i.pinimg.com/236x/3f/f6/d6/3ff6d6f8e37e18859575e453bd434eb9.jpg", accent = "ae59ff", shades = { alt = "c900ff", hover = "b81eff", mid = "9e27f5", dark = "c900ff", dark2 = "7c0fa0", deep = "84009b", light = "c76eff" } }, Greensaken = { title = "", background = "https://img.pixers.pics/pho_wat(s3:700/FO/47/10/76/97/700_FO47107697_297131ab14cff90a0d8e3fe6e39e5b9b.jpg,700,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,650,jpg)/wall-murals-green-eco-leaves-seamless-background-pattern.jpg.jpg", accent = "59ff5b", shades = { alt = "00ff0c", hover = "1eff57", mid = "27f53f", dark = "20ff00", dark2 = "0fa034", deep = "00ff4a", light = "6eff70" } }, ["Default Catsaken"] = { title = "", background = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg", accent = "ffbe50" }, Bluesaken = { title = "", background = "https://w.wallhaven.cc/full/eo/wallhaven-eod8ew.png", accent = "0088ff", shades = { alt = "00a1ff", hover = "00a0ff", mid = "008ef5", dark = "00548c", dark2 = "005ca0", deep = "00416e", light = "2b9eff" } } }
					local r = {}
					local q, B

					local function g(H)
						return string.format("%02x%02x%02x", math.floor(H.R * 255 + 0.5), math.floor(H.G * 255 + 0.5), math.floor(H.B * 255 + 0.5))
					end
					local function H(R)
						R = tostring(R):gsub("#", "")

						local m, V, y = tonumber(R:sub(1, 2), 16), tonumber(R:sub(3, 4), 16), tonumber(R:sub(5, 6), 16)

						if m and V and y then
							return Color3.fromRGB(m, V, y)
						end
					end
					local function R(m)
						m = tostring(m or ""):gsub("[^%w _%-]", "")

						return m:match("^%s*(.-)%s*$")
					end
					local function m(V)
						return Y .. "/" .. V .. ".json"
					end
					local function V()
						local y = { title = type(_G.LUNAR_TITLE) == "string" and _G.LUNAR_TITLE or "", background = type(_G.LUNAR_BACKGROUND) == "string" and _G.LUNAR_BACKGROUND or "", accent = g(c()), shades = {} }

						for K, K in ipairs(x.AccentShadeNames) do
							y.shades[K] = g(c(K))
						end

						return y
					end
					local function g()
						local y = {}
						local K, i = pcall(listfiles, Y)

						if K then
							for Y, Y in ipairs(i) do
								local K = Y:match("([^/\\]+)%.json$")

								if K then
									table.insert(y, K)
								end
							end
						end

						table.sort(y, function(Y, K)
							return Y:lower() < K:lower()
						end)

						return y
					end
					local function Y()
						local y = { unpack(I) }

						for K, K in ipairs(g()) do
							if not X[K] then
								table.insert(y, K)
							end
						end

						return y
					end
					local function g(y)
						if X[y] then
							return X[y]
						end

						local K = m(y)

						if isfile(K) then
							local y, i = pcall(function()
								return HttpService:JSONDecode(readfile(K))
							end)

							if y and type(i) == "table" then
								return i
							end
						end
					end
					local function y()
						if isfile(n) then
							local K = readfile(n):match("^%s*(.-)%s*$")

							return K ~= "" and K or nil
						end
					end
					local function K(i)
						local F = i.accent and H(i.accent)

						if F then
							o = F
						end

						for F, F in ipairs(x.AccentShadeNames) do
							local J = i.shades and i.shades[F]

							b[F] = J and H(J) or nil
						end

						D()

						if r.accent then
							r.accent:Set(c())
						end

						for H, H in ipairs(x.AccentShadeNames) do
							if r[H] then
								r[H]:Set(c(H))
							end
						end

						if i.title ~= nil then
							_G.LUNAR_TITLE = i.title ~= "" and i.title or v34
							_G.UpdGuiTitle()

							if q then
								q:Set(i.title)
							end
						end

						if i.background ~= nil then
							_G.LUNAR_BACKGROUND = i.background ~= "" and i.background or nil
							_G.UpdGuiBackground()

							if B then
								B:Set(i.background)
							end
						end
					end

					a:CreateSection("Colors", "Left")
					r.accent = a:CreateColorPicker({ Name = "Accent", Color = c(), Flag = "__ThemeAccent", DontSave = true, Callback = function(H)
						o = H
						D()

						for o, o in ipairs(x.AccentShadeNames) do
							if not b[o] and r[o] then
								r[o]:Set(c(o))
							end
						end
					end })

					local o = { alt = "Title gradient end", hover = "Icon hover", mid = "Slider, dropdown, scrollbar", dark = "Toggle on, search box", dark2 = "Keybind waiting", deep = "Tab hover", light = "Input text" }

					for H, H in ipairs(x.AccentShadeNames) do
						r[H] = a:CreateColorPicker({ Name = o[H], Color = c(H), Flag = "__ThemeShade_" .. H, DontSave = true, Callback = function(r)
							b[H] = r
							D()
						end })
					end

					a:CreateSection("Themes", "Right")

					local r = I[1]
					local I = ""
					local o

					local function H(b)
						o:Set("Auto-load: " .. (y() or "none") .. (b and ("\n" .. b) or ""))
					end

					o = a:CreateLabel("")
					H()

					local o = a:CreateDropdown({ Name = "Theme", Flag = "__ThemeSelect", Options = Y(), CurrentOption = { r }, MultipleOptions = false, Callback = function(b)
						r = b[1]
					end })

					a:CreateButton({ Name = "Load theme", Callback = function()
						local b = r and g(r)

						if not b then
							return H("Pick a theme first")
						end

						K(b)
						H("Loaded " .. r)
					end })
					a:CreateButton({ Name = "Set as auto-load", Callback = function()
						if not (r and g(r)) then
							return H("Pick a theme first")
						end

						writefile(n, r)
						H("Auto-load set to " .. r)
					end })
					a:CreateButton({ Name = "Clear auto-load", Callback = function()
						pcall(delfile, n)
						H("Auto-load cleared")
					end })
					a:CreateButton({ Name = "Delete theme", Callback = function()
						if not r then
							return H("Pick a theme first")
						end

						if X[r] then
							return H("Presets can't be deleted")
						end

						local b = r

						pcall(delfile, m(b))

						if y() == b then
							pcall(delfile, n)
						end

						r = nil
						o:Refresh(Y())
						H("Deleted " .. b)
					end })
					a:CreateInput({ Name = "Save current as", Flag = "__ThemeSaveName", PlaceholderText = "Theme name", RemoveTextAfterFocusLost = false, DontSave = true, Callback = function(n)
						I = R(n)
					end })
					a:CreateButton({ Name = "Save theme", Callback = function()
						if I == "" then
							return H("Type a theme name first")
						end

						if X[I] then
							return H(I .. " is a preset name")
						end

						writefile(m(I), HttpService:JSONEncode(V()))
						o:Refresh(Y())
						H("Saved " .. I)
					end })
					a:CreateSection("Preview", "Right")
					a:CreateLabel("Everything here uses your colors live.")
					a:CreateToggle({ Name = "Example toggle", Flag = "__ThemePreviewToggle", CurrentValue = true, NoSave = true, ToolTip = "Example tooltip", Callback = NULL })
					a:CreateToggle({ Name = "Example text toggle", Flag = "__ThemePreviewTextToggle", CurrentValue = true, TextMode = true, NoSave = true, Callback = NULL, ToolTip = "Used to easily differentiate setting/configurations and actual features" })
					a:CreateSlider({ Name = "Example slider", Flag = "__ThemePreviewSlider", Range = { 0, 100 }, Increment = 1, Suffix = "%", CurrentValue = 50, Callback = NULL })
					a:CreateDropdown({ Name = "Example dropdown", Flag = "__ThemePreviewDropdown", Options = { "Option 1", "Option 2", "Option 3" }, CurrentOption = { "Option 1" }, MultipleOptions = false, Callback = NULL })
					a:CreateKeybind({ Name = "Example keybind", Callback = NULL })
					a:CreateInput({ Name = "Example textbox", Flag = "__ThemePreviewInput", PlaceholderText = "Type here", DontSave = true, Callback = NULL })
					a:CreateColorPicker({ Name = "Example color picker", Color = Color3.fromRGB(255, 255, 255), Flag = "__ThemePreviewColor", DontSave = true, Callback = NULL })
					a:CreateButton({ Name = "Example button", Callback = NULL })
					a:CreateSection("Window", "Left")
					B = a:CreateInput({ Name = "Background (URL)", CurrentValue = isfile("Catsaken/backgroundimg") and readfile("Catsaken/backgroundimg"), PlaceholderText = "URL", RemoveTextAfterFocusLost = false, Flag = "backgroundimg", DontSave = true, Callback = function(Y, W)
						if W then
							return
						end

						writefile("Catsaken/backgroundimg", Y)

						if Y == "" or not Y:match("http?.://") then
							Y = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
						end

						_G.LUNAR_BACKGROUND = Y
						_G.UpdGuiBackground()
					end })
					q = a:CreateInput({ Name = "Window title (html supported)", CurrentValue = isfile("Catsaken/windowtitle") and readfile("Catsaken/windowtitle"), PlaceholderText = "Text", RemoveTextAfterFocusLost = false, Flag = "windowtitle", DontSave = true, Callback = function(Y, W)
						if W then
							return
						end

						writefile("Catsaken/windowtitle", Y)
						_G.LUNAR_TITLE = Y ~= "" and Y or v34
						_G.UpdGuiTitle()
					end })

					if (isfile("Catsaken/backgroundimg")) then
						local Y = readfile("Catsaken/backgroundimg")

						if Y == "" or not Y:match("http?.://") then
							Y = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
						end

						_G.LUNAR_BACKGROUND = Y
						_G.UpdGuiBackground()
					end

					if (isfile("Catsaken/windowtitle")) then
						local Y = readfile("Catsaken/windowtitle")

						_G.LUNAR_TITLE = Y ~= "" and Y or v34
						_G.UpdGuiTitle()
					end

					local Y = y()
					local W = Y and g(Y)

					if W then
						task.spawn(K, W)
					end

					return a
				end

				s.Keybinds = {}
				t15[#t15 + 1] = UserInputService.InputBegan:Connect(function(a, Y)
					if u48 then
						return
					end

					if Y then
						return
					end

					for Y, Y in pairs(s.Keybinds) do
						if Y.Pressable and Y.KeyCode and a.KeyCode == Enum.KeyCode[Y.KeyCode] then
							Y.Callback()
						end
					end
				end)

				function s:SelectTab(a)
					for Y, Y in pairs(j) do
						if Y ~= j[a] then
							Y.IsSelected = false
							Y.Deselect()
						end
					end

					j[a].IsSelected = true
					j[a].Select()
				end

				s.Flags = setmetatable({}, { __index = function(a, Y)
					if not rawget(a, Y) then
						return { CurrentValue = false, Color = Color3.fromRGB(0, 0, 0), CurrentOption = {} }
					end

					return rawget(a, Y)
				end })
				x.__Window__ = v

				return s
			end
			function x:Destroy()
				pcall(function()
					x.__Window__.Parent:Destroy()
				end)
			end
			function x:SafeCallback(a, Y, s, ...)
				assert(typeof(a) == "function", "SafeCallback: Callback is not a function")
				assert(typeof(Y) == "string", "SafeCallback: Name is not a string")
				assert(typeof(s) == "string", "SafeCallback: Type is not a string")
				xpcall(a, function(a)
					v137(string.format("[UI] error in %s \"%s\"! threw: %s", tostring(s), tostring(Y), tostring(a)))
				end, ...)
			end

			return x
		end)()
		local lua = boolCatsakenOldui and safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/rayfield.lua")
		local lib

		if boolCatsakenOldui then
			if not lua then
				u48 = true

				return v219("External module(4) failed to load")
			end

			lib = loadstring(lua)()
		else
			lib = v257
		end

		local t16 = {}
		local ScreenGui = Instance.new("ScreenGui")

		ScreenGui.Name = "NotifHolder"
		ScreenGui.Parent = not RunService:IsStudio() and gethui() or LocalPlayer.PlayerGui
		ScreenGui.ResetOnSpawn = false
		ScreenGui.IgnoreGuiInset = true

		local Frame = Instance.new("Frame")

		Frame.Name = "List"
		Frame.Parent = ScreenGui
		Frame.AnchorPoint = Vector2.new(1, 1)
		Frame.Position = UDim2.new(1, -20, 1, -20)
		Frame.Size = UDim2.new(0, 300, 1, -40)
		Frame.BackgroundTransparency = 1

		local UIListLayout = Instance.new("UIListLayout")

		UIListLayout.Parent = Frame
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout.Padding = UDim.new(0, 8)

		local v1029 = Frame

		lib.ChangeNotificationLayout = function(p35, p36)
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment[p36]
		end

		local function deleteNotifications()
			for _, child in pairs(v1029:GetChildren()) do
				if child.Name == "Notif" then
					child:Destroy()
				end
			end

			t16 = {}

			return
			-- (could not be recovered)
		end

		lib.DeleteNotifications = deleteNotifications

		local n25

		lib.Notify = function(...)
			local value = select(2, ...)

			n25 = 260775643

			local Title = value.Title or ""
			local Content = value.Content or ""
			local Duration = value.Duration or 5
			local n26 = 303419695
			local Image = value.Image
			local NoQueue = value.NoQueue

			if t16[Content] then
				return
			end

			if not NoQueue then
				t16[Content] = true
			end

			task.delay(Duration, function()
				t16[Content] = nil

				return
				-- (could not be recovered)
			end)

			local v1041 = v1029
			local Frame2 = Instance.new("Frame")

			Frame2.Name = "Notif"
			Frame2.Parent = v1041
			Frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Frame2.BorderSizePixel = 0
			Frame2.Size = UDim2.new(1, 0, 0, 0)
			Frame2.AutomaticSize = Enum.AutomaticSize.Y
			Frame2.ClipsDescendants = true
			Frame2.LayoutOrder = UIListLayout.VerticalAlignment == Enum.VerticalAlignment.Bottom and -os.clock() or os.clock()
			Frame2.BackgroundTransparency = 0.5

			local UICorner = Instance.new("UICorner")

			UICorner.CornerRadius = UDim.new(0, 8)
			UICorner.Parent = Frame2

			local UIStroke = Instance.new("UIStroke")

			UIStroke.Color = Color3.fromRGB(55, 55, 55)
			UIStroke.Thickness = 1
			UIStroke.Parent = Frame2

			local UIPadding = Instance.new("UIPadding")

			UIPadding.PaddingTop = UDim.new(0, 12)
			UIPadding.PaddingBottom = UDim.new(0, 12)
			UIPadding.PaddingLeft = UDim.new(0, 12)
			UIPadding.PaddingRight = UDim.new(0, 12)
			UIPadding.Parent = Frame2

			local n27 = 0

			if Image then
				local v1047 = Image
				local v1048 = v251(v1047)
				local ImageLabel = Instance.new("ImageLabel")

				ImageLabel.Name = "Icon"
				ImageLabel.Parent = Frame2
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.Position = UDim2.new(0, 0, 0, 1)
				ImageLabel.Size = UDim2.new(0, 18, 0, 18)
				ImageLabel.Image = v1048.id
				ImageLabel.ImageRectOffset = v1048.imageRectOffset
				ImageLabel.ImageRectSize = v1048.imageRectSize
				ImageLabel.ImageColor3 = Color3.fromRGB(230, 230, 230)
				n27 = 26
			end

			local TextButton = Instance.new("TextButton")

			TextButton.Name = "Close"
			TextButton.Parent = Frame2
			TextButton.AnchorPoint = Vector2.new(1, 0)
			TextButton.Position = UDim2.new(1, 0, 0, 0)
			TextButton.Size = UDim2.new(0, 18, 0, 18)
			TextButton.BackgroundTransparency = 1
			TextButton.Text = ""
			TextButton.ZIndex = 3

			local v1051 = v251("x")
			local ImageLabel = Instance.new("ImageLabel")

			ImageLabel.Parent = TextButton
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = v1051.id
			ImageLabel.ImageRectOffset = v1051.imageRectOffset
			ImageLabel.ImageRectSize = v1051.imageRectSize
			ImageLabel.ImageColor3 = Color3.fromRGB(150, 150, 150)
			TextButton.MouseEnter:Connect(function()
				setthreadidentity(8)
				TweenService:Create(ImageLabel, TweenInfo.new(0.15), {
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			end)
			TextButton.MouseLeave:Connect(function()
				setthreadidentity(8)

				local n28 = 464586337

				if n25 ~= n28 then
					TweenService:Create(ImageLabel, TweenInfo.new(0.15), {
						ImageColor3 = Color3.fromRGB(150, 150, 150)
					}):Play()

					return
				end

				n7 = 276395153
				n8 = 634626729
				n9 -= 1825
				n2 = 761957223
				n25 += 605
				n26 = 551774362
				n4 = 826587850
				n5 = 66734587
				-- (could not be recovered)
			end)

			local TextLabel = Instance.new("TextLabel")

			TextLabel.Name = "Title"
			TextLabel.Parent = Frame2
			TextLabel.BackgroundTransparency = 1
			TextLabel.Position = UDim2.new(0, n27, 0, 0)
			TextLabel.Size = UDim2.new(1, -n27 - 22, 0, 18)
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.Text = Title
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.TextYAlignment = Enum.TextYAlignment.Top

			local TextLabel2 = Instance.new("TextLabel")

			TextLabel2.Name = "Content"
			TextLabel2.Parent = Frame2
			TextLabel2.BackgroundTransparency = 1
			TextLabel2.Position = UDim2.new(0, n27, 0, 22)
			TextLabel2.Size = UDim2.new(1, -n27, 0, 0)
			TextLabel2.AutomaticSize = Enum.AutomaticSize.Y
			TextLabel2.Font = Enum.Font.Gotham
			TextLabel2.Text = Content
			TextLabel2.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextLabel2.TextSize = 13
			TextLabel2.TextWrapped = true
			TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
			TextLabel2.RichText = true

			local Frame3 = Instance.new("Frame")

			Frame3.Name = "Bar"
			Frame3.Parent = Frame2
			Frame3.AnchorPoint = Vector2.new(0, 1)
			Frame3.Position = UDim2.new(0, 8, 1, 12)
			Frame3.Size = UDim2.new(1, -16, 0, 2)
			Frame3.BackgroundColor3 = Color3.fromRGB(245, 159, 39)
			Frame3.BorderSizePixel = 0
			Frame2.Size = UDim2.new(1, 0, 0, 0)
			Frame2.BackgroundTransparency = 1
			Frame2.Position = UDim2.new(0, 40, 0, 0)

			for _, descendant in ipairs(Frame2:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					descendant.TextTransparency = 1
				end

				if descendant:IsA("ImageLabel") then
					descendant.ImageTransparency = 1
				end
			end

			UIStroke.Transparency = 1
			Frame3.BackgroundTransparency = 1
			task.wait()
			TweenService:Create(Frame2, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.15,
				Position = UDim2.new(0, 0, 0, 0)
			}):Play()
			TweenService:Create(UIStroke, TweenInfo.new(0.35), {
				Transparency = 0
			}):Play()

			for _, descendant in ipairs(Frame2:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					TweenService:Create(descendant, TweenInfo.new(0.35), {
						TextTransparency = descendant == TextLabel2 and 0.3 or 0
					}):Play()
				elseif descendant:IsA("ImageLabel") then
					TweenService:Create(descendant, TweenInfo.new(0.35), {
						ImageTransparency = 0
					}):Play()
				end
			end

			TweenService:Create(Frame3, TweenInfo.new(0.35), {
				BackgroundTransparency = 0.3
			}):Play()
			TweenService:Create(Frame3, TweenInfo.new(Duration, Enum.EasingStyle.Linear), {
				Size = UDim2.new(0, 0, 0, 2)
			}):Play()

			local u1061 = false

			local function v1062()
				if u1061 then
					return
				end

				u1061 = true
				t16[Content] = nil

				local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

				TweenService:Create(Frame2, tweenInfo, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 40, 0, 0)
				}):Play()
				TweenService:Create(UIStroke, tweenInfo, {
					Transparency = 1
				}):Play()

				for _, descendant in ipairs(Frame2:GetDescendants()) do
					if descendant:IsA("TextLabel") then
						TweenService:Create(descendant, tweenInfo, {
							TextTransparency = 1
						}):Play()
					elseif descendant:IsA("ImageLabel") then
						TweenService:Create(descendant, tweenInfo, {
							ImageTransparency = 1
						}):Play()
					end
				end

				TweenService:Create(Frame3, tweenInfo, {
					BackgroundTransparency = 1
				}):Play()
				task.wait(0.2)

				local tween = TweenService:Create(Frame2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
					Size = UDim2.new(1, 0, 0, 0)
				})

				tween:Play()
				tween.Completed:Wait()
				Frame2:Destroy()
			end

			TextButton.MouseButton1Click:Connect(v1062)

			local n29

			if not value.Sticky then
				task.delay(Duration + 1, function()
					n29 = 355732010
					Frame2:Destroy()

					if n9 < n26 then
						return
					end

					n26 -= 669
					n9 += 1936
					n25 = 244086364
					n2 = 267264274

					local v1068 = n8

					n8 -= 1689
					n7 = 509266451
					n5 = 613515856
					n1 -= 629
					n29 = 829366977
					n29[n7[1]] = n7[3] - v1068
					-- (could not be recovered)
				end)
				task.delay(Duration, v1062)
			end

			return {
				Close = v1062
			}
		end
		obj.Rayfield = lib

		local u1069 = boolCatsakenOldui
		local u1070 = boolCatsakenOldui
		local u1071 = boolCatsakenOldui
		local u1072
		local lua2

		xpcall(function()
			local n30 = 200290632

			downloadIcons = function(p37)
				local n31 = 0
				local t17 = {
					"shield.png",
					"app-window.png"
				}

				for _, v in pairs(t17) do
					if not isfile("Catsaken/" .. v) then
						local ok, result = pcall(function()
							return safehttpget("https://github.com/aibabylaugh/catsaken/raw/main/" .. v, true)
							-- (could not be recovered)
						end)

						if ok then
							if u1072 then
								u1072("Downloading Icons (" .. n31 .. "/" .. #t17 .. ")")
							end

							v138("writing image:", v, result)
							writefile("Catsaken/" .. v, result)

							if p37 then
								table.insert(p37, getcustomasset("Catsaken/" .. v))
							end
						else
							v137("cannot download img", v, tostring(result))
						end
					end

					n31 += 1
				end
			end

			if boolCatsakenOldui then
				v138("skipping loader, using old gui")
				downloadIcons()
			else
				task.spawn(function()
					local n32 = 818262482
					local n33 = 662000432
					local n34 = 585860411
					local n35

					local function v1085()
						local n36 = 665978855

						n35 = 340907113

						local color3 = Color3.fromRGB(33, 33, 33)
						local color32 = Color3.fromRGB(60, 60, 60)
						local color33 = Color3.fromRGB(55, 55, 55)
						local color34 = Color3.fromRGB(255, 182, 46)
						local color35 = Color3.fromRGB(170, 170, 170)
						local color36 = Color3.fromRGB(235, 235, 235)
						local s7 = "Catsaken"
						local n37 = 13
						local t18 = {}

						t18.__index = t18

						local function v1096(p38, p39, p40)
							local instance = Instance.new(p38)

							for k, v in pairs(p39) do
								instance[k] = v
							end

							instance.Parent = p40

							return instance
							-- (could not be recovered)
						end
						local function v1100(p41, p42)
							local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, p42 and Enum.EasingDirection.Out or Enum.EasingDirection.In)
							local v1102 = p42 and 0 or 1

							TweenService:Create(p41._content, tweenInfo, {
								GroupTransparency = v1102
							}):Play()
							TweenService:Create(p41._card, tweenInfo, {
								BackgroundTransparency = v1102
							}):Play()
							TweenService:Create(p41._stroke, tweenInfo, {
								Transparency = v1102
							}):Play()

							local tween = TweenService:Create(p41._scale, tweenInfo, {
								Scale = p42 and 1 or 0.9
							})

							tween:Play()

							return tween
							-- (could not be recovered)
						end

						t18.new = function(p43)
							local obj2 = setmetatable({}, t18)
							local Frame2 = v1096("Frame", {
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.fromScale(0.5, 0.5),
								Size = UDim2.fromOffset(340, 116),
								BackgroundColor3 = color3,
								BackgroundTransparency = 1,
								BorderSizePixel = 0
							})

							v1096("UIDragDetector", {}, Frame2)
							v1096("UICorner", {
								CornerRadius = UDim.new(0, 14)
							}, Frame2)

							local UIStroke = v1096("UIStroke", {
								Color = color32,
								Thickness = 1,
								Transparency = 1
							}, Frame2)
							local UIScale = v1096("UIScale", {
								Scale = 0.9
							}, Frame2)
							local CanvasGroup = v1096("CanvasGroup", {
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = 1,
								GroupTransparency = 1
							}, Frame2)
							local Frame3 = v1096("Frame", {
								AnchorPoint = Vector2.new(1, 0),
								Position = UDim2.new(1, -24, 0, 16),
								Size = UDim2.fromOffset(34, 34),
								BackgroundTransparency = 1
							}, CanvasGroup)
							local t19 = {}

							for i = 1, n37 do
								local v1112 = (i - 1) / n37 * math.pi * 2 - 1.5707963267948966
								local Frame4 = v1096("Frame", {
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.fromScale(0.5 + math.cos(v1112) * 0.385, 0.5 + math.sin(v1112) * 0.385),
									Size = UDim2.fromOffset(5, 5),
									BackgroundColor3 = color34,
									BorderSizePixel = 0
								}, Frame3)

								v1096("UICorner", {
									CornerRadius = UDim.new(1, 0)
								}, Frame4)
								t19[i] = Frame4
							end

							v1096("TextLabel", {
								Position = UDim2.fromOffset(24, 16),
								Size = UDim2.new(1, -90, 0, 34),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamBold,
								Text = s7,
								TextColor3 = color36,
								TextSize = 22,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd
							}, CanvasGroup)

							local TextLabel = v1096("TextLabel", {
								Position = UDim2.fromOffset(24, 56),
								Size = UDim2.new(1, -110, 0, 22),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamMedium,
								Text = "Loading...",
								TextColor3 = color35,
								TextSize = 15,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd
							}, CanvasGroup)
							local TextLabel2 = v1096("TextLabel", {
								AnchorPoint = Vector2.new(1, 0),
								Position = UDim2.new(1, -24, 0, 56),
								Size = UDim2.fromOffset(56, 22),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamBold,
								Text = "0%",
								TextColor3 = color36,
								TextSize = 15,
								TextXAlignment = Enum.TextXAlignment.Right
							}, CanvasGroup)
							local Frame4 = v1096("Frame", {
								Position = UDim2.fromOffset(24, 88),
								Size = UDim2.new(1, -48, 0, 8),
								BackgroundColor3 = color33,
								BorderSizePixel = 0
							}, CanvasGroup)

							v1096("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}, Frame4)

							local Frame5 = v1096("Frame", {
								Size = UDim2.fromScale(0, 1),
								BackgroundColor3 = color34,
								BorderSizePixel = 0
							}, Frame4)

							v1096("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}, Frame5)

							local ScreenGui2 = v1096("ScreenGui", {
								Name = "LoadingScreen",
								IgnoreGuiInset = true,
								ResetOnSpawn = false,
								DisplayOrder = 999,
								ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							})

							Frame2.Parent = ScreenGui2
							ScreenGui2.Parent = p43 or gethui and gethui() or Players.LocalPlayer:WaitForChild("PlayerGui")
							obj2._root = ScreenGui2
							obj2._card = Frame2
							obj2._stroke = UIStroke
							obj2._scale = UIScale
							obj2._content = CanvasGroup
							obj2._status = TextLabel
							obj2._target = 0
							obj2._shown = 0
							obj2._done = false

							if n34 == n5 then
								n4 = 206745592
								n5 = 627727530
								n34 -= 538
								n33 -= 1082
								n7 += 1356
								n36 = 986607399
							else
								obj2._conn = RunService.Heartbeat:Connect(function(dt)
									local v1119 = os.clock() * 10 % n37

									for i, v in ipairs(t19) do
										v.BackgroundTransparency = (v1119 - i) % n37 / n37 * 0.85
									end

									obj2._shown += (obj2._target - obj2._shown) * math.min(1, dt * 8)
									Frame5.Size = UDim2.fromScale(obj2._shown / 100, 1)
									TextLabel2.Text = math.floor(obj2._shown + 0.5) .. "%"

									return
									-- (could not be recovered)
								end)
							end

							v1100(obj2, true)

							return obj2
						end
						t18.setProgress = function(p44, p45, p46)
							if p44._done then
								return
							end

							p44._target = math.clamp(p45, 0, 100)

							if p46 then
								p44._status.Text = p46
							end

							if n7 == n4 then
								n7 = 785698686
								n36 -= 999
								n33 -= 448
								n5 = 830010100
								n34 = 745528174
								n4 = 653948751
							end
						end
						t18.setStatus = function(p47, p48)
							if p47._done then
								return
							end

							p47._status.Text = p48
						end
						t18.finished = function(p49)
							if p49._done then
								return
							end

							p49._done = true
							p49._target = 100

							while true do
								if p49._shown < 99.5 then
									if p49._root.Parent then
										task.wait()

										continue
									end

									break
								end

								break
							end

							p49._shown = 100
							task.wait(0.25)

							if not p49._root.Parent then
								return
							end

							v1100(p49, false)
							task.wait(0.3)
							p49:destroy()

							return
							-- (could not be recovered)
						end
						t18.destroy = function(p50)
							while true do
								local v1122 = p50

								v1122._done = true
								v1122._conn:Disconnect()
								v1122._root:Destroy()

								if n35 ~= 340907113 then
									n1 = 372662998
									n7 = 428909303
									n4 = 293888774
									n35 = 1022566250
									n32 = 768212870
									n5 = 154924443
									n36 = 295503774

									break
								end

								break
							end
						end

						if n5 ~= n36 then
							return t18
						end

						n32 = 506021389
						n35 = 651691890
						n4 -= 1628
						n34 = 298188531
						n1 = 333643610
						n7 -= 1947
						n5 = 771173711
						n33 -= 649
						n36 += 261
						-- (could not be recovered)
					end

					local new = v1085().new
					local exitTo, v1125, t20, descendants, finished, Image, v1130

					repeat
						v1125 = new()
						QUITLOADING = function()
							v1125:destroy()
							obj.catsakenexecuted = false

							if n33 ~= 662001003 then
								return
							end

							n30 += 1222
							n32 = 545010423
							n34 -= 1875
							n33 += 1755
							n7 += 1185
							n5 += 1114
							-- (could not be recovered)
						end
						u1072 = function(p51)
							v1125:setStatus(p51)

							return
							-- (could not be recovered)
						end
						v138("[status] Preparing Translations")
						v1125:setStatus("Preparing Translations")
						lua2 = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/translations.lua", true)

						if not lua2 then
							u48 = true
							new = v219

							return new("External module(5) failed to load")
						end

						lua2 = loadstring(lua2)()
						new = 0
						v138("[status] Downloading Icons")
						v1125:setStatus("Downloading Icons")
						t20 = {}
						downloadIcons(t20)
						u1071 = true
						v138("[status] Initiating")

						local now2 = tick()

						repeat
							if obj.LOADING_ERROR then
								return
							end

							u1072(string.format("Initiating (%.1fs)", tick() - now2))
							task.wait()
						until u1070

						descendants = _G.globaluilibrary:GetDescendants()

						local n38 = 1

						exitTo = nil

						while true do
							for i = n38, #descendants do
								if not descendants[i]:IsA("ImageLabel") then
									local v1134 = descendants[i]

									Image = v1134
									v1130 = v1134.IsA(Image, "ImageButton")

									if not v1130 then
										continue
									end
								end

								v1130 = #t20 + 1
								Image = descendants[i].Image
								t20[v1130] = Image
							end

							exitTo = 1

							break
						end

						if exitTo == 1 then
							v138("[status] Preparing UI")
							u1072("Preparing UI (0/" .. #t20 .. ")")

							local t21 = {}

							task.spawn(function()
								if n30 < n33 then
									for i = 1, #t20 do
										if t21[t20[i]] then
											new += 1
										else
											local u1137 = false

											task.spawn(function()
												pcall(ContentProvider.PreloadAsync, ContentProvider, { t20[i] })
												u1137 = true

												return
												-- (could not be recovered)
											end)

											local now3 = tick()

											while true do
												task.wait()

												if u1137 then
													break
												elseif tick() - now3 > 2 then
													break
												end
											end

											new += 1
											t21[t20[i]] = true
										end
									end
								else
									n4 += 481
									n30 += 1508
									n32 = 822252051
									n34 += 1611
									n33 = 74874377
									n5 = 893303724
									n1 = 175420528
								end
							end)

							while task.wait() do
								u1072("Preparing UI (" .. new .. "/" .. #t20 .. ")")
								v1125:setProgress(#t20 == 0 and 100 or new / #t20 * 100)

								if new == #t20 then
									break
								end
							end

							v1125:finished()
							u1069 = true

							return
						end
					until exitTo == 2

					local v1139 = nil - (nil + 0)
					local v1140 = nil + -83
					local v1141, v1142, v1143, v1144

					while true do
						v1141[121] = v1140
						v1142[394] = 112

						local exitTo5

						while true do
							v1141 = nil
							v1142 = nil
							Image = Image or new / #t20 * 100
							finished(v1130, Image)

							local exitTo4

							while true do
								v1130 = v1125
								finished = v1125.finished
								finished(v1130)
								upv236 = true
								v1143 = -v1143

								local exitTo2
								local exitTo6
								local now2, exitTo3, v1151, format, s8, tick_, v1155, v1156

								while true do
									n4 = 408542874
									n34 += 1012
									n32 -= 21
									v1144 = n30 + 204
									n30 = v1144

									if nil <= nil then
										exitTo6 = 1

										break
									end

									new = new()
									v1125 = new
									new = function()
										v1125:destroy()
										obj.catsakenexecuted = false

										if n33 ~= 662001003 then
											return
										end

										n30 += 1222
										n32 = 545010423
										n34 -= 1875
										n33 += 1755
										n7 += 1185
										n5 += 1114
										-- (could not be recovered)
									end
									QUITLOADING = new
									new = function(p52)
										v1125:setStatus(p52)

										return
										-- (could not be recovered)
									end
									u1072 = new
									new = v138
									new("[status] Preparing Translations")
									new = v1125.setStatus
									new(v1125, "Preparing Translations")
									new = safehttpget
									new = new("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/translations.lua", true)
									lua2 = new
									new = lua2

									if not new then
										break
									end

									new = loadstring
									new = new(lua2)
									new = new()
									lua2 = new
									new = 0
									v138("[status] Downloading Icons")
									v1125:setStatus("Downloading Icons")
									t20 = {}
									downloadIcons(t20)
									u1071 = true
									v138("[status] Initiating")
									now2 = tick()
									exitTo3 = nil

									repeat
										if obj.LOADING_ERROR then
											exitTo3 = 1

											break
										end

										v1151 = u1072
										format = string.format
										s8 = "Initiating (%.1fs)"
										tick_ = tick
										tick_ = tick_()
										tick_ -= now2
										v1151(format(s8, tick_))
										task.wait()
									until u1070

									if exitTo3 == 1 then
										exitTo6 = 2

										break
									end

									descendants = _G.globaluilibrary:GetDescendants()
									v1144 = 1
									s8 = #descendants
									tick_ = 1

									for i = v1144, s8, tick_ do
										v1155 = descendants[i]

										if not v1155:IsA("ImageLabel") then
											v1156 = descendants[i]
											Image = v1156
											v1130 = v1156.IsA(Image, "ImageButton")

											if not v1130 then
												continue
											end
										end

										v1130 = #t20 + 1
										Image = descendants[i].Image
										t20[v1130] = Image
									end

									if n32 == 818262482 then
										exitTo6 = 3

										break
									end

									n8 += 1481
									n7 = 997650853
									n5 = 283996354
									n33 -= 988
									n1 -= 1025
								end

								if exitTo6 == 1 then
									local v1158 = table.pack(v1139())

									if v1158[1] then
										while true do
											s8 = #descendants
											tick_ = 1

											for i = v1144, s8, tick_ do
												v1155 = descendants[i]

												if not v1155:IsA("ImageLabel") then
													v1156 = descendants[i]
													Image = v1156
													v1130 = v1156.IsA(Image, "ImageButton")

													if not v1130 then
														continue
													end
												end

												v1130 = #t20 + 1
												Image = descendants[i].Image
												t20[v1130] = Image
											end

											exitTo2 = 3

											break
										end
									else
										exitTo2 = 2
									end
								elseif exitTo6 == 2 then
									exitTo2 = 1
								elseif exitTo6 == 3 then
									exitTo2 = 3
								end

								if exitTo2 == 1 then
									exitTo4 = 1

									break
								end

								if exitTo2 == 2 then
									exitTo4 = 2

									break
								end

								if exitTo2 == 3 then
									s8 = "[status] Preparing UI"
									v138(s8)
									s8 = #t20
									s8 ..= ")"
									s8 = "Preparing UI (0/" .. s8
									u1072(s8)

									local t22 = {}

									s8 = nil
									tick_ = nil
									task.spawn(function()
										s8 = 465644156
										tick_ = 1008792578

										if n30 < n33 then
											for i = 1, #t20 do
												if t22[t20[i]] then
													new += 1
												else
													local u1162 = false

													task.spawn(function()
														pcall(ContentProvider.PreloadAsync, ContentProvider, { t20[i] })
														u1162 = true

														return
														-- (could not be recovered)
													end)

													local now3 = tick()

													while true do
														task.wait()

														if u1162 then
															break
														elseif tick() - now3 > 2 then
															break
														end
													end

													new += 1
													t22[t20[i]] = true
												end
											end
										else
											n4 += 481
											tick_ += 524
											n30 += 1508
											n32 = 822252051
											n34 += 1611
											n33 = 74874377
											n5 = 893303724
											n1 = 175420528
											s8 = 628978575
										end
									end)

									if task.wait() then
										exitTo4 = 3

										break
									end

									continue
								end

								break
							end

							if exitTo4 == 1 then
								exitTo5 = 1

								break
							end

							if exitTo4 == 2 then
								exitTo5 = 2

								break
							end

							if exitTo4 == 3 then
								u1072("Preparing UI (" .. new .. "/" .. #t20 .. ")")
								v1130 = v1125
								finished = v1125.setProgress
								Image = #t20 == 0 and 100

								continue
							end

							break
						end

						if exitTo5 ~= 1 then
							if exitTo5 == 2 then
								v1140 = nil + -83

								continue
							end

							break
						end

						return
					end

					u48 = true
					new = v219

					return new("External module(5) failed to load")
				end)
			end

			if boolCatsakenOldui then
				lua2 = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/translations.lua", true)

				if not lua2 then
					u48 = true

					return v219("External module(6) failed to load")
				end

				lua2 = loadstring(lua2)()
			end

			v137("translations init")

			repeat
				task.wait()
			until u1071

			v137("icons init")
		end, function(p53)
			v137("load error:\n", tostring(p53))
			v219("loader errored - this should NOT happen")
		end)
		xpcall(function()
			local v1164 = lib:CreateWindow({
				Name = v34,
				Version = "V4",
				TabWidth = _G.TAB_WIDTH,
				Icon = getcustomasset("Catsaken/catsaken_transparent.png"),
				LoadingTitle = "Catsaken Remastered",
				LoadingSubtitle = "V3",
				ShowText = "catsaken",
				Theme = "AmberGlow",
				ToggleUIKeybind = "F4",
				DisableRayfieldPrompts = true,
				DisableBuildWarnings = true,
				Translations = lua2,
				ConfigurationSaving = {
					Enabled = true,
					FolderName = "CatsakenRemastered",
					FileName = "Forsaken"
				},
				Discord = {
					Enabled = false,
					Invite = "",
					RememberJoins = true
				},
				SizeSettings = {
					750,
					480
				}
			})
			local n39 = 622646567

			_G.CATSAKENX = v1164

			local n40 = 1015842633
			local n41 = 711369103

			if boolCatsakenOldui then
				v1164.Flags = setmetatable(lib.Flags, {
					__index = function(p54, p55)
						if not rawget(p54, p55) then
							return {
								CurrentValue = false,
								Color = Color3.fromRGB(0, 0, 0),
								CurrentOption = {}
							}
						end

						return rawget(p54, p55)
						-- (could not be recovered)
					end
				})
			end

			if pos then
				lib:Notify({
					Title = "Dear velocity user",
					Content = "Your executor is very unstable. Script may crash randomly or if certain features are enabled",
					Duration = 30,
					Image = "bug"
				})
			end

			setthreadidentity(2)

			local v1168 = Icon.new():setImage(getcustomasset("Catsaken/app-window.png")):setLabel("Catsaken"):setCaption("Toggle Menu"):autoDeselect(false):select()

			obj.MobileToggle = v1168

			if boolCatsakenOldui then
				v1168:setEnabled(false)
			end

			setthreadidentity(8)
			FindAnimationAsset = function(p56, p57)
				local module2 = require(p56)

				if not module2.Animations then
					return
				end

				local Animations = module2.Animations
				local parts = p57:split("/")

				if #parts > 1 then
					Animations = Animations[parts[1]]
					p57 = parts[2]
					assert(Animations, "Recursive table fail in FindAnimationAsset")
				end

				if n9 ~= 263114294 then
					if Animations[p57] then
						return Animations[p57]
					end

					return
				end

				n3 += 1209
				n9 += 1579
				n41 -= 890
				n5 -= 1481
				n1 -= 354
				n39 = 447476512
				n6 += 1283
				n40 = 357989823
				n8 = 728501663
				upv385 = nil
				-- (could not be recovered)
			end
			FindSoundAsset = function(p58, p59)
				local module2 = require(p58)

				if not module2.Sounds then
					return
				end

				local Sounds2 = module2.Sounds
				local parts = p59:split("/")

				if #parts > 1 then
					Sounds2 = Sounds2[parts[1]]
					p59 = parts[2]
					assert(Sounds2, "Recursive table fail in FindSoundAsset")
				end

				if Sounds2[p59] then
					return Sounds2[p59]
				end

				return
			end
			get_translated_tab = function(p60)
				local v1175 = lua2.Tabs[p60] or {
					["en-us"] = p60
				}

				return v1175[LocalPlayer.LocaleId] or v1175["en-us"]
			end

			do
				CreateTab = function(p61, p62)
					local v1176 = get_translated_tab(p61)

					setthreadidentity(8)

					if n39 ~= 622647187 then
						return v1164:CreateTab(v1176, p62)
					end

					n6 -= 1509
					n3 -= 1788
					n1 -= 1058
					n9 = 881685271
					n40 -= 570
					n2 += 1804
					n41 -= 1624
					n39 -= 898
					n5 -= 1480
				end
			end

			do
				local About = CreateTab("About", "info")

				About:CreateSection("Contact")
				About:CreateLabel("Discord server: https://discord.gg/VzHp67sw9a")
				About:CreateButton({
					Name = "Copy invite",
					Callback = function()
						setclipboard("https://discord.gg/rmneruazd")
					end
				})
				About:CreateSection("Script Help")
				About:CreateLabel("The keybind to the GUI is F4" .. (boolCatsakenOldui and "." or ", or press the button in the top bar. Hold/Hover over features to show help"))
				About:CreateLabel("As a reminder, there aren't any execution logs or linkable information.")

				local v1178 = identifyexecutor()

				About:CreateParagraph({
					Title = "Executor",
					Content = string.format("You are using %s (%s)", v1178, table.find({
						"Potassium",
						"Delta"
					}, v1178) and "Supported" or "Untested")
				})
				About:CreateSection("Changelog", "Right")
				About:CreateParagraph({
					Title = "Changelog (V3.2 -> V4)",
					Content = (boolCatsakenOldui and "" or "V3.2 -> V4\n") .. [[<b>Reworks</b>
Reworked generators tab (changed to minigames)
Reworked general tab (changed to character)
Reworked esp tab and visual esp
Reworked auto lobby - now disables cutscene entirely
Reworked hitbox expander (has dynamic/static mode, target sort modes, and doesnt use velocity so way more legit without chance of kick)
Reworked Id scraping logic

<b>QOL</b>
Moved settings options from misc to dedicated button
Moved some options from general to self
More optimizations on script performance (less lag)
Made dropdowns with alot of options searchable
Made sliders have a way to type custom values
Made settings auto save instead of requiring manual save every time
Optimized gui to not lag when dragging/using navbar
Removed "blatant mode" toggle because it was hard to find for some people
Removed invisibility, desync, and all features that relied on those like anti hit (PATCHED BY FORSAKEN)
Improved "reveal ability trajectory" and "Fake emote"
Improved auto-block hitbox detection
Added protections to auto-gen incase you finish it too fast to avoid gensploit kick

<b>Fixes</b>
Fixed everything for latest forsaken patch
Fixed "hide puzzle ui" when autofarming
Fixed autoblock visualizer
Fixed autoblock not detecting azure golem
Fixed autoblock drag tech
Fixed stamina options/inf stamina
Fixed bypass killer walls making killer noclippable
Fixed anti hallucinations
Fixed stuff in audio tab
Fixed/reworked device spoofer
Fixed autogen legit delay always using legit delay
Fixed some fake emotes not working
Fixed colorpickers not saving properly
Fixed lobby music changer
Fixed round timer being slightly offset
Fixed generator anim playing while autofarming
Fixed auto-gen edge cases
Fixed esp showing while in lobby
Fixed script detecting fake nolis as killers
Fixed insta enter gen sometimes just not working at all

<b>New features</b>
Added features for new generator minigames
Added gears esp
Added auto pick up all gears
Added azure exploit character destroy/kick
Added azure launch velocity changer
Added sixer inf hitbox trail
Added nosferatu inf hitbox trail
Added 007n7 clone esp
Added feature to detect when players spectate you
Added fake injured animations
Added run/walk/idle/injured animation changers
Added ghost animations
Added togglable sprint
Added esp outline whiteness option
Added seperate survivor/killer stamina options
Added troll c00lgui
Added cancellable c00lgui
Added walkspeed override tp hit
Added enstrangle silent aim
Added infernal cry silent aim
Added auto slash 360
Added slash lunge
Added clone bodyblock modes
Added inf crystal hold time
Added super punch
Added sk8 anti-crash
Added sk8 forever (2 methods)
Added sk8 trick anywhere
Added sk8 autofarm
Added sk8 movement control
Added anti backstab
Added killer/survivor AI autoplay
Added anti void star pull
Added anti azure vine pull
Added anti afk kill
Added anti knockback
Added anti infernal cry
Added anti invisible players
Added anti exhaust
Added 2time hitbox distance multi
Added 2time backstab exploit
Added 2time glidestab helper
Added M1 visualizer
Added auto detonate nova
Added always show player list
Added name hider/streamer mode
Added maximum penalty time
Added [infinite stamina] modes
Added azure random complete time
Added nos qte random complete time
Added taph tripmine range esp
Added reveal hallucination status
Added "old forsaken menu"
Added anti detect spectate
Added customizable window titles, backgrounds, colors
Added hitbox check (better alternative to face check) to non-guest autoblock]]
				})
			end

			local function v1179()
			end

			local Minigames = CreateTab("Minigames", "joystick")
			local esp = CreateTab("ESP", "scan-eye")
			local Stamina = CreateTab("Stamina", "footprints")
			local Aimbot = CreateTab("Aimbot", "crosshair")
			local Hitboxes = CreateTab("Hitboxes", "sword")
			local Character_2 = CreateTab("Character", "star")
			local Autoblock = CreateTab("Autoblock", "shield")
			local Self = CreateTab("Self", "user")
			local Animations = CreateTab("Animations", "square-play")
			local Editor = CreateTab("Editor", "wand-sparkles")
			local Autoplay = CreateTab("Autoplay", "bot")
			local Game = CreateTab("Game", "gamepad-2")
			local Antis = CreateTab("Antis", "ban")
			local Miscallenous = CreateTab("Miscallenous", "dices")
			local Audio = CreateTab("Audio", "music")
			local Configs = CreateTab("Configs", "cog")
			local v1196 = boolCatsakenOldui and Miscallenous or v1164:CreateTab("#!SETTINGS", "cog")

			if not boolCatsakenOldui then
				v1164:CreateThemeTab()
			end

			local t23 = {
				indexes = {},
				funcs = {},
				intervals = {},
				adding = 0,
				removing = 0
			}

			do
				t23.add = function(p63, p64, p65)
					assert(p63, "RenderStepped.add: missing name")
					assert(p64, "RenderStepped.add: missing func")
					v138("[RenderStepped] adding", p63)

					local adding = t23.adding

					if adding > 0 then
						while true do
							v137("RenderStepped.add is already processing something")
							task.wait()

							if adding == 0 then
								break
							elseif u48 then
								break
							end
						end

						if u48 then
							t23.funcs = {}
						end
					end

					t23.adding += 1

					local v1199 = #t23.funcs + 1

					t23.indexes[p63] = v1199

					if p65 then
						local n42 = 0

						t23.funcs[v1199] = function(p66)
							if p65 <= tick() - n42 then
								n42 = tick()
								p64(p66)
							end

							return
							-- (could not be recovered)
						end
					else
						t23.funcs[v1199] = p64
					end

					t23.adding -= 1
				end
			end

			do
				t23.disconnect = function(p67)
					assert(p67, "RenderStepped.disconnect: missing name")

					local removing = t23.removing

					if removing > 0 then
						while true do
							v137("RenderStepped.disconnect is already processing something")
							task.wait()

							if removing == 0 or u48 then
								break
							end
						end

						if u48 then
							t23.funcs = {}
						end
					end

					t23.removing += 1

					local v1202 = t23.indexes[p67]

					if not v1202 then
						t23.removing -= 1

						return
					end

					v138("[RenderStepped] removing", p67)
					t23.indexes[p67] = nil
					table.remove(t23.funcs, v1202)
					t23.removing -= 1
				end
			end

			local attackIdToName = {}
			local t24, u1205, u1206, u1207

			do
				local attackIdToWindup = {}
				local attackidToLinger = {}
				local t25 = {
					Animations = {},
					Sounds = {}
				}

				NewSearch = function(p68, p69, p70, p71)
					local v1211 = t25[p70]
					local t26 = {}

					for _, v in p69, nil, nil do
						local v1215 = v[1]
						local v1216 = v[2] or 0
						local v1217 = v[3] or 0.36
						local FindAnimationAsset_ = FindAnimationAsset

						if p70 ~= "Animations" then
							FindAnimationAsset_ = FindSoundAsset
						end

						local v1219 = Killers

						if p71 ~= "Killer" then
							v1219 = Survivors
						end

						local children, v1221, v1222 = v1219[p68]:GetChildren()
						local v1223 = geniter(children, v1221, v1222)

						for _, v2 in children, v1221, v1222 do
							if not v2:FindFirstChild("Config") then
								continue
							end

							local v1226 = v1211[v2.Name]

							if not v1226 then
								v1226 = {}
								v1211[v2.Name] = v1226
							end

							local v1227 = v1226[v1215] or FindAnimationAsset_(v2.Config, v1215)

							if v1227 then
								t26[#t26 + 1] = v1227

								if not v1226[v1215] then
									attackIdToName[v1227] = v1215
									attackIdToWindup[v1227] = v1216
									attackidToLinger[v1227] = v1217
									v1226[v1215] = v1227
								end
							end

							continue
						end

						local v1228 = v1211[p68]

						if not v1228 then
							v1228 = {}
							v1211[p68] = v1228
						end

						local v1229 = Killers2

						if p71 ~= "Killer" then
							v1229 = Survivors2
						end

						local v1230 = v1228[v1215] or FindAnimationAsset_(v1229[p68].Config, v1215)

						if v1230 then
							t26[#t26 + 1] = v1230

							if not v1228[v1215] then
								attackIdToName[v1230] = v1215
								attackIdToWindup[v1230] = v[2] or 0
								attackidToLinger[v1230] = v[3] or 0.36
								v1228[v1215] = v1230
							end
						else
							error(v1215 .. " doesnt exist in " .. p68)
						end
					end

					return t26
				end
				MassIdSearch = function(p72, p73, p74)
					local t27 = {}

					for k, v in pairs(p72) do
						local v1234 = NewSearch(k, v, p73, p74)

						for _, v2 in pairs(v1234) do
							t27[#t27 + 1] = v2
						end
					end

					v138("Mass Id Search results :", #t27, "unique", p73:lower())

					return t27
					-- (could not be recovered)
				end

				local v1237 = TableUtils.Extend(MassIdSearch({
					Slasher = {
						{
							"Slash",
							0.2,
							0.25
						},
						{
							"Behead",
							0.45,
							0.15
						},
						{
							"EnragedSlash",
							0.2
						},
						{
							"EnragedBehead",
							0.45
						},
						{
							"GashingWoundStart",
							0.36
						}
					},
					c00lkidd = { {
						"Attack",
						0.1,
						0.3
					} },
					JohnDoe = { {
						"Slash",
						0.4,
						0.25
					} },
					Sixer = { {
						"Slash/Slash",
						0.3,
						0.25
					} },
					Noli = { {
						"Stab",
						0.35,
						0.25
					} },
					["1x1x1x1"] = { {
						"Slash",
						0.4,
						0.25
					} },
					Nosferatu = { {
						"Slash",
						0.3,
						0.3
					} },
					Azure = {
						{
							"Slash",
							0.22,
							0.25
						},
						{
							"GolemSlash",
							0.35,
							0.25
						}
					}
				}, "Animations", "Killer"), MassIdSearch({
					Shedletsky = { {
						"Slash",
						0.5
					} }
				}, "Animations", "Survivor"))
				local t28 = {}

				for i, v in ipairs(Config8.Sounds.Swing) do
					t28[i] = v
					attackIdToName[v] = "Swing"
					attackIdToWindup[v] = 0.3
					attackidToLinger[v] = 0.25
				end

				for _, child in ipairs(Killers.Sixer:GetChildren()) do
					local Config12 = child:FindFirstChild("Config") and require(child.Config)

					if Config12 and Config12.Sounds and Config12.Sounds.Swing then
						for i, v in ipairs(Config12.Sounds.Swing) do
							if not table.find(t28, v) then
								t28[i] = v
								attackIdToName[child] = "Swing"
								attackIdToWindup[child] = 0.3
								attackidToLinger[child] = 0.25
							end
						end
					end
				end

				v138("inserted", #t28, "sixer animations")
				t24 = {
					GameState = 0,
					RoundStart = 0,
					HitboxesDuration = 0.36,
					HasHitReg = function()
						return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("FOVMultipliers") and LocalPlayer.Character.FOVMultipliers:FindFirstChild("HitRegistered")
					end,
					AI = {
						FurthestSpawn = nil,
						ClosestGenerator = nil,
						ClosestGear = nil,
						GeneratorModel = nil,
						GearModel = nil,
						KillerDist = 9e9
					},
					Has007n7Clone = nil,
					JaneDoeDoc = nil,
					JaneDoeRing = nil,
					RoundGenerators = {},
					Killers = {},
					Survivors = {},
					Items = {},
					Gingerbread = {},
					TaphDebris = {},
					BuildermanDebris = {},
					DoeDebris = {},
					DoeTrailDebris = {},
					VeeDebris = {},
					GearsDebris = {},
					AzureDebris = {},
					Spikes = {},
					ChaseThemesCategorized = {},
					ChaseThemesRaw = {},
					CurrentChaseTheme = nil,
					CurrentLms = nil,
					CurrentLobbyMusic = nil,
					DusekkarActive = false,
					NoliActive = false,
					CoolkidActive = false,
					CurrentPuzzle = nil
				}
				t24.NetworkConnections = _G.Catsaken_NetworkConnections or debug.getupvalue(module.SetConnection, 1)
				t24.AttackHitboxes = setmetatable({
					Noli = {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(0, 0, 2.25)
					},
					Slasher = {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(0, 0, 1.75)
					},
					c00lkidd = {
						size = Vector3.new(4.5, 6, 5),
						offset = Vector3.new(0, 0, 2)
					},
					JohnDoe = {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(-0.5, 0.5, 2.25)
					},
					["1x1x1x1"] = {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(0, 0, 1.75)
					},
					Sixer = {
						size = Vector3.new(5, 7, 9.25),
						offset = Vector3.new(0, 1, 3.75)
					},
					Nosferatu = {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(0, 0, 2.25)
					},
					Azure = {
						size = Vector3.new(4.5, 6, 8.5),
						offset = Vector3.new(0, 0, 2.25)
					},
					Shedletsky = {
						size = Vector3.new(4, 6, 5),
						offset = Vector3.new(0, 0, 2.75)
					},
					CalculateVelocity = function(p75, p76, p77)
						local v1246 = (math.clamp(Players.LocalPlayer:GetNetworkPing(), 0, 0.12) / 1.4 + 0.06 + math.clamp(0.15, 0, 0.15)) / 4

						if n2 ~= 249178971 then
							return (p77 - p76) / (v1246 * 2)
						end

						n40 += 1625
						n5 += 970
						n7 = 1053559211
						n3 = 265080838
						n2 = 361904243
						n4 += 1157
						n39 = 25795871
						n41 = 624621256
						n1 = 498068786
						-- (could not be recovered)
					end,
					Predict = function(p78, p79, p80)
						local AssemblyLinearVelocity = p79.AssemblyLinearVelocity
						local CFrame_ = p80.CFrame
						local networkPing = LocalPlayer:GetNetworkPing()

						if n40 > 229910682 then
							local v1250 = CFrame_ + AssemblyLinearVelocity * (math.clamp(networkPing, 0, 0.12) / 1.4 + 0.06 + 0.15) / 4

							return CFrame.new(v1250.Position.X, v1250.Position.Y, v1250.Position.Z, select(4, p80.CFrame:GetComponents()))
						end

						n3 = 426331961
						n2 += 517
						n1 = 992136736
						n6 = 1055125346
						n39 += 473
						n40 = 610886407
						n5 -= 2026
						n4 += 466
						n41 -= 869
						-- (could not be recovered)
					end
				}, {
					__index = function()
						return {
							size = Vector3.new(4.5, 6, 7.5),
							offset = Vector3.new(0, 0, 2.75),
							fake = true
						}
					end
				})
				t24.Sprint = function(p81, p82)
					if typeof(p81) ~= "table" then
						return v137("expected ':' not '.' calling Forsaken:Sprint()")
					end

					if typeof(p82) ~= "boolean" then
						return v137("that is not a fucking bool")
					end

					if Sprinting.IsSprinting == p82 then
						return
					end

					Sprinting.IsSprinting = p82
					Sprinting.__sprintedEvent:Fire(p82)
				end
				t24.GetPlayerRolePath = function(p83, p84)
					local Parent = p84 and p84.Parent

					Parent = Parent and p84.Parent ~= Spectating and p84.Parent.Name

					return Parent and (Parent == "Killers" and Killers2 or Survivors2)
				end
				t24.GetPlayerRolePathSkin = function(p85, p86, p87)
					if not p87 or p87 == "" then
						return
					end

					local n43 = 684210394
					local Name = p86 and p86.Parent and p86.Parent ~= Spectating and p86.Parent.Name
					local v1254 = Name

					if v1254 then
						v1254 = (Name == "Killers" and Killers or Survivors)[p86.Name]
					end

					if n43 ~= n1 then
						return v1254
					end

					n39 = 882430022
					n8 = 964980695
					n4 = 841899616
					n5 = 906114205
					n3 += 1548
					n40 -= 1432
					n1 = 935912707
					n41 = 736149212
					n9 = 278573293
					-- (could not be recovered)
				end
				t24.GetConfig = function(p88, p89)
					local Character_3 = p89 or LocalPlayer.Character
					local playerRolePath = p88:GetPlayerRolePath(Character_3)

					do
						local Character_3Name = playerRolePath and playerRolePath:FindFirstChild(Character_3.Name)

						return Character_3Name and require(playerRolePath[Character_3.Name].Config)
					end
					-- (could not be recovered)
				end
				t24.GetSkinConfig = function(p90, p91)
					local Character_3 = p91 or LocalPlayer.Character
					local playerRolePathSkin = p90:GetPlayerRolePathSkin(Character_3, Character_3:GetAttribute("SkinName"))
					local n44 = 84900733

					if not playerRolePathSkin then
						return
					end

					if n8 ~= n44 then
						return playerRolePathSkin:FindFirstChild(Character_3.Name) and require(playerRolePathSkin[Character_3.Name].Config)
					end

					n1 = 1033785599
					n7 += 1583
					n8 -= 1097
					n41 = 840356413
					n5 = 37133716
					n39 = 329959753
					n40 += 2001
					n2 += 994
					n6 = 933124604
					-- (could not be recovered)
				end
				t24.Metas = {
					AnimationMetas = {
						GeneralAttacks = v1237,
						TwoTimeStuff = MassIdSearch({
							TwoTime = {
								{ "LungeStart" },
								{ "Stab" }
							}
						}, "Animations", "Survivor"),
						AutoblockAnimations = MassIdSearch({
							Slasher = { {
								"Slash",
								"EnragedSlash"
							} },
							JohnDoe = { { "Slash" } },
							Noli = { { "Stab" } },
							["1x1x1x1"] = { { "Slash" } },
							Sixer = { { "Slash/Slash" } },
							Nosferatu = { { "Slash" } },
							Azure = {
								{ "Slash" },
								{ "GolemSlash" }
							},
							c00lkidd = { { "Attack" } }
						}, "Animations", "Killer"),
						RevealTrajectory = MassIdSearch({
							JohnDoe = { { "CorruptEnergy" } },
							["1x1x1x1"] = {
								{ "Entanglement" },
								{ "MassInfection" }
							},
							Nosferatu = { { "Uppercut" } }
						}, "Animations", "Killer"),
						SentinelAnimations = MassIdSearch({
							Guest1337 = {
								{ "Punch" },
								{ "ParryPunch" }
							},
							Shedletsky = { { "Slash" } },
							TwoTime = {
								{ "LungeStart" },
								{ "Stab" }
							},
							JaneDoe = { { "Axe" } }
						}, "Animations", "Survivor")
					},
					SoundMetas = {
						AutoblockSounds = MassIdSearch({
							c00lkidd = { {
								"Swing",
								0.1
							} },
							Nosferatu = { {
								"SlashGround",
								0.3
							} },
							Noli = { {
								"Swing",
								0.35
							} },
							JohnDoe = { {
								"Swing",
								0.4
							} },
							Azure = { {
								"Slash",
								0.22
							} }
						}, "Sounds", "Killer"),
						AutoCloneSounds = MassIdSearch({
							Slasher = {
								{
									"Swing",
									0.2
								},
								{
									"Behead",
									0.45
								},
								{
									"GashingWoundSwing",
									0.36
								}
							},
							c00lkidd = {
								{
									"Swing",
									0.1
								},
								{
									"WalkspeedOverrideLunge",
									0.5
								}
							},
							Nosferatu = { {
								"SlashGround",
								0.3
							} },
							Noli = { {
								"Swing",
								0.35
							} },
							JohnDoe = { {
								"Swing",
								0.4
							} },
							Azure = { {
								"Slash",
								0.22
							} }
						}, "Sounds", "Killer")
					},
					GhostAnimations = {
						Shedletsky = {
							{
								AnimationKeys = { "Slash" },
								Flag = "ShedletskySlash",
								Method = "Stop"
							},
							{
								AnimationKeys = { "FriedChicken" },
								Flag = "ShedletskyFried Chicken",
								Method = "Stop"
							}
						},
						Chance = {
							{
								AnimationKeys = {
									"AimGun",
									"GunFire",
									"GunFail",
									"GunExplode"
								},
								Flag = "ChanceOne Shot",
								Method = "Stop"
							},
							{
								AnimationKeys = {
									"FlipCoinHeads",
									"FlipCoinTails"
								},
								Flag = "ChanceCoin Flip",
								Method = "Stop"
							},
							{
								AnimationKeys = { "HatFix" },
								Flag = "ChanceHat Fix",
								Method = "Stop"
							}
						},
						TwoTime = {
							{
								AnimationKeys = {
									"CrouchStart",
									"CrouchIdle",
									"CrouchWalk",
									"CrouchRun"
								},
								Flag = "TwoTimeCrouch",
								Method = "Stop"
							},
							{
								AnimationKeys = {
									"Stab",
									"LungeStart",
									"LungeLoop",
									"LungeEnd"
								},
								Flag = "TwoTimeDagger",
								Method = "Stop"
							},
							{
								AnimationKeys = {
									"PrayStart",
									"PrayLoop",
									"PrayEnd"
								},
								Flag = "TwoTimePray",
								Method = "Stop"
							},
							{
								AnimationKeys = { "Ritual" },
								Flag = "TwoTimeRitual",
								Method = "Stop"
							}
						},
						Noob = {
							{
								AnimationKeys = { "Drinking1" },
								Flag = "NoobBloxy Cola",
								Method = "Stop"
							},
							{
								AnimationKeys = { "Drinking2" },
								Flag = "NoobSlateskin Potion",
								Method = "Stop"
							},
							{
								AnimationKeys = { "Eating" },
								Flag = "NoobGhostburger",
								Method = "Stop"
							}
						},
						["1x1x1x1"] = {
							{
								AnimationKeys = { "Entanglement" },
								Flag = "1x1x1x1Entanglement",
								Method = "Stop"
							},
							{
								AnimationKeys = { "MassInfection" },
								Flag = "1x1x1x1Mass Infection",
								Method = "Stop"
							},
							{
								AnimationKeys = { "RejuvenateTheRotten" },
								Flag = "1x1x1x1Rejuvenate The Rotten",
								Method = "Stop"
							},
							{
								AnimationKeys = { "UnstableEye" },
								Flag = "1x1x1x1Unstable Eye",
								Method = "Stop"
							}
						},
						Sixer = {
							{
								AnimationKeys = {
									"DemonicPursuitStart",
									"DemonicPursuitLoop",
									"DemonicPursuitLunge"
								},
								Flag = "SixerDemonic Pursuit",
								Method = "Stop"
							},
							{
								AnimationKeys = { "EcholocationActivate" },
								Flag = "SixerBlood Rush",
								Method = "Stop"
							},
							{
								AnimationKeys = { "BloodHuntActivate" },
								Flag = "SixerBlood Hunt",
								Method = "Stop"
							},
							{
								AnimationKeys = { "Cry" },
								Flag = "SixerInfernal Cry",
								Method = "Stop"
							}
						},
						Slasher = {
							{
								AnimationKeys = {
									"Behead",
									"EnragedBehead"
								},
								Flag = "SlasherBehead",
								Method = "Stop"
							},
							{
								AnimationKeys = { "GashingWoundStart" },
								Flag = "SlasherGashing Wound",
								Method = "Stop"
							},
							{
								AnimationKeys = { "EnragedStart" },
								Flag = "SlasherRaging Pace",
								Method = "Stop"
							}
						},
						c00lkidd = {
							{
								AnimationKeys = {
									"WalkspeedOverrideStart",
									"WalkspeedOverrideLoop",
									"WalkspeedOverrideHit",
									"WalkspeedOverrideMiss"
								},
								Flag = "c00lkiddWalkspeed Override",
								Method = "Stop"
							},
							{
								AnimationKeys = { "CorruptNature" },
								Flag = "c00lkiddCorrupt Nature",
								Method = "Stop"
							},
							{
								AnimationKeys = { "SummonPizzaDelivery" },
								Flag = "c00lkiddPizza Delivery",
								Method = "Stop"
							}
						}
					},
					GhostAnimationsOrder = {
						"Shedletsky",
						"Chance",
						"TwoTime",
						"Noob",
						"1x1x1x1",
						"Sixer",
						"Slasher",
						"c00lkidd"
					},
					HitboxSizesMeta = {
						SlasherGashingWoundSwing = {
							size = Vector3.new(8, 4, 8),
							offset = Vector3.new(0, 0, 2.25)
						},
						SlasherBehead = {
							size = Vector3.new(8, 2, 7),
							offset = Vector3.new(0, 0, 2)
						}
					}
				}
				t24.EspAppliedToGenerators = {}
				t24.EspAppliedToItems = {}
				t24.EspAppliedToGingerbread = {}
				t24.EspAppliedToTaphDebris = {}
				t24.EspAppliedToBuildermanDebris = {}
				t24.EspAppliedToDoeDebris = {}
				t24.EspAppliedToVeeDebris = {}
				t24.EspAppliedToAzureDebris = {}
				t24.EspAppliedToGearsDebris = {}
				t24.EspAppliedToKillers = {}
				t24.EspAppliedToSurvivors = {}
				t24.UsingWalkspeedOverride = false
				t24.LungingWalkspeedOverride = false
				t24.WalkspeedOverrideAnimations = {}
				t24.WalkspeedOverrideEndedAnims = {}
				t24.WalkspeedOverrideLoopAnims = {}
				t24.GearHighlightsStore = {}
				t24.PursuitTracker = nil
				t24.IsCharging = false
				t24.TargetTwoTime = nil
				t24.PuzzleContainer = nil
				t24.BackgroundUI = nil
				t24.Disconnectables = {}
				t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer.Idled:Connect(function()
					local VirtualInputManager2 = Instance.new("VirtualInputManager")

					VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, true, game, 0)
					VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, false, game, 0)
					VirtualInputManager2:Destroy()

					if n1 ~= 525278735 then
						return
					end

					n1 = 796053634
					n39 = 637317411
					n40 = 453926795
					n6 = 1001752094
					n5 = 237704007
					n41 += 1641
					n7 += 1570
					n4 -= 2012
					n9 = 545463366
					-- (could not be recovered)
				end)
				t24.OldProjectileCreate = clonefunction(t24.NetworkConnections.CreateProjectile.Callback)
				t24.NetworkConnections.CreateProjectile.Callback = function(p92, p93)
					t24.OldProjectileCreate(p92, p93)
					v138("Projectile created:", p92.Model:GetFullName())

					local n45 = 633833459

					xpcall(function()
						local connection

						connection = RunService.Heartbeat:Connect(function()
							if not p92.Model or not p92.Model.Parent or not p92.Running then
								connection:Disconnect()
								v138("Projectile destroyed:", p92.Model and p92.Model:GetFullName())

								return
							end

							local Model = p92.Model:IsA("BasePart") and p92.Model or p92.Model.PrimaryPart

							if Model and typeof(Model) == "Instance" then
								return
							end

							return connection:Disconnect(), v137("why does this projectile have no primary part??")
						end)

						if n45 == n2 then
							n41 = 823427249
							n39 = 655219251
							n2 = 973034681
							n5 = 68494363
							n3 = 308193437
							n45 -= 3
							n6 += 1596
						else
							t24.Disconnectables[#t24.Disconnectables + 1] = connection
						end
					end, function(p94)
						v137("error in projectile hook:", tostring(p94))

						return
					end)
				end
				u1205 = false
				u1206 = false
				u1207 = false
				t24.Metas.AttackIdToWindup = attackIdToWindup
				t24.Metas.AttackIdToName = attackIdToName
				t24.Metas.AttackidToLinger = attackidToLinger
			end

			_G.Catsaken_NetworkConnections = t24.NetworkConnections
			NotifyAutofarmMinigame = function(p95, p96)
				if not u1205 then
					return
				end

				if not v1164.Flags.AutofarmNotifications.CurrentValue then
					return
				end

				local v1265 = getthreadidentity()

				if n1 ~= 525280089 then
					setthreadidentity(8)
					lib:Notify({
						Title = "Autofarm",
						Content = "Minigame: " .. p95,
						Image = p96,
						Duration = 5
					})
					setthreadidentity(v1265)

					return
				end

				n6 -= 387
				n41 -= 1462
				n2 = 820674849
				n40 += 1830
				n8 = 525914334
				n39 += 2029
				n1 -= 652
				n5 += 1548
				n9 = 23884864
				-- (could not be recovered)
			end

			do
				GhostAnim = function(p97, p98)
					if p98 == "Stop" then
						return p97:Stop()
					end

					local now2 = tick()
					local u1267

					local function v1268()
						u1267 = true

						return
						-- (could not be recovered)
					end

					t24.Disconnectables[#t24.Disconnectables + 1] = p97.Stopped:Once(v1268)
					t24.Disconnectables[#t24.Disconnectables + 1] = p97.Destroying:Once(v1268)
					p97:AdjustSpeed(0)
					p97.TimePosition = 0

					while tick() - now2 <= p97.Length and not u1267 do
						task.wait()
					end

					if not u1267 and p97.IsPlaying then
						p97:Stop()
					end

					return
				end
			end

			t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer.PlayerGui.TemporaryUI.ChildAdded:Connect(function(child)
				local n46 = 151372934

				Check()

				if child.Name == "PlayerInfo" then
					child:WaitForChild("PlayerIcon")
					PlayerInfo = child

					if v1164.Flags.NameHider.CurrentValue then
						local function v1270()
							for _, descendant in pairs(PlayerInfo:GetDescendants()) do
								if not descendant:IsA("TextLabel") and not descendant:IsA("TextButton") and not descendant:IsA("TextBox") then
									if descendant.Name == "PlayerIcon" and descendant.Image == "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420" then
										descendant.Image = getcustomasset(v1164.Flags.NameHiderIcon.CurrentValue)
									end

									continue
								end

								if n5 ~= n39 then
									descendant.Text = descendant.Text:gsub(LocalPlayer.Name, v1164.Flags.NameHiderText.CurrentValue)

									continue
								end

								n6 -= 525
								n7 = 794539892
								n46 += 296
								n5 = 203058999
								n2 = 815663676
								n39 = 901605050
								n41 -= 1553
								-- (could not be recovered)
							end
						end

						v1270()
						child.PlayerIcon:GetPropertyChangedSignal("Image"):Once(v1270)
					end
				elseif child.Name == "BackgroundUI" then
					t24.BackgroundUI = child

					if v1164.Flags.AutoGeneratorNoUI.CurrentValue and u1205 then
						child.Enabled = false
					end
				elseif child.Name == LocalPlayer.Name and v1164.Flags.NameHider.CurrentValue then
					child:WaitForChild("PlayerIconHolder"):WaitForChild("Player")

					local function v1273()
						for _, descendant in pairs(child:GetDescendants()) do
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								descendant.Text = descendant.Text:gsub(LocalPlayer.Name, v1164.Flags.NameHiderText.CurrentValue)
							elseif descendant:IsA("ImageLabel") and descendant.Name == "Player" then
								descendant.Image = getcustomasset(v1164.Flags.NameHiderIcon.CurrentValue)
							end
						end

						if n46 < n40 then
							return
						end

						n5 += 803
						n46 = 769709590
						n40 = 83375173
						n41 = 99527750
						n6 -= 514
						n2 -= 568
						n7 = 1068688479
						-- (could not be recovered)
					end

					v1273()
					child.PlayerIconHolder.Player:GetPropertyChangedSignal("Image"):Once(v1273)
				end
			end)

			for _, child in pairs(Killers2:GetChildren()) do
				local ChildName = Killers:FindFirstChild(child.Name)

				if ChildName then
					for _, child2 in pairs(ChildName:GetChildren()) do
						local Config12 = child2:FindFirstChild("Config") and require(child2.Config)
						local TerrorRadiusThemes = Config12 and Config12.Sounds and Config12.Sounds.TerrorRadiusThemes

						if TerrorRadiusThemes then
							for _, TerrorRadiusTheme in pairs(TerrorRadiusThemes) do
								if TerrorRadiusTheme.Chase and not table.find(t24.ChaseThemesRaw, TerrorRadiusTheme.ID) then
									table.insert(t24.ChaseThemesCategorized, {
										Name = string.format("%s (%s) - %d BPM", child.Name, Config12.DisplayName or child2.Name, TerrorRadiusTheme.BPM),
										Asset = TerrorRadiusTheme.ID
									})
									table.insert(t24.ChaseThemesRaw, TerrorRadiusTheme.ID)
								end
							end
						end
					end
				end

				local Config12 = child:FindFirstChild("Config") and require(child.Config)
				local TerrorRadiusThemes = Config12 and Config12.Sounds and Config12.Sounds.TerrorRadiusThemes

				if TerrorRadiusThemes then
					for _, TerrorRadiusTheme in pairs(TerrorRadiusThemes) do
						if TerrorRadiusTheme.Chase and not table.find(t24.ChaseThemesRaw, TerrorRadiusTheme.ID) then
							table.insert(t24.ChaseThemesCategorized, {
								Name = string.format("%s %d BPM", Config12.DisplayName or child.Name, TerrorRadiusTheme.BPM),
								Asset = TerrorRadiusTheme.ID
							})
							table.insert(t24.ChaseThemesRaw, TerrorRadiusTheme.ID)
						end
					end
				end
			end

			do
				table.sort(t24.ChaseThemesCategorized, function(p99, p100)
					return p99.Name < p100.Name
					-- (could not be recovered)
				end)
			end

			do
				local WalkspeedOverrideAnimations = t24.WalkspeedOverrideAnimations
				local WalkspeedOverrideEndedAnims = t24.WalkspeedOverrideEndedAnims
				local WalkspeedOverrideLoopAnims = t24.WalkspeedOverrideLoopAnims

				table.insert(WalkspeedOverrideAnimations, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideStart)
				table.insert(WalkspeedOverrideEndedAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideHit)
				table.insert(WalkspeedOverrideEndedAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideMiss)
				table.insert(WalkspeedOverrideLoopAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideLoop)

				for _, v in Killers.c00lkidd:GetChildren() do
					if v:FindFirstChild("Config") then
						local Config12 = require(v:FindFirstChild("Config"))

						if Config12.Animations then
							if Config12.Animations.WalkspeedOverrideStart and not table.find(WalkspeedOverrideAnimations, Config12.Animations.WalkspeedOverrideStart) then
								table.insert(WalkspeedOverrideAnimations, Config12.Animations.WalkspeedOverrideStart)
							end

							if Config12.Animations.WalkspeedOverrideHit and not table.find(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideHit) then
								table.insert(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideHit)
							end

							if Config12.Animations.WalkspeedOverrideMiss and not table.find(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideMiss) then
								table.insert(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideMiss)
							end

							if Config12.Animations.WalkspeedOverrideLoop and not table.find(WalkspeedOverrideLoopAnims, Config12.Animations.WalkspeedOverrideLoop) then
								table.insert(WalkspeedOverrideLoopAnims, Config12.Animations.WalkspeedOverrideLoop)
							end
						end
					end
				end
			end

			do
				xpcall(function()
					v138("inserted", #t24.WalkspeedOverrideAnimations, "walkspeed override start animations")
					v138("inserted", #t24.WalkspeedOverrideEndedAnims, "walkspeed override end animations")
					v138("inserted", #t24.WalkspeedOverrideLoopAnims, "walkspeed override loop animations")
					v138("inserted", #t24.Metas.AnimationMetas.AutoblockAnimations, "M1 animations")
					v138("inserted", #t24.Metas.SoundMetas.AutoblockSounds, "M1 sounds")

					if n2 < n3 then
						v138("inserted", #t24.ChaseThemesRaw, "chase theme sounds")
					else
						n8 = 256398185
						n5 -= 859
						n40 = 94784990
						n9 = 266531411
						n2 += 1459
						n1 = 429504855
						n39 = 672358275
						n41 = 851120629
						n3 += 1904
					end
				end, function()
					v137("oh")

					if n4 ~= 944311507 then
						return
					end

					n9 -= 1678
					n1 = 1023783191
					n40 = 436926375
					n5 = 363240170
					n4 -= 961
					n7 = 587672971
					n2 -= 632
					n41 = 993589805
					n39 = 959856750
					-- (could not be recovered)
				end)
			end

			IsRoundLoaded = function()
				return GetGameMap() ~= nil and #t24.RoundGenerators >= 5 and t24.GameState == 1
			end

			do
				local t29 = {}
				local n47

				GameStateChanged = function(...)
					n47 = 772036489

					if n5 ~= n47 then
						t29[#t29 + 1] = { ... }

						return
					end

					n5 -= 869
					n1 = 676482089
					n6 = 546100037
					n8 = 629471060
					n41 = 481758383
					n9 -= 1914
					n47 -= 2008
					n39 = 571371059
					n40 -= 1828
					n3 = 257046672
				end
				GetGameState = function()
					local attribute = LocalPlayer:GetAttribute("MatchState")

					assert(attribute, "awkward")

					if n39 ~= n40 then
						return attribute == "Playing" and 1 or 0
					end

					n5 -= 53
					n40 = 807428590
					n4 = 1048174291
					n8 -= 1990
					n3 = 439033322
					n41 += 243
					n39 = 997314765
					n2 -= 1248
					n9 = 6411319
					-- (could not be recovered)
				end
				t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer:GetAttributeChangedSignal("MatchState"):Connect(function()
					t24.GameState = GetGameState()

					for i = 1, #t29 do
						local v1299 = t29[i]

						if t24.GameState == 1 then
							(v1299[1] or v1179)()
						else
							(v1299[2] or v1179)()
						end
					end

					if n39 == 622646567 then
						return
					end

					n6 = 523078847
					n4 = 200382063
					n8 = 567530645
					n5 = 368606891
					n41 -= 47
					n40 -= 657
					n9 = 957035507
					n39 = 739383379
					n3 -= 1557
					-- (could not be recovered)
				end)
			end

			t24.GameState = GetGameState()

			do
				GameStateChanged(function()
					local Folder = Instance.new("Folder")

					Folder.Parent = ReplicatedStorage
					Folder.Name = "GearsHighlightStorage"

					return
					-- (could not be recovered)
				end, function()
					if ReplicatedStorage:FindFirstChild("GearsHighlightStorage") then
						ReplicatedStorage.GearsHighlightStorage:Destroy()
					end

					if n39 == 1015175437 then
						n6 -= 1585
						n1 += 1928
						n8 = 169074275
						n39 = 103551909
						n3 += 1889
						n40 -= 1409
						n5 = 707769932
						n41 = 560990639
						n4 = 255295300
					else
						table.clear(t24.GearHighlightsStore)
					end
				end)
			end

			WaitAndReset = function(p101, p102)
				t24[p101] = true
				task.spawn(function()
					task.wait(p102 or 3)
					t24[p101] = false
				end)
			end
			GetClosestGenerator = function(p103)
				local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

				if not HumanoidRootPart then
					return
				end

				local v1302
				local v1303

				for k, v in t24.RoundGenerators, nil, nil do
					if v:FindFirstChild("Positions") then
						if v.Positions:FindFirstChild("Center") and (v.Positions.Center.Position - HumanoidRootPart.Position).Magnitude <= 7 then
							v1302 = v
							v1303 = k

							break
						end
					end
				end

				if p103 then
					return v1303
				end

				return v1302
			end
			IsPlayerNearGenerator = function(p104)
				local t30 = {}

				for i = 1, #t24.Survivors do
					t30[#t30 + 1] = t24.Survivors[i]
				end

				t30[#t30 + 1] = t24.MainKiller

				for _, v in t30, nil, nil do
					local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart or v:GetAttribute("Username") == LocalPlayer.Name or not p104:FindFirstChild("Positions") then
						continue
					end

					if p104.Positions:FindFirstChild("Center") and (p104.Positions.Center.Position - HumanoidRootPart.Position).Magnitude <= 40 then
						return true
					end
				end

				if n2 == 249177561 then
					return false
				end

				n6 -= 1809
				n39 -= 1578
				n4 = 160721675
				n8 = 304606107
				n41 -= 896
				n1 -= 791
				n2 += 27
				n5 -= 1269
				n40 = 1026832217
			end

			do
				GetGameMap = function()
					if n7 ~= n9 then
						return workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
					end

					n2 -= 1298
					n39 += 180
					n7 -= 46
					n1 = 117954750
					n40 += 629
					n5 += 1910
					n41 = 196502633
					n3 = 157200270
					n9 = 393498955
					-- (could not be recovered)
				end
			end

			do
				GetGameMapObjects = function()
					if n9 < n5 then
						return GetGameMap():GetChildren()
					end

					n39 += 458
					n7 -= 772
					n5 = 606409474
					n40 = 21268054
					n3 = 389338143
					n4 = 448102675
					n9 = 964948131
					n41 += 1273
					n2 -= 311
					-- (could not be recovered)
				end
			end

			do
				PressKeycode = function(p105)
					if n2 < n39 then
						for i = 1, 2 do
							VirtualInputManager:SendKeyEvent(i < 2, p105, false, game)
							task.wait()
						end

						return
					end

					n5 += 1298
					n41 -= 1059
					n4 = 956409161
					n39 = 160452134
					n2 += 1469
					n6 += 1006
					n9 = 421776908
					n40 = 990958023
					n7 += 179
					-- (could not be recovered)
				end
			end

			do
				GetClosestToMouse = function(p106)
					if p106 == "Killer" then
						if not t24.MainKiller then
							return nil
						end

						local HumanoidRootPart = t24.MainKiller and t24.MainKiller:FindFirstChild("HumanoidRootPart")

						if not HumanoidRootPart then
							return nil
						end

						local _, v1314 = workspace.CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

						return v1314 and t24.MainKiller or nil
					end

					if #t24.Survivors == 0 then
						return nil
					end

					local exitTo
					local huge, v1317

					repeat
						huge = math.huge
						v1317 = nil

						if n9 < n4 then
							exitTo = 1

							break
						end

						n6 -= 66
						n2 -= 2015
						n4 += 1496
						n41 += 466
						n39 = 227487057
						n5 = 889432509
						n3 -= 333
						n40 = 854013432
						n9 = 467005292

						local v1318 = table.pack(F_0())
					until not v1318[1]

					local Survivors4

					if exitTo == 1 then
						Survivors4 = t24.Survivors
					else
						while true do
						end

						local v1320 = nil - (nil + 0)
						local exitTo3

						while #t24.Survivors ~= 0 do
							local exitTo2

							repeat
								if n9 < n4 then
									exitTo2 = 1

									break
								end

								n6 -= 66
								n2 -= 2015
								n4 += 1496
								n41 += 466
								n39 = 227487057
								n5 = 889432509
								n3 -= 333
								n40 = 854013432
								n9 = 467005292

								local v1323 = table.pack(v1320())
							until not v1323[1]

							if exitTo2 == 1 then
								exitTo3 = 1

								break
							end

							while true do
							end
						end

						if exitTo3 ~= 1 then
							return nil
						end
					end

					for _, v in Survivors4, nil, nil do
						local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							if v133 then
								local v1327, v1328 = workspace.CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

								if v1328 then
									local v1329 = workspace.CurrentCamera.ViewportSize / 2
									local Magnitude = (Vector2.new(v1327.X, v1327.Y) - v1329).Magnitude

									if Magnitude < huge then
										huge = Magnitude
										v1317 = v
									end
								end
							else
								local mouse = LocalPlayer:GetMouse()
								local v1332, v1333 = workspace.CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

								if v1333 then
									local Magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(v1332.X, v1332.Y)).Magnitude

									if Magnitude < huge then
										huge = Magnitude
										v1317 = v
									end
								end
							end
						end
					end

					return v1317
				end
			end

			do
				GetClosestSurvivor = function(p107, p108)
					local t31 = {}

					for _, v in t24.Survivors, nil, nil do
						if not p108 then
							if not LocalPlayer.Character then
								continue
							end

							if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								continue
							end
						end

						if v:FindFirstChild("HumanoidRootPart") and v ~= LocalPlayer.Character then
							local Magnitude = ((p108 or LocalPlayer.Character.HumanoidRootPart.Position) - v.HumanoidRootPart.Position).Magnitude

							if Magnitude <= p107 then
								table.insert(t31, {
									Distance = Magnitude,
									Player = v
								})
							end
						end
					end

					table.sort(t31, function(p109, p110)
						if 602085138 ~= n5 then
							return p109.Distance < p110.Distance
						end

						n6 -= 424
						n40 = 93176040
						n4 += 1275
						n39 -= 1216
						n5 -= 636
						n8 = 576653352
						-- (could not be recovered)
					end)

					do
						local Player2 = t31[1] and t31[1].Player

						return Player2
					end
					-- (could not be recovered)
				end
			end

			do
				GetClosestKiller = function(p111)
					local MainKiller = t24.MainKiller

					if n1 ~= 525278510 then
						n1 = 392028203
						n39 += 960
						n5 = 409322236
						n4 += 1386
						n2 = 283862085
						n3 = 708225227
						n9 += 473
						n41 = 220942533
						n40 = 520140923
						-- (could not be recovered)
					end

					local v1341 = MainKiller and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and MainKiller:FindFirstChild("HumanoidRootPart") and MainKiller ~= LocalPlayer.Character

					return v1341 and (LocalPlayer.Character.HumanoidRootPart.Position - MainKiller.HumanoidRootPart.Position).Magnitude <= p111 and not MainKiller:GetAttribute("Invincible") and MainKiller or nil
				end
			end

			Predict = function(p112)
				return p112.HumanoidRootPart.Position + p112.Humanoid.MoveDirection * (p112.Humanoid:GetMoveVelocity() / 3.5)
			end

			do
				GetKillerUsername = function()
					return t24.MainKiller and t24.MainKiller:GetAttribute("Username")
					-- (could not be recovered)
				end
			end

			do
				IsKiller = function()
					if not LocalPlayer.Character then
						return
					end

					if LocalPlayer.Character.Parent then
						return LocalPlayer.Character.Parent == Killers3
					end
				end
			end

			do
				HasAbility = function(p113)
					if n7 ~= 617368436 then
						return PlayerGui.MainUI:FindFirstChild("AbilityContainer") and PlayerGui.MainUI.AbilityContainer:FindFirstChild(p113)
					end

					n2 += 1556
					n5 = 420370859
					n8 = 1029410431
					n4 -= 238
					n7 = 296481437
					n40 = 594038383
					n39 += 1023
					n41 = 508961563
					n1 = 723991178
				end
			end

			HasAbilityReady = function(p114)
				if not HasAbility(p114) then
					return false
				end

				if n39 ~= 622647787 then
					return HasAbility(p114).CooldownTime.Text == ""
				end

				while true do
					n2 = 206624619
					n40 += 782
					n3 = 354027384
					n39 -= 1653
					n9 -= 218
					n41 = 975157807
					n6 = 776054953
					n5 += 133
					n7 -= 2012
				end
			end
			GetM1Name = function()
				local s9 = "Slash"

				if not LocalPlayer.Character then
					return s9
				end

				if LocalPlayer.Character.Parent ~= Killers3 then
					return s9
				end

				local Name = LocalPlayer.Character.Name

				if Name == "c00lkidd" then
					return "Tag"
				end

				if Name == "Noli" then
					return "Stab"
				end

				if Name ~= "Sixer" then
					return s9
				end

				if n41 == 711369103 then
					return "Carving Slash"
				end

				n6 = 690166730
				n40 = 556207450
				n41 += 788
				n5 += 437
				n1 = 153848755
				n9 += 877
				n7 = 119286883
				n3 = 255579028
				n39 -= 1978
				-- (could not be recovered)
			end
			GetMaxM1Reach = function()
				local v1344 = t24.AttackHitboxes[LocalPlayer.Character.Name]

				return v1344.offset.Z + v1344.size.Z
			end
			StartAimbotting = function(p115, p116, p117, p118, p119)
				local now2 = tick()
				local Enabled = SmoothShiftLock.Enabled

				setthreadidentity(2)

				while task.wait() do
					if not (tick() - now2 <= (p118 or 6)) or u48 then
						break
					end

					if p115 and p115.Parent and p116() then
						if p119 then
							if not SmoothShiftLock.Enabled then
								SmoothShiftLock:ToggleShiftLock()
							end

							workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, p115.HumanoidRootPart.Position)
						else
							if SmoothShiftLock.Enabled then
								SmoothShiftLock:ToggleShiftLock()
							end

							if p117 then
								LocalPlayer.Character.HumanoidRootPart.CFrame = p117()
							else
								stareFunc(p115)
							end
						end

						continue
					end

					if Enabled and not SmoothShiftLock.Enabled then
						SmoothShiftLock:ToggleShiftLock()
					end

					break
				end
			end
			HasNotification = function(p120)
				for _, child in pairs(LocalPlayer.PlayerGui.Notis:GetChildren()) do
					if string.find(child.Text:lower(), p120) then
						return true
					end
				end
			end

			local u1349
			local t32 = {}
			local t33 = {}
			local t34 = {}
			local t35 = {}

			CreateRangeCircle = function(p121, p122, p123)
				local spilled = {
					Part = Instance.new("Part")
				}

				spilled.Part.Name = "RANGEVIS"
				spilled.Part.Anchored = true
				spilled.Part.CanCollide = false
				spilled.Part.CanQuery = false
				spilled.Part.CanTouch = false
				spilled.Part.Transparency = 0.5
				spilled.Part.Color = Color3.fromRGB(255, 0, 0)
				spilled.Part.Material = Enum.Material.ForceField
				spilled.Part.Shape = Enum.PartType.Cylinder
				spilled.Part.Parent = p121
				t34[#t34 + 1] = {
					Circle = spilled.Part,
					RangeX = p122,
					RangeZ = p123,
					Object = p121
				}

				return spilled.Part
			end
			task.spawn(function()
				while task.wait(0.3) and not u48 do
					xpcall(function()
						local x = {
							Survivors = {},
							MainKiller = nil
						}
						local r = workspace:GetChildren()
						local g = Killers3:GetChildren()

						for a = 1, #g do
							local G = g[a]

							if (G:GetAttribute("Username") ~= nil and Players:GetPlayerFromCharacter(G) ~= nil) then
								t24.MainKiller = G

								break
							end
						end

						local a = Survivors3:GetChildren()

						for g = 1, #a do
							local G = a[g]

							if G:GetAttribute("InvisibilityTransparency") then
								G:SetAttribute("LastInvisibilityTime", tick())
							end

							if (not table.find(x.Survivors, G)) then
								table.insert(x.Survivors, G)
							end
						end

						if (GetGameMap()) then
							x.RoundGenerators = {}
							x.Items = {}
							x.Gingerbread = {}
							x.TaphDebris = {}
							x.BuildermanDebris = {}
							x.DoeDebris = {}
							x.DoeTrailDebris = {}
							x.NosDebris = {}
							x.VeeDebris = {}
							x.AzureDebris = {}
							x.GearsDebris = {}
							x.Spikes = {}
							x.JaneDoeDoc = nil
							x.JaneDoeRing = nil

							for a = 1, #t24.Items do
								local g = t24.Items[a]

								if (g and ((g.Parent and (g.Parent.Parent == Survivors3 or g.Parent.Name == "Backpack")) or not g.Parent)) then
									table.remove(t24.Items, a)
								end
							end

							local a = GetGameMapObjects()

							for n = 1, #a do
								local g = a[n]

								if (g.Name == "Generator" and not table.find(x.RoundGenerators, g)) then
									table.insert(x.RoundGenerators, g)
								elseif (g:IsA("Tool") and not table.find(x.Items, g)) then
									table.insert(x.Items, g)
								elseif (g.Name == "GearsTest") then
									local a = g:GetChildren()

									for n = 1, #a do
										local g = a[n]

										if g.Name == "Gear" then
											if not table.find(x.GearsDebris, g) then
												table.insert(x.GearsDebris, g)
											end
										end
									end
								end
							end

							for a = 1, #r do
								local n = r[a]

								if (n:IsA("Tool") and not table.find(x.Items, n)) then
									table.insert(x.Items, n)
								elseif n.Name == "Model" and n:IsA("MeshPart") then
									if n.MeshId == s3 then
										x.JaneDoeRing = n
									elseif n.MeshId == s2 then
										x.JaneDoeDoc = n
									end
								end
							end

							local a = workspace.Map.Ingame:GetChildren()

							for n = 1, #a do
								local I = a[n]

								if ((string.find(I.Name, "TaphTripwire") or I.Name == "SubspaceTripmine") and not table.find(x.TaphDebris, I)) and I:FindFirstChild("SubspaceBox") then
									table.insert(x.TaphDebris, I)
								elseif ((I.Name == "BuildermanSentry" or I.Name == "BuildermanDispenser") and not table.find(x.BuildermanDebris, I)) then
									table.insert(x.BuildermanDebris, I)
								elseif (I.Name:sub(-7.0) == "Shadows" and I.Name:sub(1, -8.0) == GetKillerUsername()) then
									for a, a in pairs(I:GetChildren()) do
										if (not table.find(x.DoeDebris, a)) then
											table.insert(x.DoeDebris, a)
										end
									end
								elseif (I.Name:sub(-12.0) == "JohnDoeTrail" and I.Name:sub(1, -13.0) == GetKillerUsername()) then
									for a, a in pairs(I:GetChildren()) do
										if (not table.find(x.DoeTrailDebris, a)) then
											table.insert(x.DoeTrailDebris, a)
										end
									end
								elseif (I.Name:sub(-6.0) == "Puddle" and I.Name:sub(1, -7.0) == GetKillerUsername() and not table.find(x.NosDebris, I)) then
									table.insert(x.NosDebris, I)
								elseif (I.Name:sub(-5.0) == "Spray" and Players:FindFirstChild(I.Name:sub(1, -6.0)) and not table.find(x.VeeDebris, I)) then
									table.insert(x.VeeDebris, I)
								elseif (I.Name == "SpikeCollision" and not table.find(x.Spikes, I)) then
									if (v1164.Flags.SpikeNoclip.CurrentValue) then
										I:Destroy()
									else
										table.insert(x.Spikes, I)
									end
								elseif ((I.Name == "VineModel" or I.Name == "GroundBulbModel") and not table.find(x.AzureDebris, I)) then
									table.insert(x.AzureDebris, I)
								elseif (I:IsA("Tool") and not table.find(x.Items, I)) then
									table.insert(x.Items, I)
								end
							end

							if (workspace.Map.Ingame:FindFirstChild("CurrencyLocations")) then
								local a = workspace.Map.Ingame.CurrencyLocations:GetChildren()

								for n = 1, #a do
									local I = a[n]

									if (I:FindFirstChildWhichIsA("Part").Position.Y > 0 and not table.find(x.Gingerbread, I)) then
										table.insert(x.Gingerbread, I)
									else
										if (table.find(x.Gingerbread, I) and I[`{I}Exp`].Transparency == 1) then
											table.remove(x.Gingerbread, n)
										end
									end
								end
							end

							if u1349 then
								FuckingTable = t24.EspAppliedToGenerators

								for a = 1, #t24.RoundGenerators do
									local n = t24.RoundGenerators[a]

									if u48 then
										return
									end

									if (not v1164.Flags.GeneratorEsp.CurrentValue) then
										if (not n:FindFirstChildOfClass("Highlight")) then
											continue
										end

										n:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[n] = false

										continue
									end

									if (FuckingTable[n]) then
										continue
									end

									FuckingTable[n] = true
									AddHighlightEsp(n, "GeneratorEspColor")
									AddTextLabel(n.Main, "GeneratorEspColor", "GeneratorEsp", { Text = function()
										local a = GetGeneratorProgress(n) and LocalPlayer.Character and t24.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

										if a then
											local I = GetGeneratorProgress(n)

											return ("%s • %dm • %s"):format("Generator", math.round((n.Main.Position - a.Position).magnitude / 3.57), I >= 100 and "Done" or (I .. "%"))
										elseif GetGeneratorProgress(n) then
											local a = GetGeneratorProgress(n)

											return ("%s • %s"):format("Generator", a >= 100 and "Done" or (a .. "%"))
										else
											return "Generator"
										end
									end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
								end

								FuckingTable = t24.EspAppliedToItems

								for a = 1, #t24.Items do
									local n = t24.Items[a]

									if u48 then
										return
									end

									if (not v1164.Flags.ItemEsp.CurrentValue) then
										if (not n:FindFirstChildOfClass("Highlight")) then
											continue
										end

										n:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[n] = false

										continue
									end

									if (FuckingTable[n]) then
										continue
									end

									FuckingTable[n] = true
									AddHighlightEsp(n, "ItemEspColor")

									if n:FindFirstChild("ItemRoot") then
										AddTextLabel(n.ItemRoot, "ItemEspColor", "ItemEsp", { Text = function()
											local a = LocalPlayer.Character and t24.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

											if a then
												return ("%s • %dm"):format(n.Name == "BloxyCola" and "Bloxy Cola" or n.Name, math.round((n.ItemRoot.Position - a.Position).magnitude / 3.57))
											else
												return n.Name == "BloxyCola" and "Bloxy Cola" or n.Name
											end
										end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
									end
								end

								FuckingTable = t24.EspAppliedToGingerbread

								for a = 1, #t24.Gingerbread do
									local n = t24.Gingerbread[a]

									if u48 then
										return
									end

									if (not v1164.Flags.GingerbreadEsp.CurrentValue) then
										if (not n:FindFirstChildOfClass("Highlight")) then
											continue
										end

										n:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[n] = false

										continue
									end

									if (FuckingTable[n]) then
										continue
									end

									FuckingTable[n] = true
									AddHighlightEsp(n, "GingerbreadEspColor")
								end

								FuckingTable = t24.EspAppliedToTaphDebris

								for a = 1, #t24.TaphDebris do
									local n = t24.TaphDebris[a]

									if u48 then
										return
									end

									if (v1164.Flags.TripmineRanges.CurrentValue and n.Name == "SubspaceTripmine" and not n.SubspaceBox:FindFirstChild("RANGEVIS")) then
										CreateRangeCircle(n.SubspaceBox, Config5.SubspaceRange, Config5.SubspaceRange)
									end

									if (not v1164.Flags.TaphEsp.CurrentValue) then
										if (not n:FindFirstChildOfClass("Highlight")) then
											continue
										end

										if (not IsKiller()) then
											continue
										end

										n:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[n] = false

										continue
									end

									if (FuckingTable[n]) then
										continue
									end

									FuckingTable[n] = true
									AddHighlightEsp(n, "TaphEspColor")
								end

								FuckingTable = t24.EspAppliedToBuildermanDebris

								for a = 1, #t24.BuildermanDebris do
									local s = t24.BuildermanDebris[a]

									if u48 then
										return
									end

									if (not v1164.Flags.BuildermanEsp.CurrentValue) then
										if (not s:FindFirstChildOfClass("Highlight")) then
											continue
										end

										if (not IsKiller()) then
											continue
										end

										s:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[s] = false

										continue
									end

									if (FuckingTable[s]) then
										continue
									end

									FuckingTable[s] = true
									AddHighlightEsp(s, "BuildermanEspColor")
								end

								FuckingTable = t24.EspAppliedToDoeDebris

								for a = 1, #t24.DoeDebris do
									local s = t24.DoeDebris[a]

									if u48 then
										return
									end

									if (not v1164.Flags.JohnDoeEsp.CurrentValue) then
										if (not s:FindFirstChild("Highlight")) then
											continue
										end

										s:FindFirstChild("Highlight"):Destroy()
										FuckingTable[s] = false

										continue
									end

									if (s:FindFirstChild("PlayerAura")) then
										s.PlayerAura:Destroy()
									end

									if (FuckingTable[s]) then
										continue
									end

									FuckingTable[s] = true
									s.Transparency = 0
									AddHighlightEsp(s, "JohnDoeEspColor")
								end

								FuckingTable = t24.EspAppliedToVeeDebris

								for a = 1, #t24.VeeDebris do
									local s = t24.VeeDebris[a]

									if u48 then
										return
									end

									if (not v1164.Flags.VeeronicaEsp.CurrentValue) then
										if (not s:FindFirstChildOfClass("Highlight")) then
											continue
										end

										s:FindFirstChildOfClass("Highlight"):Destroy()
										FuckingTable[s] = false

										continue
									end

									if (FuckingTable[s]) then
										continue
									end

									FuckingTable[s] = true
									AddHighlightEsp(s, "VeeronicaEspColor")
								end

								FuckingTable = t24.EspAppliedToAzureDebris

								for a = 1, #t24.AzureDebris do
									local s = t24.AzureDebris[a]

									if u48 then
										return
									end

									if (v1164.Flags.AzureEspRange.CurrentValue and not s.RootPart:FindFirstChild("RANGEVIS")) then
										if s.Name == "GroundBulbModel" then
											CreateRangeCircle(s.RootPart, Config10.ConstructConfigs.GroundBulb.Radius, Config10.ConstructConfigs.GroundBulb.Radius)
										elseif s.Name == "VineModel" then
											CreateRangeCircle(s.RootPart, Config10.ConstructConfigs.Vine.Radius, Config10.ConstructConfigs.Vine.Radius)
										end
									end

									if (not v1164.Flags.AzureEsp.CurrentValue) then
										if (s:FindFirstChild("AZUREHIGHLIGHT")) then
											s.AZUREHIGHLIGHT:Destroy()
										end

										FuckingTable[s] = false

										continue
									end

									if (FuckingTable[s]) then
										continue
									end

									FuckingTable[s] = true
									AddHighlightEsp(s, "AzureEspColor", "AZUREHIGHLIGHT")
								end

								if u48 then
									return
								end

								local a = t24.JaneDoeDoc or t24.JaneDoeRing

								if a then
									if (not a:FindFirstChildOfClass("EspTL")) then
										AddTextLabel(a, "JaneDoeQuestEspColor", "JaneDoeQuestEsp", { Text = function()
											local Y = LocalPlayer.Character and t24.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

											if Y then
												return ("%s • %dm"):format(a == t24.JaneDoeDoc and "Document" or "Ring", math.round((a.Position - Y.Position).magnitude / 3.57))
											else
												return a == t24.JaneDoeDoc and "Document" or "Ring"
											end
										end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
									end
								end

								FuckingTable = t24.EspAppliedToGearsDebris

								local a = v1164.Flags.GearsEsp.CurrentValue

								if (not a and ReplicatedStorage:FindFirstChild("GearsHighlightStorage")) then
									for Y, Y in pairs(ReplicatedStorage.GearsHighlightStorage:GetChildren()) do
										Y.Parent = t24.GearHighlightsStore[Y]
										t24.GearHighlightsStore[Y] = nil
									end
								end

								for Y = 1, #t24.GearsDebris do
									local s = t24.GearsDebris[Y]

									if u48 then
										return
									end

									if (not a) then
										if (not s:FindFirstChild("NewGearHighlight")) then
											continue
										end

										s:FindFirstChild("NewGearHighlight"):Destroy()
										FuckingTable[s] = false

										continue
									end

									if (FuckingTable[s]) then
										continue
									end

									FuckingTable[s] = true
									pcall(function()
										t24.GearHighlightsStore[s.GearHighlight] = s
										s.GearHighlight.Parent = ReplicatedStorage.GearsHighlightStorage
									end)
									AddHighlightEsp(s, "GearsEspColor", "NewGearHighlight")
								end
							end
						end

						for a, Y in pairs(x) do
							t24[a] = Y
						end

						u1349 = true
					end, function(x)
						if u48 then
							return
						end

						v137("error in an extremely important loop:", tostring(x))
					end)
				end
			end)

			repeat
				v137("waiting for initial state update")
				task.wait(0.1)
			until u1349

			do
				GetSpectators = function()
					local t36 = {}

					for _, player in ipairs(Players:GetPlayers()) do
						if player:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId then
							table.insert(t36, player.Name)
						end
					end

					local v1415 = t19_78_1[2]

					return table.concat(t36, ", ")
				end
			end

			Minigames:CreateSection("Generators")

			local function v1416(p124, p125)
				if GetGameMap():GetAttribute("MapName") ~= "PirateBay" or p125 ~= p124.Positions.Right.Position then
					for _, v in t24.Survivors, nil, nil do
						if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - p125).Magnitude <= 6 and v ~= LocalPlayer.Character then
							return true
						end
					end

					return false
				end

				return true
				-- (could not be recovered)
			end

			GetAutoDotsVar = function()
				if not (n6 < n39) then
					n5 = 404468775
					n8 -= 1188
					n40 -= 1731
					n4 += 1994
					n39 -= 911
					n41 -= 163
					n3 -= 1029
					n2 = 861221660
					n6 = 360396889
					-- (could not be recovered)
				end

				return v1164.Flags.AutoCompleteDotsConnect.CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue or u1205
			end

			do
				GetAutoFlowGameVar = function()
					do
						local CurrentValue = v1164.Flags.AutoCompleteFlowGame.CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue

						return CurrentValue or u1205
					end
				end
			end

			GetAutoLockpickVar = function()
				if not (n7 < n39) then
					n39 = 432564822
					n41 += 820
					n1 += 1962
					n40 -= 1529
					n3 -= 706
					n5 = 1050867035
					n7 -= 1083
					n8 = 837790319
					n9 -= 1255
					-- (could not be recovered)
				end

				local CurrentValue = v1164.Flags.AutoCompleteLockpick.CurrentValue

				if not CurrentValue then
					CurrentValue = LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue
				end

				return CurrentValue or u1205
			end

			do
				GetAutoGearsVar = function()
					if n41 == n7 then
						n4 = 851982171
						n41 = 8862513
						n7 = 842686022
						n6 -= 1979
						n8 = 467420928
						n40 -= 839
						n5 += 1282
						n9 -= 836
						n39 += 862
						-- (could not be recovered)
					end

					return v1164.Flags.AutoCompleteGear.CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue or u1205
				end
			end

			GetPairs = function(p126)
				local t37 = {}
				local t38 = {}

				for k, v in p126.Blobs, nil, nil do
					local v1425 = t37[v]

					if not v1425 then
						v1425 = {}
						t37[v] = v1425
						t38[#t38 + 1] = v1425
					end

					v1425[#v1425 + 1] = k
				end

				if n8 < n41 then
					return t38
				end

				n8 = 1025491584
				n2 += 1294
				n41 -= 947
				n5 = 123337060
				n39 -= 825
				n40 = 480471971
				n7 -= 619
				n1 -= 198
				n4 = 848267774
			end

			do
				GetGeneratorProgress = function(p127)
					local ok, result = pcall(function()
						return math.floor(math.clamp(p127.Instances.Generator.Progress.BarUI.Bar.Size.X.Scale * 100, 0, 100) / 20) * 20
					end)

					if ok then
						return result
					end
				end
			end

			AutoGenerator = function(p128)
				local Board = p128.Board
				local Renderer = p128.Renderer
				local n48 = 0
				local now2 = tick()

				p128.Dragging = nil

				for k in Board.Blobs, nil, nil do
					Board:Disconnect(k)
				end

				Renderer:Render()

				for _, v in GetPairs(Board) do
					local v1435 = v[1]
					local v1436 = v[2]

					if p128.Ended then
						return
					end

					if not Force and not GetAutoDotsVar() then
						return
					end

					local CurrentValue = v1164.Flags.DotsMistakeChance.CurrentValue

					if CurrentValue == 0 or CurrentValue <= math.random(0, 100) or tick() - n48 <= 1.5 then
						local v1438

						if GetClosestGenerator() and IsPlayerNearGenerator(GetClosestGenerator()) then
							v1438 = true
						else
							v1438 = GetSpectators() ~= ""
						end

						if v1164.Flags.DotsLegitPuzzles.CurrentValue and v1438 then
							task.wait(v1164.Flags.DotsDelayLegit.CurrentValue)
						else
							task.wait(v1164.Flags.DotsDelay.CurrentValue)
						end
					else
						n48 = tick()
						task.wait(math.random(20, 50) / 100)
					end

					if Board:Connect(v1435, v1436) then
						Renderer:Render()
						Renderer:Pulse(v1436)
					end

					if Board:IsSolved() then
						if tick() - now2 <= 1.4 then
							local v1439 = 1.4 - (tick() - now2)

							v137("finished puzzle too fast (", tick() - now2, ") waiting", v1439, "seconds to be careful")
							task.wait(v1439)
						end

						p128:__finish()
						p128.Callbacks.OnSolved()

						return
					end
				end

				if n1 ~= n5 then
					return
				end

				n8 = 120985070
				n40 -= 1423
				n5 -= 1131
				n4 = 520467100
				n41 += 1653
				n39 = 735949960
				n1 = 805488575
				n2 = 105297422
				n9 -= 640
				-- (could not be recovered)
			end
			DrawSolutions = function(p129)
				local Board = p129.Board
				local Renderer = p129.Renderer
				local t39 = {}

				for _, v in GetPairs(Board) do
					t39[#t39 + 1] = {
						Renderer:__newLine(Renderer.Colors[Board:GetColor(v[1])], 0.7),
						v[1],
						v[2]
					}
				end

				local n49

				local function v1446()
					n49 = 1027456346

					if n49 == n5 then
						n2 += 1662
						n4 = 52368131
						n49 -= 826
						n39 = 301509629
						n5 -= 1240
					else
						for _, v in t39, nil, nil do
							Renderer:__placeLine(v[1], Renderer:ScreenCenter(v[2]), Renderer:ScreenCenter(v[3]))
						end
					end
				end

				v1446()
				Renderer.Grid:GetPropertyChangedSignal("AbsoluteSize"):Connect(v1446)
			end
			task.spawn(function()
				local n50 = 93123512
				local v1450

				v1450 = v39(GearInput.new, newcclosure(function(p130, p131, p132)
					local v1451 = v1450(p130, p131, p132)

					if n39 ~= 622646661 then
						task.spawn(function()
							if not GetAutoGearsVar() then
								return
							end

							local n51 = 49885401

							NotifyAutofarmMinigame("Gears", "settings")

							local v1453 = clonefunction(p131.OnTurn)

							for _, connection in pairs(v1451.__connections) do
								v138("destroying gear:", connection)
								connection:Disconnect()
							end

							task.wait(0.55)

							while not v1451.Ended and not u48 do
								if not ((LocalPlayer:GetAttribute("Gears") or 0) > 0) then
									break
								end

								v1453(v1164.Flags.GearTurnDegrees.CurrentValue)

								if n41 == n51 then
									n5 = 644863693
									n6 += 600
									n39 = 514075805
									n41 += 1890
									n51 = 490994718
									n2 = 319074328
								else
									task.wait(v1164.Flags.GearTurnDelay.CurrentValue / 1000)
								end
							end

							if not v1451.Ended and not u48 then
								if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
									t24:Sprint(true)
									t24:Sprint(false)
								end
							end
						end)

						return v1451
					end

					n50 = 512541754
					n6 -= 76
					n2 = 380899361
					n41 = 1062598727
					n5 = 586435229
					n39 = 656708432
				end))

				local Start
				local v1457, v1458, v1459 = pairs(GearClientMinigame)
				local v1460 = geniter(v1457, v1458, v1459)

				for k, v in v1457, v1458, v1459 do
					while true do
						if tostring(k) ~= "MinigameKey(ClassValues)" then
							local v1463 = table.pack(v1460())

							if not v1463[1] then
								break
							end

							k = v1463[2]
							v = v1463[3]

							continue
						end

						Start = v.Start

						break
					end

					break
				end

				local v1464

				v1464 = v39(Start, newcclosure(function(p133)
					if p133.Network.Properties:Get("FixerUserId") ~= LocalPlayer.UserId then
						return
					end

					if n40 ~= n50 then
						task.spawn(function()
							local __renderer = p133.__renderer

							if not __renderer then
								local now2 = tick()

								while true do
									v138("waiting for __renderer")
									__renderer = p133.__renderer
									task.wait()

									if __renderer then
										break
									elseif u48 or tick() - now2 >= 0.2 then
										break
									end
								end
							end

							if not __renderer then
								return v137("Unable to get the renderer")
							end

							if u48 then
								return
							end

							local __input = p133.__input

							if not __input then
								local now2 = tick()

								while true do
									v138("waiting for GearClient.__input")
									__input = p133.__input
									task.wait()

									if __input then
										break
									elseif u48 or tick() - now2 >= 0.2 then
										break
									end
								end
							end

							if not __input then
								return v137("Unable to get the input")
							end

							if u48 then
								return
							end

							t24.CurrentPuzzle = __renderer

							local n52 = 131475782

							t24.PuzzleContainer = __renderer.Container
							task.spawn(function()
								RunService.RenderStepped:Wait()

								if not __input.Ended then
									while __renderer.UI.Parent do
										RunService.RenderStepped:Wait()

										if __input.Ended then
											break
										end
									end

									if t24.CurrentPuzzle == __renderer then
										t24.CurrentPuzzle = nil

										if n40 == 1015842660 then
											n50 += 1063
											n5 += 143
											n40 -= 183
											n52 += 1649
											-- (could not be recovered)
										end

										t24.PuzzleContainer = nil
									end

									return
								end

								if t24.CurrentPuzzle ~= __renderer then
									return
								end

								t24.CurrentPuzzle = nil

								if n40 == 1015842660 then
									n50 += 1063
									n5 += 143
									n40 -= 183
									n52 += 1649
									-- (could not be recovered)
								end

								t24.PuzzleContainer = nil
							end)

							if GetAutoGearsVar() then
								if v1164.Flags.AutoGeneratorNoUI.CurrentValue and u1205 then
									__renderer.UI.Enabled = false
								end

								return
							end

							if n52 ~= 131477639 then
								return
							end

							n50 = 905843319
							n40 += 817
							n5 = 589660312
							n52 -= 1107
							-- (could not be recovered)
						end)

						return v1464(p133)
					end

					n40 = 181146791
					n8 += 590
					n5 = 646571164
					n50 = 115683772
					n2 = 84398282
					-- (could not be recovered)
				end))
			end)
			task.spawn(function()
				local v1470
				local n53 = 91949271

				v1470 = v39(LockBoard.Press, newcclosure(function(p134, p135)
					if not v1164.Flags.LockpickAntiMiss.CurrentValue or p134:IsOnTarget(p134:AngleAt(math.max(p135, p134.State.AnchorTime))) then
						return v1470(p134, p135)
					end

					return v137("prevented misclick cause you're so trash")
					-- (could not be recovered)
				end))

				local Start
				local v1473

				for k, v in pairs(LockClientMinigame) do
					if tostring(k) ~= "MinigameKey(ClassValues)" then
						continue
					end

					Start = v.Start

					if n53 < n7 then
						v1473 = nil
						v1473 = v39(Start, newcclosure(function(p136)
							if p136.Network.Properties:Get("FixerUserId") ~= LocalPlayer.UserId then
								return
							end

							task.spawn(function()
								local __renderer = p136.__renderer
								local ok = __renderer
								local now2

								if not ok then
									now2 = tick()
									v138("waiting for __renderer")
									__renderer = p136.__renderer
									task.wait()
									ok = not (not __renderer and not u48)
								end

								if ok then
									if not __renderer then
										return v137("Unable to get the renderer")
									end
								else
									while not (tick() - now2 >= 0.2) do
										v138("waiting for __renderer")
										__renderer = p136.__renderer
										task.wait()

										if __renderer or u48 then
											break
										end
									end

									if not __renderer then
										return v137("Unable to get the renderer")
									end
								end

								if u48 then
									return
								end

								local Board = __renderer.Board

								if not Board then
									local now3 = tick()

									while true do
										v138("waiting for Renderer.Board")
										Board = __renderer.Board
										task.wait()

										if Board then
											break
										elseif u48 or tick() - now3 >= 0.2 then
											break
										end
									end
								end

								if not Board then
									return v137("Unable to get the board")
								end

								if u48 then
									return
								end

								local __input = p136.__input

								if not __input then
									local now3 = tick()

									while true do
										v138("waiting for LockClient.__input")
										__input = p136.__input
										task.wait()

										if __input then
											break
										elseif u48 or tick() - now3 >= 0.2 then
											break
										end
									end
								end

								if not __input then
									return v137("Unable to get the input")
								end

								if u48 then
									return
								end

								t24.CurrentPuzzle = Board
								t24.PuzzleContainer = __renderer.Container
								task.spawn(function()
									while true do
										RunService.RenderStepped:Wait()

										if __input.Ended then
											break
										elseif not __renderer.UI.Parent then
											break
										end
									end

									if t24.CurrentPuzzle == Board then
										t24.CurrentPuzzle = nil
										t24.PuzzleContainer = nil
									end
								end)

								if not GetAutoLockpickVar() then
									return
								end

								NotifyAutofarmMinigame("Lockpick", "lock-keyhole-open")

								if v1164.Flags.AutoGeneratorNoUI.CurrentValue and u1205 then
									__renderer.UI.Enabled = false
								end

								local connection
								local v1484 = clonefunction(__renderer.Close)

								__renderer.Close = function(p137)
									v138("Lockpicker closed")
									connection:Disconnect()
									v1484(p137)
								end

								local now3 = tick()

								connection = RunService.RenderStepped:Connect(function()
									if tick() - now3 <= 0.75 then
										return
									end

									if p136 and p136.Network and p136.__renderer then
										if Board:IsBroken() then
											v138("Broke lock")
											connection:Disconnect()
										end

										local x = workspace:GetServerTimeNow()
										local Y = Board:IsOnTarget(Board:AngleAt(math.max(x, Board.State.AnchorTime)))

										if Y then
											local Y = Board:Press(x)

											if Y then
												p136.Network:FireServer("Press", x)
												p136.__renderer:Play(v10)
											end
										end
									else
										v138("hey that is nil!", p136, p136 and p136.Network, p136 and p136.__renderer)
										connection:Disconnect()
									end
								end)
								t24.Disconnectables[#t24.Disconnectables + 1] = connection
							end)

							if n2 == 249177561 then
								return v1473(p136)
							end

							n5 = 660396914
							n1 -= 763
							n53 = 298095762
							n2 -= 305
							n4 += 788
							-- (could not be recovered)
						end))

						return
					end

					n5 += 2039
					n40 -= 171
					n1 = 948076327
					n39 -= 799
					n8 = 1051136606
					n41 -= 914
					n7 -= 229
					n4 += 1535
					n53 += 986
					n2 += 1293

					return
				end

				v1473 = nil
				v1473 = v39(Start, newcclosure(function(p138)
					if p138.Network.Properties:Get("FixerUserId") ~= LocalPlayer.UserId then
						return
					end

					task.spawn(function()
						local __renderer = p138.__renderer
						local ok = __renderer
						local now2

						if not ok then
							now2 = tick()
							v138("waiting for __renderer")
							__renderer = p138.__renderer
							task.wait()
							ok = not (not __renderer and not u48)
						end

						if ok then
							if not __renderer then
								return v137("Unable to get the renderer")
							end
						else
							while not (tick() - now2 >= 0.2) do
								v138("waiting for __renderer")
								__renderer = p138.__renderer
								task.wait()

								if __renderer or u48 then
									break
								end
							end

							if not __renderer then
								return v137("Unable to get the renderer")
							end
						end

						if u48 then
							return
						end

						local Board = __renderer.Board

						if not Board then
							local now3 = tick()

							while true do
								v138("waiting for Renderer.Board")
								Board = __renderer.Board
								task.wait()

								if Board then
									break
								elseif u48 or tick() - now3 >= 0.2 then
									break
								end
							end
						end

						if not Board then
							return v137("Unable to get the board")
						end

						if u48 then
							return
						end

						local __input = p138.__input

						if not __input then
							local now3 = tick()

							while true do
								v138("waiting for LockClient.__input")
								__input = p138.__input
								task.wait()

								if __input then
									break
								elseif u48 or tick() - now3 >= 0.2 then
									break
								end
							end
						end

						if not __input then
							return v137("Unable to get the input")
						end

						if u48 then
							return
						end

						t24.CurrentPuzzle = Board
						t24.PuzzleContainer = __renderer.Container
						task.spawn(function()
							while true do
								RunService.RenderStepped:Wait()

								if __input.Ended then
									break
								elseif not __renderer.UI.Parent then
									break
								end
							end

							if t24.CurrentPuzzle == Board then
								t24.CurrentPuzzle = nil
								t24.PuzzleContainer = nil
							end
						end)

						if not GetAutoLockpickVar() then
							return
						end

						NotifyAutofarmMinigame("Lockpick", "lock-keyhole-open")

						if v1164.Flags.AutoGeneratorNoUI.CurrentValue and u1205 then
							__renderer.UI.Enabled = false
						end

						local connection
						local v1497 = clonefunction(__renderer.Close)

						__renderer.Close = function(p139)
							v138("Lockpicker closed")
							connection:Disconnect()
							v1497(p139)
						end

						local now3 = tick()

						connection = RunService.RenderStepped:Connect(function()
							if tick() - now3 <= 0.75 then
								return
							end

							if p138 and p138.Network and p138.__renderer then
								if Board:IsBroken() then
									v138("Broke lock")
									connection:Disconnect()
								end

								local x = workspace:GetServerTimeNow()
								local Y = Board:IsOnTarget(Board:AngleAt(math.max(x, Board.State.AnchorTime)))

								if Y then
									local Y = Board:Press(x)

									if Y then
										p138.Network:FireServer("Press", x)
										p138.__renderer:Play(v10)
									end
								end
							else
								v138("hey that is nil!", p138, p138 and p138.Network, p138 and p138.__renderer)
								connection:Disconnect()
							end
						end)
						t24.Disconnectables[#t24.Disconnectables + 1] = connection
					end)

					if n2 == 249177561 then
						return v1473(p138)
					end

					n5 = 660396914
					n1 -= 763
					n53 = 298095762
					n2 -= 305
					n4 += 788
					-- (could not be recovered)
				end))
			end)
			task.spawn(function()
				local v1502

				if n1 == 525278510 then
					v1502 = v39(ConnectBoard.new, newcclosure(function(p140, ...)
						local v1503 = v1502(p140, ...)

						if not v1164.Flags.DotsGridChanger.CurrentValue then
							return v1503
						end

						for _, v in GetPairs(v1503) do
							v1503:Connect(v[1], v[2])
						end

						local CurrentValue = v1164.Flags.DotsGridModNum.CurrentValue
						local t40 = {}
						local n54 = 0
						local t41 = {}

						for _, v in p140, nil, nil do
							if not t40[v] then
								if CurrentValue <= n54 then
									continue
								end

								t40[v] = true
								n54 += 1
							end

							t41[#t41 + 1] = v
						end

						local v1512 = v1502(t41, ...)

						v1512.RealBoard = v1503
						v1512.Export = function()
							return v1503:Export()
						end

						return v1512 --[[ constant not decoded ]]
					end))

					return
				end

				n39 = 354631872
				n3 += 800
				n5 = 59392423
				n2 += 1435
				n1 = 296514988
				n8 += 1966
				n9 = 26602126
				n40 = 261412362
				n41 = 539685904
				-- (could not be recovered)
			end)
			task.spawn(function()
				local n55 = 0

				while true do
					n55 = n55 + 206 + -206
				end
			end)
			SolveFlow = function(x, Y)
				local s, W, n = x.Size, x.Pairs, x.Dots
				local x = {}

				for P = 1, s * s do
					local I, X, A = (P - 1) // s + 1, (P - 1) % s + 1, {}

					if I > 1 then
						A[#A + 1] = P - s
					end

					if I < s then
						A[#A + 1] = P + s
					end

					if X > 1 then
						A[#A + 1] = P - 1
					end

					if X < s then
						A[#A + 1] = P + 1
					end

					x[P] = A
				end

				local function P(I, X)
					return math.abs((I - 1) // s - (X - 1) // s) + math.abs((I - 1) % s - (X - 1) % s)
				end
				local function s(I, X, A)
					local r, q, B = { [I] = false }, { I }, 1

					while B <= #q do
						local I = q[B]

						B += 1

						if I == X then
							local B = {}

							while I do
								table.insert(B, 1, I)
								I = r[I]
							end

							return B
						end

						local B = x[I]
						local x = math.random(#B)

						for e = 0, #B - 1 do
							local d = B[(e + x) % #B + 1]

							if r[d] == nil and not A[d] and (n[d] == nil or d == X) then
								r[d] = I
								q[#q + 1] = d
							end
						end
					end

					return nil
				end

				local x = {}

				for n in W do
					x[#x + 1] = n
				end

				table.sort(x, function(n, I)
					return P(W[n][1], W[n][2]) < P(W[I][1], W[I][2])
				end)

				for n = 1, 3000 do
					if Y and n % 200 == 0 then
						task.wait()
					end

					if n > 1 then
						for Y = #x, 2, -1.0 do
							local P = math.random(Y)

							x[Y], x[P] = x[P], x[Y]
						end
					end

					local Y, P, I = {}, {}, true

					for X, X in x do
						local x = s(W[X][1], W[X][2], Y)

						if not x then
							I = false

							break
						end

						for s, s in x do
							Y[s] = true
						end

						P[X] = x
					end

					if I then
						return P
					end

					if n % 200 == 0 then
						task.wait()
					end
				end

				return nil
			end
			AutoGeneratorFlow = function(p141, p142)
				local Board = p141.Board
				local Renderer = p141.Renderer
				local n56 = 0

				for k in Board.Pairs, nil, nil do
					Board.Paths[k] = {}
				end

				Board:__rebuild()
				Renderer:Render()
				NotifyAutofarmMinigame("Flow Game", "puzzle")

				for i = 1, #Board.Pairs do
					local v1551 = p142[i]

					Board:Begin(v1551[1])
					Renderer:Render()

					for i2 = 2, #v1551 do
						if p141.Ended then
							return
						end

						if not Force and not GetAutoFlowGameVar() then
							Board:Release(i, false)
							Renderer:Render()

							return
						end

						local v1553 = Board:Step(i, v1551[i2], 0)

						Renderer:Render()

						if v1553 == "connected" then
							Renderer:Pulse(v1551[i2])
						end

						local CurrentValue = v1164.Flags.GeneratorMistakeChance.CurrentValue

						if CurrentValue == 0 or CurrentValue <= math.random(0, 100) or tick() - n56 <= 1.5 then
							local v1555

							if GetClosestGenerator() and IsPlayerNearGenerator(GetClosestGenerator()) then
								v1555 = true
							else
								v1555 = GetSpectators() ~= ""
							end

							if v1164.Flags.LegitPuzzles.CurrentValue and v1555 then
								task.wait(v1164.Flags.GeneratorLegitPuzzleDelay.CurrentValue)
							else
								task.wait(v1164.Flags.GeneratorPuzzleDelay.CurrentValue)
							end
						else
							n56 = tick()
							task.wait(math.random(20, 50) / 100)
						end
					end

					Board:Release(i, false)
					Renderer:Render()
				end

				if Board:IsSolved() and not p141.Ended then
					p141:__finish()
					p141.Callbacks.OnSolved()
				end

				if n9 ~= 263112959 then
					n39 -= 297
					n5 += 1980
					n40 = 673277863
					n7 = 897977675
					n9 = 553335445
					n8 -= 1214
					n1 = 469417035
					n41 = 1063206945
					n6 += 1522
				end
			end
			DrawSolutionsFlow = function(p143, p144)
				local Renderer = p143.Renderer
				local Board = p143.Board
				local Grid = Renderer.Grid
				local Frame2 = Instance.new("Frame")

				Frame2.Parent = Grid.Parent
				Frame2.ZIndex = 6
				Frame2.BackgroundTransparency = 1
				Frame2.Size = Grid.Size
				Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame2.Position = UDim2.fromScale(0.5, 0.5)

				local v1560 = 1 / Board.Size

				for k, v in p144, nil, nil do
					local v1563 = Renderer.Colors[k]

					for _, v2 in v, nil, nil do
						local v1566 = (v2 - 1) // Board.Size + 1
						local v1567 = (v2 - 1) % Board.Size + 1
						local Frame3 = Instance.new("Frame")

						Frame3.Parent = Frame2

						if n39 == 622646567 then
							Frame3.BorderSizePixel = 0
							Frame3.BackgroundTransparency = 0.7
							Frame3.BackgroundColor3 = Color3.new(v1563.R / 1.2, v1563.G / 1.2, v1563.B / 1.2)
							Frame3.Size = UDim2.fromScale(v1560, v1560)
							Frame3.ZIndex = 7
							Frame3.Position = UDim2.fromScale(v1560 * (v1567 - 1), v1560 * (v1566 - 1))

							continue
						end

						n7 += 375
						n4 -= 1565
						n8 = 485596257
						n41 = 226632776
						n40 = 313086076
						n39 = 244937298
						n3 = 952104125
						n5 = 440074427
						n9 -= 469
						-- (could not be recovered)
					end
				end
			end
			task.spawn(function()
				local n57 = 728726258
				local n58 = 644620405

				local function v1571(p145, p146)
					local t42 = {}
					local t43 = {}
					local n59 = 0
					local n60 = 867130529

					while p146 > #t43 do
						if not (n59 < 500) then
							break
						end

						n59 += 1

						local v1576 = math.random(p145 * p145)

						if t42[v1576] then
							continue
						end

						local t44 = { v1576 }
						local t45 = {
							[v1576] = true
						}
						local v1579 = v1576
						local v1580 = math.random(2, math.max(2, p145))
						local exitTo

						while true do
							if not (v1580 > #t44) then
								exitTo = 1

								break
							end

							local v1582, v1583 = FlowBoard.ToRowCol(p145, v1579)
							local t46 = {}

							for _, v in {
								{
									-1,
									0
								},
								{
									1,
									0
								},
								{
									0,
									-1
								},
								{
									0,
									1
								}
							}, nil, nil do
								local v1587 = v1582 + v[1]
								local v1588 = v1583 + v[2]

								if v1587 >= 1 and v1587 <= p145 and v1588 >= 1 and v1588 <= p145 then
									local v1589 = FlowBoard.ToIndex(p145, v1587, v1588)

									if not t42[v1589] and not t45[v1589] then
										t46[#t46 + 1] = v1589
									end
								end
							end

							if #t46 == 0 then
								break
							end

							v1579 = t46[math.random(#t46)]
							t44[#t44 + 1] = v1579
							t45[v1579] = true
						end

						if exitTo == 1 or n57 < n60 then
							if #t44 >= 2 then
								for _, v in t44, nil, nil do
									t42[v] = true
								end

								t43[#t43 + 1] = {
									t44[1],
									t44[#t44]
								}
							end

							continue
						end

						n40 += 340
						n58 = 664388114
						n5 -= 530
						n4 += 933
						n3 -= 243
						n57 += 176
						n39 += 763
						n8 += 1798
						upv235 = nil --[[ constant not decoded ]]

						return (nil)(table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 347))
					end

					return t43
				end

				local v1592

				v1592 = v39(FlowBoard.new, newcclosure(function(p147, p148, ...)
					local v1593 = v1592(p147, p148, ...)

					if not v1164.Flags.GeneratorGridMod.CurrentValue then
						return v1593
					end

					local v1594 = SolveFlow(v1593)

					if not v1594 then
						v137("Flow: real board unsolvable, using real board")

						return v1593
					end

					for k, v in v1594, nil, nil do
						v1593.Paths[k] = table.clone(v)
					end

					v1593:__rebuild()

					local CurrentValue = v1164.Flags.GeneratorGridModNum.CurrentValue
					local v1598 = math.max(2, math.round(#p148 * (CurrentValue * CurrentValue) / (p147 * p147)))
					local n61 = 81991631
					local v1600 = v1592(CurrentValue, v1571(CurrentValue, v1598), ...)

					if n58 == 644620405 then
						v1600.RealBoard = v1593
					else
						n4 = 739416883

						local v1601 = n58 + 2002

						repeat
							n58 = v1601
							n5 += 1823
							n39 -= 512
							n57 = 804888341
							n8 = 1040752992
							n9 = 467366888
							v1601 = n41 - 1905
							n41 = v1601
							n61 = 381952837
						until nil <= nil
					end

					local n62

					v1600.Export = function()
						n62 = 564214364

						if n61 < n62 then
							return v1593:Export()
						end

						n41 = 512410260
						n58 = 196592541
						n57 += 1117
						n9 = 468222647
						n39 = 50358870
						n62 = 539922348
						n61 = 51174649
						n5 += 159
						-- (could not be recovered)
					end

					return v1600
				end))
			end)

			do
				task.spawn(function()
					local v1603
					local n63 = 438708429

					if n63 ~= n5 then
						v1603 = v39(FlowInput.new, newcclosure(function(...)
							local v1605 = v1603(...)
							local exitTo
							local Board, Renderer, n64, n65

							repeat
								Board = v1605.Board
								Renderer = v1605.Renderer
								t24.CurrentPuzzle = Board
								n64 = 772036440
								n65 = 349826910

								local Container = Renderer.Container

								t24.PuzzleContainer = Container
								Container = nil
								task.spawn(function()
									Container = 699269952

									while true do
										RunService.RenderStepped:Wait()

										if v1605.Ended then
											break
										elseif not Renderer.UI.Parent then
											break
										end
									end

									if t24.CurrentPuzzle == Board then
										if not (n64 < n40) then
											n9 = 808214001
											n40 = 982762752
											n5 = 904256926
											n65 = 776500816
											Container = 856122664
											n39 = 114183637
											n64 -= 803
											-- (could not be recovered)
										end

										t24.CurrentPuzzle = nil
										t24.PuzzleContainer = nil
									end
								end)

								if not v1164.Flags.AutoGeneratorNoUI.CurrentValue then
									exitTo = 1

									break
								end

								if not u1205 then
									exitTo = 1

									break
								end

								exitTo = 2

								break
							until not t168_183_1[1]

							if exitTo ~= 1 then
								if exitTo ~= 2 then
									if exitTo == 3 then
										-- (could not be recovered)
									end
									-- (could not be recovered)
								end

								Renderer.UI.Enabled = false
							end

							local CurrentValue = v1164.Flags.GeneratorHelper.CurrentValue
							local v1613 = GetAutoFlowGameVar()

							if CurrentValue or v1613 then
								task.spawn(function()
									local n66 = 1067329967
									local v1615 = SolveFlow(Board)

									if not v1615 then
										return v137("Flow: no solution found")
									end

									local n67 = 116458489
									local u1617, now2, v1619

									if CurrentValue then
										xpcall(DrawSolutionsFlow, function(p149)
											v137("Failed to draw puzzle - " .. tostring(p149))

											if n65 ~= 349826910 then
												n66 = 890879217
												n64 = 652862736
												n5 = 983370531
												n67 -= 917
												n63 = 775534537
												n65 = 1066421608
											end
										end, v1605, v1615)
										u1617 = nil

										if v1613 then
											now2 = tick()

											if n67 == 116458593 then
												n39 = 305828517
												n63 = 530340420
												n66 -= 1469
												n9 = 921062223
												n64 += 331
												n5 = 835720316
												n67 = 211808700
												n65 = 437196272
												-- (could not be recovered)
											end

											xpcall(AutoGeneratorFlow, function(p150)
												u1617 = 761226315
												v137("Failed to complete flow game - " .. tostring(p150))

												local v1620 = n39
												local v1621
												local v1622

												if n5 == v1620 then
													n39 -= 1835
													n64 -= 408
													n5 += 1384
													n67 = 652418225

													while true do
														n66 = 678999322
														n63 = 1018070101

														local v1623 = u1617 + 215

														u1617 = v1623
														v1622[8] = 5
														v1621[155] = 146

														if v1623 ~= v1620 then
															break
														end

														n39 -= 1835
														n64 -= 408
														n5 += 1384
														n67 = 652418225
													end
												end
											end, v1605, v1615)
											v1619 = math.round((tick() - now2) * 100) / 100
											task.spawn(function()
												setthreadidentity(8)

												if v1164.Flags.GeneratorNotifications.CurrentValue then
													lib:Notify({
														Title = "Flow solved",
														Content = ("flow game completed in %*s"):format(v1619),
														Duration = 2,
														Image = "puzzle",
														NoQueue = true
													})
												end

												if n9 < n66 then
													return
												end

												n9 = 369779691
												n5 += 716
												n67 -= 1392
												n65 = 80331540
												n63 += 1853
												n66 += 99
												-- (could not be recovered)
											end)
										end

										return
									end

									u1617 = nil

									if not v1613 then
										return
									end

									now2 = tick()

									if n67 == 116458593 then
										n39 = 305828517
										n63 = 530340420
										n9 = 921062223
										n64 += 331
										n5 = 835720316
										n65 = 437196272
										-- (could not be recovered)
									end

									xpcall(AutoGeneratorFlow, function(p151)
										u1617 = 761226315
										v137("Failed to complete flow game - " .. tostring(p151))

										local v1624 = n39
										local v1625
										local v1626

										if n5 == v1624 then
											n39 -= 1835
											n64 -= 408
											n5 += 1384
											n67 = 652418225

											while true do
												n66 = 678999322
												n63 = 1018070101

												local v1627 = u1617 + 215

												u1617 = v1627
												v1626[8] = 5
												v1625[155] = 146

												if v1627 ~= v1624 then
													break
												end

												n39 -= 1835
												n64 -= 408
												n5 += 1384
												n67 = 652418225
											end
										end
									end, v1605, v1615)
									v1619 = math.round((tick() - now2) * 100) / 100
									task.spawn(function()
										setthreadidentity(8)

										if v1164.Flags.GeneratorNotifications.CurrentValue then
											lib:Notify({
												Title = "Flow solved",
												Content = ("flow game completed in %*s"):format(v1619),
												Duration = 2,
												Image = "puzzle",
												NoQueue = true
											})
										end

										if n9 < n66 then
											return
										end

										n9 = 369779691
										n5 += 716
										n67 -= 1392
										n65 = 80331540
										n63 += 1853
										n66 += 99
										-- (could not be recovered)
									end)
								end)
							end

							return v1605
						end))

						return
					end

					n40 = 504723313
					n5 += 1944
					n4 += 1446
					n9 = 265585846
					n3 -= 167
					n41 = 451045146
					n8 = 274767858
					n39 = 811874672
					n7 += 924
					-- (could not be recovered)
				end)
			end

			YoinkGears = function(p152)
				if IsKiller() then
					return
				end

				if t24.GameState ~= 1 then
					return
				end

				local n68 = 739130243

				if not u1207 then
					if not u1207 and not u1205 then
						if (LocalPlayer:GetAttribute("Gears") or 9e9) >= 5 then
							return
						end

						if v1164.Flags.AutoGetGears.CurrentValue or p152 then
							if n68 == n5 then
								n39 = 62235693
								n41 = 347493906
								n4 = 617857214
								n8 -= 1453
								n5 = 192215779
								n9 = 233784459
								n40 = 350138951
								n3 += 1837
								n1 = 102253608
								-- (could not be recovered)
							end

							u1207 = true
							xpcall(function()
								local now2 = tick()

								repeat
									task.wait()

									if GetGameMap():FindFirstChild("GearsTest") then
										if #GetGameMap().GearsTest:GetChildren() >= 5 or tick() - now2 >= 10 then
											break
										end
									end
								until tick() - now2 >= 10

								if tick() - now2 >= 10 then
									return v137("timed out waiting for gears")
								end

								for _, gearsDebri in ipairs(t24.GearsDebris) do
									local attribute = LocalPlayer:GetAttribute("Gears")

									if (attribute or 9e9) >= 5 then
										return
									end

									local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart

									while true do
										HumanoidRootPart.CFrame = CFrame.new(gearsDebri.Root.Position, HumanoidRootPart.CFrame.LookVector)
										fireproximityprompt(gearsDebri.ProximityPrompt)
										task.wait()

										if LocalPlayer:GetAttribute("Gears") ~= attribute or u48 then
											break
										elseif not LocalPlayer.Character.Parent.Parent == workspace.Players then
											break
										end
									end

									continue
								end
							end, function(p153)
								v137("error when grabbing gears:", tostring(p153))
							end)
							u1207 = false
						end

						return
					end
				end
			end
			CompleteGenerators = function(p154)
				if not v1164.Flags.DisableAnticheat.CurrentValue then
					if not LocalPlayer.Character:GetAttribute("acbypass") then
						if t24.GameState ~= 1 then
							return v137("You are not a player.")
						end

						if not IsRoundLoaded() then
							while true do
								v137("waiting for load")
								task.wait(1)

								if IsRoundLoaded() then
									break
								elseif u48 then
									break
								end
							end
						end

						if u48 then
							return v137("The script is unloaded.")
						end

						if u1205 and not p154 then
							return v137("You are already doing all generators.")
						end

						if IsKiller() then
							return v137("You are killer.")
						end

						local CurrentValue = v1164.Flags.AutoGeneratorFarm.CurrentValue
						local CFrame_ = LocalPlayer.Character.HumanoidRootPart.CFrame

						YoinkGears(true)
						u1205 = true

						local ok, result = pcall(function()
							for _, v in t24.RoundGenerators, nil, nil do
								if v:GetAttribute("GearMinigame") then
									if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
										v137("no gears to do generators.", LocalPlayer:GetAttribute("Gears"), "current gears")

										if not (#t24.GearsDebris > 0) then
											continue
										end

										v137("collecting gears to do generator")
										YoinkGears(true)
									end
								end

								if CurrentValue and not v1164.Flags.AutoGeneratorFarm.CurrentValue then
									return v137("Autofarm has been disabled.")
								end

								if not GetGeneratorProgress(v) or GetGeneratorProgress(v) == 100 then
									continue
								end

								local Prompt = v:FindFirstChild("Main") and v.Main:FindFirstChild("Prompt")

								if not Prompt then
									continue
								end

								if not LocalPlayer.Character then
									return v137("root got destroyed while doing gens")
								end

								if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
									return v137("root got destroyed while doing gens")
								end

								if not IsRoundLoaded() then
									return v137("round unloaded while doing gens")
								end

								task.wait(0.3)

								if CurrentValue and not v1164.Flags.AutoGeneratorFarm.CurrentValue then
									return
								end

								local now2 = tick()
								local v1642 = v1416(v, v.Positions.Center.Position)
								local v1643 = v1416(v, v.Positions.Right.Position)
								local v1644 = v1416(v, v.Positions.Left.Position)

								if v1642 and v1643 and v1644 then
									continue
								end

								if not v1642 then
									LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Center.CFrame
								elseif v1643 then
									if v1644 then
										v137("get y'all fat assess off the generator what the fuck")

										continue
									end

									LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Left.CFrame
								else
									LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Right.CFrame
								end

								LocalPlayer.Character.Humanoid:MoveTo(v.Main.Position)

								local exitTo

								while true do
									fireproximityprompt(Prompt)

									if LocalPlayer.Character.Parent == Spectating then
										break
									end

									if CurrentValue and not v1164.Flags.AutoGeneratorFarm.CurrentValue then
										exitTo = 1

										break
									end

									task.wait(0.5)

									if tick() - now2 >= 7 then
										exitTo = 2

										break
									end

									local ok = not t24.CurrentPuzzle

									if not ok then
										ok = not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")
									end

									if ok then
										if GetGeneratorProgress(v) and GetGeneratorProgress(v) >= 100 then
											exitTo = 2

											break
										end
									else
										exitTo = 2

										break
									end
								end

								if exitTo == 1 then
									return
								end

								if exitTo ~= 2 then
									return
								end

								if tick() - now2 >= 7 then
									v137("timed out waiting for response")

									continue
								end

								if LocalPlayer.PlayerGui.PuzzleUI:FindFirstChild("GearElement", true) then
									v137("thats a gear minigame!")
									v:SetAttribute("GearMinigame", true)

									if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
										if not (#t24.GearsDebris > 0) then
											v137("no gears to do this generator")
											t24:Sprint(true)
											t24:Sprint(false)

											continue
										end

										v137("collecting gears to do generator")
										YoinkGears(true)
									end
								end

								task.wait(0.4)

								if CurrentValue and not v1164.Flags.AutoGeneratorFarm.CurrentValue then
									return
								end

								if t24.CurrentPuzzle then
									if LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") then
										repeat
											if CurrentValue and not v1164.Flags.AutoGeneratorFarm.CurrentValue then
												return
											end

											task.wait()

											if not GetGeneratorProgress(v) or GetGeneratorProgress(v) == 100 then
												break
											end

											if v:GetAttribute("GearMinigame") then
												if not ((LocalPlayer:GetAttribute("Gears") or 0) > 0) then
													break
												end
											end
										until not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")

										v137("Autofarm: generator finished")

										continue
									end
								end

								v137("currentpuzzle or puzzleui is missing:", t24.CurrentPuzzle, LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI"))
							end

							local v1647 = true

							for _, v in t24.RoundGenerators, nil, nil do
								if v:GetAttribute("GearMinigame") then
									if not ((LocalPlayer:GetAttribute("Gears") or 0) < 1) and GetGeneratorProgress(v) and GetGeneratorProgress(v) ~= 100 then
										v1647 = false

										break
									end
								elseif GetGeneratorProgress(v) and GetGeneratorProgress(v) ~= 100 then
									v1647 = false

									break
								end
							end

							if CurrentValue then
								if not v1164.Flags.AutoGeneratorFarm.CurrentValue then
									return
								end
							end

							if not v1647 then
								CompleteGenerators(true)

								return "Retry"
							end

							LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame_
						end)

						if not ok then
							v137("Error in le autofarm :flushed:\n", result)

							return lib:Notify({
								Title = "Error",
								Content = "Autofarm errored",
								Duration = 6,
								Image = "circle-x"
							})
						end

						if result == "Retry" then
							return v137("Autofarm: Retrying generators")
						end

						u1205 = false

						if v1164.Flags.GeneratorNotifications.CurrentValue then
							lib:Notify({
								Title = "Complete every generator",
								Content = "All generators have been checked",
								Duration = 6
							})
						end

						return
						-- (could not be recovered)
					end
				end

				return v137("Anticheat disabler is enabled.")
			end
			Minigames:CreateToggle({
				Name = "Autofarm generators",
				CurrentValue = false,
				Flag = "AutoGeneratorFarm",
				Callback = function(p155)
					if p155 then
						CompleteGenerators()
					end

					if n40 == 1015842633 then
						return
					end

					n41 = 1040535060
					n5 = 617202615
					n2 -= 66
					n8 += 664
					n40 = 170298455
					n3 = 259159826
					n9 += 980
					n1 = 33549195
					n39 = 853451930
					-- (could not be recovered)
				end
			})
			Minigames:CreateToggle({
				Name = "└── Hide puzzle ui",
				CurrentValue = false,
				Flag = "AutoGeneratorNoUI",
				Callback = v1179,
				TextMode = true
			})
			GameStateChanged(function()
				local now2 = tick()

				while true do
					task.wait()

					if tick() - now2 >= 10 then
						break
					elseif #t24.RoundGenerators == 5 then
						break
					end
				end

				if not (tick() - now2 >= 10) then
					if v1164.Flags.AutoGeneratorFarm.CurrentValue then
						v137("doing autofarm generators")
						CompleteGenerators()
					end

					return
				end

				if n5 ~= 850991539 then
					return v137("timed out waiting for generators")
				end

				n6 = 436571589
				n7 -= 576
				n8 += 519
				n3 += 678
				n40 += 1059
				n41 += 238
				n5 = 524872449
				n39 = 817824739
				n9 = 425930714
				-- (could not be recovered)
			end)
			RandomNumber = function(p156, p157)
				if n41 > 127273616 then
					return Random.new():NextNumber(math.min(p156, p157), math.max(p156, p157))
				end

				n39 -= 1081
				n5 += 1682
				n3 = 494573114
				n40 = 369052235
				n41 -= 444
				n2 = 1066078732
				n8 -= 1518
				n6 = 152661271
				n4 = 613813869
				-- (could not be recovered)
			end

			do
				local connection

				Minigames:CreateToggle({
					Name = "Instantly enter generator",
					CurrentValue = false,
					Flag = "InstantlyEnterGenerator",
					Callback = function(p158)
						local n69 = 698692041

						if p158 then
							connection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
								if prompt.Parent.Name == "Main" and prompt.Parent.Parent.Name == "Generator" then
									fireproximityprompt(prompt)
								end
							end)
						elseif connection then
							if not (n6 < n69) then
								n6 -= 137
								n8 += 1822
								n40 = 107875407
								n7 -= 282
								n41 = 10120042
								n5 += 1003
								n3 += 935
								n1 = 688746560
								n39 -= 657
							end

							connection:Disconnect()
						end
					end
				})
			end

			do
				local n70

				Minigames:CreateButton({
					Name = "Complete current generator",
					Callback = function()
						n70 = 58481602

						if LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") then
							if n40 == 1015843586 then
								n41 -= 1301
								n39 -= 666
								n3 += 1493
								n1 = 30647241
								n4 = 735729563
								n5 = 481966008
								n8 += 1047
								n40 -= 18
								n70 -= 2011
								n6 += 1259
								-- (could not be recovered)
							end

							task.spawn(function()
								local v1654 = GetClosestGenerator()

								if not v1654 then
									return
								end

								local CurrentPuzzle

								while true do
									if task.wait() and GetGeneratorProgress(v1654) and GetGeneratorProgress(v1654) ~= 100 then
										if not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") then
											break
										end

										if t24.CurrentPuzzle == CurrentPuzzle or t24.CurrentPuzzle == nil then
											continue
										end

										if n70 < n40 then
											CurrentPuzzle = t24.CurrentPuzzle

											continue
										end

										n40 = 444769634
										n6 = 732412620
										n41 -= 141
										n5 = 379443844
										n70 -= 915
										n3 -= 358

										return nil
									end

									break
								end
							end)
						else
							v137("no puzzle ui")
						end
					end
				})
			end

			Minigames:CreateButton({
				Name = "Complete every generator",
				Callback = function()
					CompleteGenerators()

					if n3 ~= 165137722 then
						return
					end

					n3 = 247118470
					n6 += 170
					n41 = 500871392
					n9 = 725715127
					n39 = 17544510
					n7 -= 254
					n40 -= 1835
					n1 += 907
					n5 = 227046721
					-- (could not be recovered)
				end
			})
			Minigames:CreateSection("Flow Game")
			Minigames:CreateToggle({
				Name = "Draw solution",
				CurrentValue = false,
				Flag = "GeneratorHelper",
				Callback = v1179,
				ToolTip = "Draws the solution to the puzzle on the gui"
			})
			Minigames:CreateToggle({
				Name = "Auto solve flow game",
				CurrentValue = false,
				Flag = "AutoCompleteFlowGame",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Grid size changer",
				CurrentValue = false,
				Flag = "GeneratorGridMod",
				Callback = v1179,
				ToolTip = "Default = 7x7"
			})
			Minigames:CreateSlider({
				Name = "└── Grid Size",
				Range = {
					2,
					30
				},
				Increment = 1,
				Suffix = " cols and rows",
				CurrentValue = 7,
				Flag = "GeneratorGridModNum",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Puzzle speed",
				Range = {
					0.02,
					1
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 0.08,
				Flag = "GeneratorPuzzleDelay",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Use legit speed",
				CurrentValue = false,
				Flag = "LegitPuzzles",
				Callback = v1179,
				TextMode = true,
				ToolTip = "Uses a different speed when somebody is nearby or you are being spectated"
			})
			Minigames:CreateSlider({
				Name = "└── Puzzle speed",
				Range = {
					0.1,
					2
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 0.08,
				Flag = "GeneratorLegitPuzzleDelay",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Mistake chance",
				Range = {
					0,
					95
				},
				Increment = 5,
				Suffix = "%",
				CurrentValue = 0,
				Flag = "GeneratorMistakeChance",
				Callback = v1179
			})
			Minigames:CreateSection("Dots Connect")
			Minigames:CreateToggle({
				Name = "Draw lines",
				CurrentValue = false,
				Flag = "DotsConnectDrawLines",
				Callback = v1179,
				ToolTip = "Draws lines on the generator gui to solve the puzzle"
			})
			Minigames:CreateToggle({
				Name = "Auto connect lines",
				CurrentValue = false,
				Flag = "AutoCompleteDotsConnect",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Pairs amount changer",
				CurrentValue = false,
				Flag = "DotsGridChanger",
				Callback = v1179,
				ToolTip = "Default = 7x7"
			})
			Minigames:CreateSlider({
				Name = "└── Pairs",
				Range = {
					2,
					11
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 7,
				Flag = "DotsGridModNum",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Delay between lines",
				Range = {
					0.2,
					2
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 0.08,
				Flag = "DotsDelay",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Use legit speed",
				CurrentValue = false,
				Flag = "DotsLegitPuzzles",
				Callback = v1179,
				TextMode = true,
				ToolTip = "Uses a different speed when somebody is nearby or you are being spectated"
			})
			Minigames:CreateSlider({
				Name = "└── Delay between lines",
				Range = {
					0.2,
					2
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 0.2,
				Flag = "DotsDelayLegit",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Mistake chance",
				Range = {
					0,
					95
				},
				Increment = 5,
				Suffix = "%",
				CurrentValue = 0,
				Flag = "DotsMistakeChance",
				Callback = v1179
			})
			Minigames:CreateSection("Lockpick")
			Minigames:CreateToggle({
				Name = "Auto complete",
				CurrentValue = false,
				Flag = "AutoCompleteLockpick",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Anti miss",
				CurrentValue = false,
				Flag = "LockpickAntiMiss",
				Callback = v1179,
				ToolTip = "If you press at the wrong time it wont reset the progress basically"
			})
			Minigames:CreateSection("Gears")
			Minigames:CreateToggle({
				Name = "Auto turn gears",
				CurrentValue = false,
				Flag = "AutoCompleteGear",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "└── Turn degrees",
				Range = {
					1,
					90
				},
				Increment = 1,
				Suffix = "°",
				CurrentValue = 10,
				Flag = "GearTurnDegrees",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "└── Turn delay",
				Range = {
					0,
					200
				},
				Increment = 1,
				Suffix = " ms",
				CurrentValue = 6,
				Flag = "GearTurnDelay",
				Callback = v1179
			})
			Minigames:CreateSection("Nosferatu")
			Minigames:CreateToggle({
				Name = "Auto reel",
				CurrentValue = false,
				Flag = "AutoNosferatuReel",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Auto escape",
				CurrentValue = false,
				Flag = "NosferatuMinigame",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Minimum press delay",
				Range = {
					0,
					800
				},
				Increment = 10,
				Suffix = "ms",
				CurrentValue = 0,
				Flag = "AutoNosEscapeTimeMin",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "Maximum press delay",
				Range = {
					0,
					800
				},
				Increment = 10,
				Suffix = "ms",
				CurrentValue = 0,
				Flag = "AutoNosEscapeTimeMax",
				Callback = v1179
			})
			Minigames:CreateSection("Azure")
			Minigames:CreateToggle({
				Name = "Auto disarm minigame",
				CurrentValue = false,
				Flag = "AutoDisarmMinigame",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "└── Minimum time",
				Range = {
					0.5,
					30
				},
				Increment = 0.1,
				Suffix = "s",
				CurrentValue = 2.5,
				Flag = "AutoDisarmTimeMin",
				Callback = v1179
			})
			Minigames:CreateSlider({
				Name = "└── Maximum time",
				Range = {
					0.5,
					30
				},
				Increment = 0.1,
				Suffix = "s",
				CurrentValue = 2.5,
				Flag = "AutoDisarmTimeMax",
				Callback = v1179
			})
			Minigames:CreateToggle({
				Name = "Infinite disarm attempts",
				CurrentValue = false,
				Flag = "InfiniteDisarmAttempts",
				Callback = v1179,
				ToolTip = "Gives you infinite attempts in the minigame when disarming a vine or bulb from azure"
			})
			Minigames:CreateSection("Teleports")

			do
				local u1656
				local v1657 = Minigames:CreateDropdown({
					Name = "Select generator",
					Options = {
						"1",
						"2",
						"3",
						"4",
						"5"
					},
					CurrentOption = { "1" },
					Flag = "GeneratorSelected",
					Callback = function(p159)
						u1656 = tonumber(p159[1]:sub(1, 1))
					end
				})

				Minigames:CreateButton({
					Name = "Teleport to generator",
					Callback = function()
						if t24.RoundGenerators[u1656] and LocalPlayer.Character then
							if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								LocalPlayer.Character.HumanoidRootPart.CFrame = t24.RoundGenerators[u1656].Positions.Center.CFrame
							end
						end

						if n5 ~= 992001749 then
							return
						end

						n3 += 1121
						n5 += 339
						n8 += 303
						n41 -= 2020
						n40 = 445551172
						n6 -= 1220
						n39 = 481438120
						n9 = 173507229
						n2 -= 43
						-- (could not be recovered)
					end
				})
				task.spawn(function()
					while task.wait(0.2) do
						local t47 = {
							"1",
							"2",
							"3",
							"4",
							"5"
						}

						for k, v in t24.RoundGenerators, nil, nil do
							if GetGeneratorProgress(v) then
								t47[k] = ("%* (%*%%)"):format(k, GetGeneratorProgress(v))
							end
						end

						for k, v in t47, nil, nil do
							v1657.__DropdownOptions[k].Title.Text = v
						end

						local v1663 = t228_84_1[1]
						local v1664 = GetClosestGenerator(true)

						if not v1664 then
							v1657:SetTitle("Select generator")

							continue
						end

						if n2 ~= n8 then
							local v1665 = v1657
							local SetTitle = v1657.SetTitle
							local v1667 = ("Select generator (you are at #%*)"):format(v1664)

							SetTitle(v1665, v1667)

							continue
						end

						n41 = 141718677
						n2 = 582931153
						n8 = 949512993
						n39 += 1366
						n6 -= 1869
						n40 += 1424
						n4 = 811781692
						n7 += 1491
						n5 -= 354
						n5[v1663] = nil --[[ constant not decoded ]]
						-- (could not be recovered)
					end
				end)
			end

			Minigames:CreateSection("Generator Settings")
			Minigames:CreateToggle({
				Name = "Minigame Notifications",
				CurrentValue = false,
				Flag = "GeneratorNotifications",
				Callback = v1179,
				TextMode = true,
				ToolTip = "For flow game and dots connect, will notify you how fast you completed the minigame (when auto is on)"
			})
			Minigames:CreateToggle({
				Name = "Autofarm Notifications",
				CurrentValue = true,
				Flag = "AutofarmNotifications",
				Callback = v1179,
				TextMode = true
			})

			local ScreenGui2 = Instance.new("ScreenGui")

			ScreenGui2.Parent = gethui()
			ScreenGui2.ResetOnSpawn = false
			ScreenGui2.DisplayOrder = 100001
			ScreenGui2.OnTopOfCoreBlur = true
			ScreenGui2.Name = "LabelEspGui"

			local ScreenGui3 = Instance.new("ScreenGui")

			ScreenGui3.Parent = gethui()
			ScreenGui3.ResetOnSpawn = false
			ScreenGui3.DisplayOrder = 10000
			ScreenGui3.OnTopOfCoreBlur = true
			ScreenGui3.Name = "PlayerEspGui"
			AddBoxEsp = function(p160, p161, p162, p163)
				local Frame2 = Instance.new("Frame")

				Frame2.Parent = ScreenGui3
				Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Frame2.BorderSizePixel = 0
				Frame2.Visible = false

				local Frame3 = Instance.new("Frame")

				Frame3.Parent = ScreenGui3
				Frame3.Visible = false
				Frame3.BackgroundTransparency = 1

				local UIListLayout2 = Instance.new("UIListLayout")

				UIListLayout2.Parent = Frame3
				UIListLayout2.Padding = UDim.new(0, 5)
				UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

				local ImageLabel = Instance.new("ImageLabel")

				ImageLabel.Image = "rbxassetid://18818586848"
				ImageLabel.Size = UDim2.new(1, 0, 0.3, 0)
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.Parent = Frame3
				ImageLabel.Name = "BloxyCola"
				ImageLabel.Visible = false
				ImageLabel.LayoutOrder = 1

				local ImageLabel2 = Instance.new("ImageLabel")

				ImageLabel2.Parent = ImageLabel
				ImageLabel2.BackgroundTransparency = 1
				ImageLabel2.Image = t3[1]
				ImageLabel2.Size = UDim2.fromScale(1, 1)
				ImageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				ImageLabel2.Position = UDim2.fromScale(0.5, 0.5)

				local clone = ImageLabel:Clone()

				clone.Parent = Frame3
				clone.ImageLabel.Image = t3[2]
				clone.Name = "Medkit"
				clone.LayoutOrder = 2

				local clone2 = ImageLabel2:Clone()

				clone2.Parent = Frame3
				clone2.Name = "Device"
				clone2.Size = UDim2.new(1, 0, 0.3, 0)
				clone2.LayoutOrder = 3

				local UIStroke = Instance.new("UIStroke")

				UIStroke.Parent = Frame2
				UIStroke.Color = Color3.fromRGB(0, 0, 0)

				local Frame4 = Instance.new("Frame")

				Frame4.Parent = Frame2
				Frame4.BorderSizePixel = 0
				Frame4.Size = UDim2.fromScale(0, 0)
				Frame4.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
				Frame4.ZIndex = 2

				local Frame5 = Instance.new("Frame")

				Frame5.Parent = Frame2
				Frame5.BorderSizePixel = 0
				Frame5.Size = UDim2.fromScale(1, 1)
				Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				local UIGradient = Instance.new("UIGradient")

				UIGradient.Parent = Frame5
				UIGradient.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
					ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)),
					ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 128, 0)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
				})
				UIGradient.Rotation = 90

				local TextLabel = Instance.new("TextLabel")

				TextLabel.Parent = Frame2
				TextLabel.TextSize = 12

				if n5 < 1061082939 then
					TextLabel.Text = "100%"
					TextLabel.Font = Enum.Font.Gotham
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.AnchorPoint = Vector2.new(0.5, 1)
					TextLabel.Position = UDim2.new(0.5, 0, 1, 12)
					TextLabel.TextStrokeTransparency = 0
					TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					table.insert(t32, {
						Character = p160,
						ColorFlag = p161,
						ToggleFlag = p162,
						ShowItems = p163,
						HealthBarOutline = Frame2,
						HealthBar = Frame4,
						HealthBarGradientFill = Frame5,
						HPText = TextLabel,
						PlayerFlagsFrame = Frame3,
						Items = Items
					})

					return
				end

				n9 += 337
				n2 += 1553
				n40 = 1012042428
				n5 = 89089906
				n8 = 269661805
				n39 = 981591641
				n1 = 898499160
				n3 = 820486244
				n41 = 462036932
				-- (could not be recovered)
			end
			AddHighlightEsp = function(p164, p165, p166, p167)
				local Highlight = Instance.new("Highlight")

				Highlight.Name = p166 or "HIFORSAKEN"
				Highlight.Parent = p164
				Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight.Enabled = false

				local connection

				connection = Highlight:GetPropertyChangedSignal("Parent"):Connect(function()
					if Highlight:GetAttribute("DESTROYED") then
						return connection:Disconnect()
					end

					pcall(function()
						Highlight.Parent = p164

						return
					end)

					return
					-- (could not be recovered)
				end)

				if n3 ~= 747779294 then
					n41 += 1296
					n9 += 974
					n8 += 2008
					n3 -= 1562
					n40 -= 817
					n39 += 1779
					n4 = 420146991
					n1 = 551059887
					n5 -= 720
					-- (could not be recovered)
				end

				if not Highlight.Parent then
					return
				end

				Highlight.Parent.Destroying:Once(function()
					local Disconnect = connection.Disconnect
					local v1685 = Disconnect

					Disconnect(connection)

					return
				end)
				table.insert(t33, {
					Model = p164,
					ColorFlag = p165,
					Flag = p165:match("(.+)Color"),
					Highlight = Highlight,
					OnlyOutline = p167
				})
			end
			Stamina:CreateSection("Main")
			UpdateStamina = function(p168)
				local v1686 = p168 or Sprinting

				if t24.GameState ~= 1 then
					return
				end

				if not v1686.__staminaChangedEvent then
					return
				end

				if 847050767 ~= n39 then
					v1686.__staminaChangedEvent:Fire()

					return
				end

				n39 = 277209720
				n5 -= 1325
				n2 -= 1068
				n7 = 1046065799
				n41 += 1781
				n6 = 855239208
				n40 += 2015
				n9 = 994568926
				n8 = 157519354
				-- (could not be recovered)
			end

			local t48 = {
				MaxStamina = tostring(Sprinting.DefaultConfig.MaxStamina),
				StaminaLoss = tostring(Sprinting.DefaultConfig.StaminaLoss),
				StaminaGain = tostring(Sprinting.DefaultConfig.StaminaGain)
			}
			local t49 = {
				MaxStamina = 100,
				StaminaLoss = 10,
				StaminaGain = 20
			}
			local t50 = {
				MaxStamina = tostring(Sprinting.DefaultConfig.MaxStamina),
				StaminaLoss = tostring(Sprinting.DefaultConfig.StaminaLoss),
				StaminaGain = tostring(Sprinting.DefaultConfig.StaminaGain)
			}
			local t51 = {
				MaxStamina = 110,
				StaminaLoss = 9.5,
				StaminaGain = 21
			}

			local function v1691()
				local _
				local state = 1
				local v1697, Character_3, v1699, v1700, v1701, v1702, forIter, forState, forControl, v1706, v1707

				while true do
					if state == 1 then
						v1697 = nil
						Character_3 = LocalPlayer.Character

						if Character_3 then
							state = 2
						else
							state = 3
						end
					elseif state == 2 then
						Character_3 = LocalPlayer.Character.Parent == Killers3
						state = 3
					elseif state == 3 then
						if Character_3 then
							state = 4
						else
							state = 5
						end
					elseif state == 4 then
						Character_3 = t50
						state = 5
					elseif state == 5 then
						if Character_3 then
							state = 7
						else
							state = 6
						end
					elseif state == 6 then
						Character_3 = t48
						state = 7
					elseif state == 7 then
						v1699, v1700, v1701 = pairs(Character_3)
						v1702 = geniter(v1699, v1700, v1701)
						state = 8
					elseif state == 8 then
						forIter, forState, forControl = v1699, v1700, v1701

						if type(forIter) == 'table' then
							local forMeta = getmetatable(forIter)

							if type(forMeta) == 'table' and forMeta['__iter'] then
								forIter, forState, forControl = (forMeta['__iter'](forIter))
							else
								forIter, forState, forControl = next, forIter, nil
							end
						end

						state = 9
					elseif state == 9 then
						v1706, v1707 = (forIter(forState, forControl))

						if v1706 == nil then
							state = 10
						else
							forControl = v1706
							state = 11
						end
					else
						local v1709, v1710

						if state == 10 then
							v1709 = t113_78_1[2]
							v1710 = t113_78_1[3]
							state = 23
						elseif state == 11 then
							if Sprinting[v1706] == tonumber(v1707) then
								state = 12
							else
								state = 19
							end
						elseif state == 12 then
							local v1711 = table.pack(v1702())

							if v1711[1] then
								state = 13
							else
								state = 14
							end
						elseif state == 13 then
							v1706 = t113_172_1[2]
							v1707 = t113_172_1[3]
							state = 11
						elseif state == 14 then
							v1709 = t113_172_1[2]
							v1710 = t113_172_1[3]

							if v1697 then
								state = 22
							else
								state = 15
							end
						elseif state == 15 then
							if n6 == 89952777 then
								state = 16
							else
								state = 17
							end
						else
							if state == 16 then
								return
							end

							if state == 17 then
								n41 = 337722344
								n40 = 352701764
								n7 = 806723465
								state = 18
							else
								if state == 18 then
									n5 -= 2002
									n6 -= 1290
									n39 = 629964267
									n4 = 780352619
									n3 -= 524
									n2 = 575268382
									;(nil)()
									-- (could not be recovered)
								end

								if state == 19 then
									v1697 = true
									Sprinting[v1706] = tonumber(v1707)

									local v1712 = table.pack(v1702())

									if v1712[1] then
										state = 20
									else
										state = 21
									end
								elseif state == 20 then
									v1706 = t113_158_1[2]
									v1707 = t113_158_1[3]
									state = 11
								elseif state == 21 then
									v1709 = t113_158_1[2]
									v1710 = t113_158_1[3]
									state = 22
								elseif state == 22 then
									Sprinting.__staminaChangedEvent:Fire()
									state = 23
								elseif state == 23 then
									if n6 == 89952777 then
										state = 24
									else
										state = 25
									end
								else
									if state == 24 then
										return
									end

									if state == 25 then
										n41 = 337722344
										n40 = 352701764
										n7 = 806723465
										state = 26
									elseif state == 26 then
										n5 -= 2002
										n6 -= 1290
										n39 = 629964267
										n4 = 780352619
										n3 -= 524
										n2 = 575268382
										;(nil)()
										-- (could not be recovered)
									end
								end
							end
						end
					end
				end
			end

			do
				local n71

				GetInfStamMethod = function()
					return v1164.Flags.InfiniteStaminaMethod.CurrentOption[1]
					-- (could not be recovered)
				end
				Stamina:CreateToggle({
					Name = "Infinite stamina",
					CurrentValue = false,
					Flag = "UnlimitedRunning",
					Callback = function(p169)
						if p169 then
							t23.add("InfiniteStamina", function()
								if (GetInfStamMethod() == "Disable stamina loss") then
									Sprinting.Stamina = Sprinting.MaxStamina
								end
							end)
						else
							t23.disconnect("InfiniteStamina")
						end
					end
				})
				Stamina:CreateDropdown({
					Name = "└── Method",
					Options = {
						"Sprint while at 0 stamina (legit)",
						"Disable stamina loss"
					},
					CurrentOption = { "Sprint while at 0 stamina (legit)" },
					Flag = "InfiniteStaminaMethod",
					Callback = function(p170)
						if n2 < n1 then
							if p170[1] ~= "Disable stamina loss" and v1164.Flags.UnlimitedRunning.CurrentValue then
								Sprinting.StaminaLossDisabled = false
							end
						else
							n5 += 528
							n8 -= 1595
							n39 += 1459
							n1 = 640882367
							n41 = 171578592

							local v1714 = n4 + 1201
							local v1715

							while true do
								n4 = v1714
								n9 = 376052112
								n40 += 85
								n2 += 292
								v1715 += K_0

								if K_0 <= 0 then
									if not (v1715 >= J_0) then
										break
									end

									n8 -= 1595
									n39 += 1459
									n1 = 640882367
									n41 = 171578592
									v1714 = n4 + 1201

									continue
								end

								if not (v1715 <= J_0) then
									break
								end

								n8 -= 1595
								n39 += 1459
								n1 = 640882367
								n41 = 171578592
								v1714 = n4 + 1201
							end
						end
					end
				})
				canstartsprintzero = function()
					n71 = 316624629

					if n71 ~= n5 then
						return Sprinting.CanSprint and Sprinting.BindsEnabled and not Sprinting.IsSprinting and Sprinting.Stamina <= Sprinting.MinStamina
					end

					n5 -= 555
					n7 = 657723348
					n9 -= 1123
					n1 = 44358562
					n40 += 1738
					n39 += 1083
					n71 -= 110
					n2 = 947479667
					n8 = 885043165
					n41 += 509
					-- (could not be recovered)
				end

				if Sprinting.MobileButton then
					t24.Disconnectables[#t24.Disconnectables + 1] = Sprinting.MobileButton.MouseButton1Down:Connect(function()
						local n72

						if v1164.Flags.UnlimitedRunning.CurrentValue and GetInfStamMethod() ~= "Disable stamina loss" then
							task.defer(function()
								n72 = 874129851

								if canstartsprintzero() then
									t24:Sprint(true)
								end

								if n7 < n72 then
									return
								end

								n8 += 1400
								n7 -= 1982
								n41 = 354074516
								n5 += 1312
								n3 = 6908166
								n72 += 1473
								-- (could not be recovered)
							end)
						end

						return
						-- (could not be recovered)
					end)
				end

				local n73 = 0
				local u1718 = false

				t24.Disconnectables[#t24.Disconnectables + 1] = RunService.Heartbeat:Connect(function()
					if not v1164.Flags.UnlimitedRunning.CurrentValue or GetInfStamMethod() == "Disable stamina loss" then
						return
					end

					local Character_3 = LocalPlayer.Character

					if not Character_3 then
						return
					end

					if Sprinting.IsSprinting then
						n73 = os.clock()
					end

					local attribute = Character_3:GetAttribute("StaminaPenaltyActive")

					if attribute and not u1718 and not Sprinting.IsSprinting and Sprinting.CanSprint and os.clock() - n73 < 0.15 then
						t24:Sprint(true)
					end

					u1718 = attribute

					return
					-- (could not be recovered)
				end)

				local IsSprintKeyHeld = Sprinting.IsSprintKeyHeld
				local Stamina2 = Sprinting.Stamina
				local u1723 = false

				rawset(Sprinting, "Stamina", nil)
				setmetatable(Sprinting, {
					__index = function(p171, p172)
						if p172 ~= "Stamina" then
							return
						end

						if n7 ~= 420338839 then
							if u1723 then
								u1723 = false

								return math.max(Stamina2, rawget(p171, "MinStamina") + 1)
							end

							return Stamina2
						end

						n41 = 444967784
						n7 += 1827
						n1 -= 1488
						n8 += 1114
						n5 -= 512
						n3 = 70618919
						n2 = 363572262
						n40 = 518334927
						n39 = 684594683
						-- (could not be recovered)
					end,
					__newindex = function(p173, p174, p175)
						if p174 ~= "Stamina" then
							rawset(p173, p174, p175)
						else
							Stamina2 = p175
						end
					end
				})
				Sprinting.IsSprintKeyHeld = function(p176)
					local CurrentValue = v1164.Flags.UnlimitedRunning.CurrentValue

					if CurrentValue then
						CurrentValue = GetInfStamMethod() ~= "Disable stamina loss"

						if not (CurrentValue or v1164.Flags.AutoSprint.CurrentValue or t24._SprintDuringSk8) then
							return IsSprintKeyHeld(p176)
							-- (could not be recovered)
						end
					else
						if not (v1164.Flags.AutoSprint.CurrentValue or t24._SprintDuringSk8) then
							return IsSprintKeyHeld(p176)
							-- (could not be recovered)
						end
					end

					if not p176.IsSprinting then
						return IsSprintKeyHeld(p176)
					end

					if CurrentValue and p176.CanSprint then
						u1723 = true
					end

					return true
				end
			end

			do
				Stamina:CreateToggle({
					Name = "Enable stamina settings",
					CurrentValue = false,
					Flag = "StaminaSettingsEnabled",
					Callback = function(p177)
						local GetConfig = t24.GetConfig
						local v1726 = GetConfig

						if GetConfig(t24) and not p177 then
							for k in t48, nil, nil do
								Sprinting[k] = t24:GetConfig()[k] or t49[k]
							end

							local v1728 = t65_57_1[1]
							local v1729 = t65_57_1[2]
							local v1730 = t65_57_1[3]

							t23.disconnect("StaminaSettings")
						else
							if p177 then
								t23.add("StaminaSettings", v1691, 1.5)
							else
								t23.disconnect("StaminaSettings")
							end
						end
					end
				})
			end

			do
				for i = 1, 2 do
					local v1732 = i > 1 and t50 or t48
					local v1733 = i > 1 and t51 or t49

					Stamina:CreateSection((i > 1 and "Killer" or "Survivor") .. " stamina settings")
					Stamina:CreateInput({
						Name = "Max Stamina",
						CurrentValue = v1733.MaxStamina,
						PlaceholderText = "Number",
						RemoveTextAfterFocusLost = false,
						Flag = "StaminaOptions_MaxStamina",
						Callback = function(p178)
							if not tonumber(p178) then
								return lib:Notify({
									Title = "Please enter a number",
									Content = "to change your max stamina",
									Duration = 6.5
								})
							end

							if n3 == 747779294 then
								v1732.MaxStamina = p178
							else
								n7 = 207627966
								n3 += 268
								n2 = 711914050
								n4 = 416829804
								n39 = 721996736
								n5 = 263479151
								n8 -= 1075
								n41 += 5
								n40 = 297382817

								local v1734, v1735

								while true do
									v1734 += K_0

									if K_0 <= 0 then
										if not (v1734 >= J_0) then
											v1735 = v1734 >= J_0

											break
										end
									elseif not (v1734 <= J_0) then
										v1735 = v1734 <= J_0

										break
									end
								end

								if nil <= nil then
									-- (could not be recovered)
								end

								v1735[nil] = nil --[[ constant not decoded ]]
							end
						end
					})
					Stamina:CreateInput({
						Name = "Stamina Loss",
						CurrentValue = v1733.StaminaLoss,
						PlaceholderText = "Number",
						RemoveTextAfterFocusLost = false,
						Flag = "StaminaOptions_StaminaLoss",
						Callback = function(p179)
							if not tonumber(p179) then
								return lib:Notify({
									Title = "Please enter a number",
									Content = "to change your stamina loss",
									Duration = 6.5
								})
							end

							v1732.StaminaLoss = p179

							if n40 ~= 272453851 then
								return
							end

							n8 = 773371257
							n5 = 630222148
							n40 -= 647
							n39 += 1293
							n41 = 34456431
							n7 -= 1521
							n6 += 1017
							n2 = 808805181
							n1 = 177892718
							-- (could not be recovered)
						end
					})
					Stamina:CreateInput({
						Name = "Stamina Gain",
						CurrentValue = v1733.StaminaGain,
						PlaceholderText = "Number",
						RemoveTextAfterFocusLost = false,
						Flag = "StaminaOptions_StaminaGain",
						Callback = function(p180)
							if not tonumber(p180) then
								return lib:Notify({
									Title = "Please enter a number",
									Content = "to change your stamina gain",
									Duration = 6.5
								})
							end

							v1732.StaminaGain = p180
						end
					})
				end
			end

			Stamina:CreateSection("Sprinting")
			Stamina:CreateToggle({
				Name = "Fast sprint (kick warning)",
				CurrentValue = false,
				Callback = v1179,
				Flag = "FastSprint",
				ToolTip = "Super high chance of speedhack anticheat kick. Use if you want to, but expect to get kicked after a while",
				Callback = function(p181)
					if p181 and v1164.Flags.SprintSpeed.CurrentValue then
						Sprinting.SprintSpeed = v1164.Flags.SprintSpeed.CurrentValue
					elseif not p181 then
						Sprinting.SprintSpeed = t24:GetConfig() and t24:GetConfig().SprintSpeed or 26
					end

					if p181 then
						if n7 == 420340069 then
							n39 = 692650694
							n5 += 779
							n4 += 108
							n41 += 1374
							n8 += 326
							n40 -= 1063
							n7 -= 273
							n2 = 755706936
							n6 -= 573
							-- (could not be recovered)
						end

						t23.add("FastSprint", function(x, x)
							Sprinting.SprintSpeed = (x and x:FindFirstChild("Skateboard") and x.Skateboard.Transparency ~= 1) and 26 or v1164.Flags.SprintSpeed.CurrentValue
						end)
					else
						t23.disconnect("FastSprint")
					end
				end
			})
			Stamina:CreateSlider({
				Name = "└── Speed",
				Range = {
					26,
					30
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 26,
				Flag = "SprintSpeed",
				Callback = function(p182)
					local Flags = v1164.Flags

					while true do
						if Flags.FastSprint.CurrentValue then
							Sprinting.SprintSpeed = p182

							if Sprinting.IsSprinting then
								break
							end
						end

						return
					end

					while true do
						t24:Sprint(false)
						t24:Sprint(true)

						while true do
							return
						end
					end
				end
			})
			Stamina:CreateToggle({
				Name = "Instant stamina recovery",
				CurrentValue = false,
				Callback = function(p183)
					if p183 then
						t23.add("InstantStaminaRecover", function()
							if Sprinting.timeUntilStaminaRecovers > 0 and not Sprinting.IsSprinting and not Sprinting:IsSprintKeyHeld() then
								Sprinting.timeUntilStaminaRecovers = 0
							end
						end)
					else
						t23.disconnect("InstantStaminaRecover")
					end
				end,
				Flag = "InstantStaminaRecover"
			})
			Stamina:CreateSlider({
				Name = "Maximum penalty time",
				Range = {
					0,
					2
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 2,
				Flag = "MaxPenaltyTime",
				Callback = v1179
			})
			MapHealthColor = function(p184, p185)
				local v1737 = math.clamp(p184 / p185, 0, 1)

				if n1 == 525278510 then
					return Color3.new(1 - v1737, v1737, 0)
				end

				n40 += 1207
				n6 -= 1242
				n8 = 86500315
				n5 = 561622553
				n4 = 849842497
				n2 -= 308
				n1 = 1011944055
				n41 = 891198217
				n39 = 260488175
				-- (could not be recovered)
			end

			local u1738
			local Part = Instance.new("Part")

			Part.Anchored = true
			Part.CanCollide = false
			Part.Transparency = 0.8
			Part.Material = Enum.Material.Neon
			Part.CFrame = CFrame.new(99999, 99999999, 9999)
			Part.Parent = workspace
			Part:SetAttribute("in", false)

			local Part2 = Instance.new("Part")

			Part2.Anchored = true
			Part2.Size = Vector3.zero
			Part2.CanCollide = false
			Part2.Transparency = 0.8
			Part2.Material = Enum.Material.Neon
			Part2.CFrame = CFrame.new(99999, 99999999, 9999)
			Part2.Parent = workspace

			local Part3 = Instance.new("Part")

			Part3.Name = "DangerZone"
			Part3.Shape = Enum.PartType.Cylinder
			Part3.Anchored = true
			Part3.CanCollide = false
			Part3.Transparency = 0.8
			Part3.Material = Enum.Material.Neon
			Part3.Color = Color3.fromRGB(255, 0, 0)
			Instance.new("PathfindingModifier", Part3).Label = "Danger"
			Part3.Parent = workspace
			Part2:SetAttribute("in", false)

			do
				local t52 = {}

				GetLocalHitboxes = function(p186)
					local n74 = 0
					local children = workspace.Hitboxes:GetChildren()

					for i = 1, #children do
						local v1746 = children[i]

						if v1746.Name:sub(1, -7) == LocalPlayer.Name and v1746.Size == p186 then
							n74 += 1
						end
					end

					return n74
				end
				createm1part = function(p187)
					local v1747 = t24.AttackHitboxes[p187.Name]

					if v1747.fake then
						return
					end

					local Part4 = Instance.new("Part")

					Part4.Anchored = true
					Part4.Size = v1747.size
					Part4.CanCollide = false
					Part4.Parent = workspace
					t24.Disconnectables[#t24.Disconnectables + 1] = p187:GetPropertyChangedSignal("Parent"):Once(function()
						Part4:Destroy()
						t52[p187] = nil

						return
						-- (could not be recovered)
					end)
					t52[p187] = Part4

					if n39 ~= 622648131 then
						task.spawn(function()
							local QueryHitbox = p187:FindFirstChild("QueryHitbox")
							local HumanoidRootPart = p187:FindFirstChild("HumanoidRootPart")

							while p187.Parent and t52[p187] and not u48 do
								if not RunService.RenderStepped:Wait() then
									break
								end

								if not QueryHitbox or not HumanoidRootPart then
									QueryHitbox = p187:FindFirstChild("QueryHitbox")
									HumanoidRootPart = p187:FindFirstChild("HumanoidRootPart")
								end

								if QueryHitbox and HumanoidRootPart then
									local v1751 = true

									if not v1164.Flags.M1Visualizer.CurrentValue then
										v1751 = false
									elseif v1164.Flags.M1VisualizerRequireReady.CurrentValue and not HasAbilityReady(GetM1Name()) then
										v1751 = false
									elseif v1164.Flags.M1VisualizerNoHitboxes.CurrentValue and GetLocalHitboxes(v1747.size) > 0 then
										v1751 = false
									end

									Part4.CFrame = (v1164.Flags.M1VisualizerTrackQuery.CurrentValue and t24.AttackHitboxes:Predict(HumanoidRootPart, QueryHitbox) or HumanoidRootPart.CFrame):ToWorldSpace(CFrame.new(-v1747.offset))
									Part4.Material = v1164.Flags.M1VisualizerMaterial.CurrentOption[1]
									Part4.Transparency = v1751 and v1164.Flags.M1VisualizerTransparency.CurrentValue or 1
									Part4.Color = v1164.Flags.M1VisualizerColor.Color
								end
							end

							Part4:Destroy()
							t52[p187] = nil
						end)

						return
					end

					n39 = 238243051
					n40 += 904
					n3 = 196218035
					n4 -= 924
					n41 -= 968
					n2 += 389
					n5 += 1784
					n6 = 874960366
					n7 = 795446236
					-- (could not be recovered)
				end
			end

			local funcs = t23.funcs
			local indexes = t23.indexes

			t23.add("c00lkiddChecker", function()
				if (not Killers3:FindFirstChild("c00lkidd")) then
					t24.UsingWalkspeedOverride = false
				end
			end, 0.25)
			t23.add("GuiVisManager", function()
				if _G.globaluilibrary then
					_G.globaluilibrary.Enabled = (u1069 and v1168.isSelected)
				end
			end)
			t23.add("EspUnloader", function()
				local x = (not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Humanoid")) or (t24.GameState == 1 or workspace.CurrentCamera.CameraSubject ~= LocalPlayer.Character.Humanoid)

				if u48 then
					for n, n in pairs(t32) do
						n.HealthBarOutline:Destroy()
						n.PlayerFlagsFrame:Destroy()
					end

					for n, n in pairs(t33) do
						n.Highlight:Destroy()
					end

					for n, n in pairs(t34) do
						n.Circle:Destroy()
					end

					for n, n in pairs(t35) do
						n.Label:Destroy()
					end

					table.clear(t32)
					table.clear(t33)
					table.clear(t34)
					table.clear(t35)
					u1738 = true

					return true
				end

				ScreenGui3.Enabled = x
				ScreenGui2.Enabled = x
			end)

			local connection = RunService.RenderStepped:Connect(function(x)
				local G = LocalPlayer.Character

				setthreadidentity(8)

				for H = 1, #funcs do
					local R = funcs[H](x, G)

					setthreadidentity(8)

					if R ~= nil then
						return
					end
				end

				if (not indexes.InstantStaminaRecover) then
					local x = v1164.Flags.MaxPenaltyTime.CurrentValue

					if x < 2 then
						Sprinting.timeUntilStaminaRecovers = math.min(Sprinting.timeUntilStaminaRecovers, x)
					end
				end;

				(function()
					if not G then
						return
					end

					if (Sprinting.Stamina ~= Sprinting.MaxStamina or not v1164.Flags.AutoSprint.CurrentValue) and not t24._SprintDuringSk8 then
						return
					end

					if (G.Parent == Killers3 and v1164.Flags.AI_Killer_Toggle.CurrentValue) or t24._SprintDuringSk8 or ((not Sprinting.IsSprinting and tick() - t24.RoundStart >= 6) and not (v1164.Flags.AI_Survivor_Toggle.CurrentValue and LocalPlayer.Character.Parent == Survivors3) and Sprinting.CanSprint and Sprinting.BindsEnabled) then
						t24:Sprint(true)
					end
				end)()

				for x = #t32, 1, -1.0 do
					xpcall(function()
						local a = t32[x]
						local Y = a.Character

						if not Y or not Y.Parent then
							a.HealthBarOutline:Destroy()
							a.PlayerFlagsFrame:Destroy()
							table.remove(t32, x)

							return
						end

						local x = a.HealthBar
						local W = a.HealthBarOutline
						local A = a.HPText
						local q = a.PlayerFlagsFrame
						local e = Y:FindFirstChild("HumanoidRootPart")
						local d = Y:FindFirstChild("Humanoid")
						local o = Players:GetPlayerFromCharacter(Y)

						if not (e and e.Parent and d and d.Parent) then
							x:Destroy()
						else
							local Y, n = workspace.CurrentCamera:WorldToScreenPoint(e.Position)

							if v1164.Flags[a.ToggleFlag].CurrentValue and n and (workspace.CurrentCamera.CFrame.Position - e.Position).Magnitude <= _G.ESP_HPBAR_MIN_MAGNITUDE then
								local a = (workspace.CurrentCamera.ViewportSize.Y / 2) / (Y.Z * math.tan(math.rad(workspace.CurrentCamera.FieldOfView) / 2))
								local n = 5 * a

								W.Visible = true
								x.Size = UDim2.fromScale(1, 1 - (d.Health / d.MaxHealth))
								W.Size = UDim2.fromOffset(3, n)
								W.Position = UDim2.fromOffset(Y.X - 1.8 * a, Y.Y - n / 2)
								A.Text = (v1164.Flags.HealthBarStyle.CurrentOption[1] == "Percent") and math.ceil((d.Health / d.MaxHealth) * 100) .. "%" or tostring(math.ceil(d.Health))

								if o then
									q.Visible = true
									q.Size = UDim2.fromOffset(n / 3, n)
									q.Position = UDim2.fromOffset(Y.X + 1.8 * a, Y.Y - n / 2)

									if v1164.Flags.EspShowItems.CurrentValue then
										q.BloxyCola.Visible = o.Backpack:FindFirstChild("BloxyCola") ~= nil
										q.Medkit.Visible = o.Backpack:FindFirstChild("Medkit") ~= nil
									else
										q.BloxyCola.Visible = false
										q.Medkit.Visible = false
									end

									if v1164.Flags.EspShowDevice.CurrentValue then
										q.Device.Visible = true
										q.Device.Image = v113[o:GetAttribute("Device")] or v113.Unknown
									else
										q.Device.Visible = false
									end
								else
									q.Visible = false
								end
							else
								W.Visible = false
								q.Visible = false
							end
						end
					end, function(x)
						v137("error in box esp:", tostring(x))
					end)
				end

				for x = #t33, 1, -1.0 do
					xpcall(function()
						local a = t33[x]
						local Y = a.Model
						local W = a.Highlight

						W.Enabled = v1164.Flags[a.Flag].CurrentValue

						if Y:FindFirstChild("Highlight") then
							Y.Highlight:Destroy()
						end

						if Y:FindFirstChild("PlayerAura") then
							Y.PlayerAura:Destroy()
						end

						if not Y or not Y.Parent then
							W:Destroy()
							table.remove(t33, x)

							return
						end

						local x = v1164.Flags.OutlineOnlyESP.CurrentValue or a.OnlyOutline

						W.FillTransparency = x and 1 or 0

						local Y = v1164.Flags[a.ColorFlag].Color
						local n, A, r = Y:ToHSV()

						if not x then
							local x = v1164.Flags.OutlineWhiteness.CurrentValue / 100

							r = r + (1 - r) * x
							A = A * (1 - x)
						end

						W.OutlineColor = Color3.fromHSV(n, A, r)
						W.FillColor = Y

						if v1164.Flags.NoOutlineESP.CurrentValue and not a.OnlyOutline then
							W.OutlineTransparency = 1
						else
							W.OutlineTransparency = 0
						end
					end, function(x)
						v137("error in chams esp:", tostring(x))
					end)
				end

				for x = #t34, 1, -1.0 do
					xpcall(function()
						local a = t34[x]

						a.Circle.Size = Vector3.new(0.2, a.RangeX * 2, a.RangeZ * 2)
						a.Circle.CFrame = CFrame.new(a.Object.Position.X, a.Object.Position.Y + 0.2, a.Object.Position.Z) * CFrame.Angles(0, 0, math.rad(90))
					end, function(x)
						v137("error in range esp:", tostring(x))
					end)
				end

				for x = #t35, 1, -1.0 do
					xpcall(function()
						local a = t35[x]
						local Y = a.Object
						local W = a.Label
						local n = a.Flag

						if Y and Y.Parent and Y:IsDescendantOf(workspace) then
							local P, A = workspace.CurrentCamera:WorldToScreenPoint(Y.Position)

							if A and v1164.Flags[n].CurrentValue then
								local Y = 0

								if a.Display.Offset then
									local n = (workspace.CurrentCamera.ViewportSize.Y / 2) / (P.Z * math.tan(math.rad(workspace.CurrentCamera.FieldOfView) / 2))

									Y = a.Display.Offset * n
								end

								W.Position = UDim2.fromOffset(P.X, P.Y - Y)
								W.Visible = true
							else
								W.Visible = false
							end
						else
							W:Destroy()
							table.remove(t35, x)
						end
					end, function(x)
						v137("error in label esp:", tostring(x))
					end)
				end
			end)

			esp:CreateSection("Player Esp")
			esp:CreateToggle({
				Name = "Killer Esp",
				CurrentValue = false,
				Flag = "KillerEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Survivor Esp",
				CurrentValue = false,
				Flag = "SurvivorEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Item Esp",
				CurrentValue = false,
				Flag = "ItemEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Zombie/Minion Esp",
				CurrentValue = false,
				Flag = "EntityEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "007n7 Clone Esp",
				CurrentValue = false,
				Flag = "CloneEsp",
				Callback = v1179
			})
			esp:CreateSection("Ability/Object Esp")
			esp:CreateToggle({
				Name = "Generator Esp",
				CurrentValue = false,
				Flag = "GeneratorEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Jane Doe Quest Esp",
				CurrentValue = false,
				Flag = "JaneDoeQuestEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Gingerbread Esp [DISABLED]",
				CurrentValue = false,
				Flag = "GingerbreadEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Sukkar Esp [DISABLED]",
				CurrentValue = false,
				Flag = "SukkarEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Taph Esp",
				CurrentValue = false,
				Flag = "TaphEsp",
				Callback = v1179
			})

			do
				local n75

				esp:CreateToggle({
					Name = "Tripmine ranges Esp",
					CurrentValue = false,
					Flag = "TripmineRanges",
					Callback = function(p188)
						n75 = 773455347

						if not p188 then
							if not (n8 < n75) then
								n40 = 854085237
								n39 = 810971785
								n7 += 194
								n5 += 1134
								n9 = 467246925
								n8 = 623594520
								n75 += 1258
								n41 += 1925
								n6 = 925021924
								n4 += 46
								-- (could not be recovered)
							end

							for i = 1, #t24.TaphDebris do
								pcall(function()
									t24.TaphDebris[i].SubspaceBox.RANGEVIS:Destroy()

									local n76 = 453094984

									if n5 == n76 then
										n4 += 1713
										n39 = 33070129
										n5 -= 39
										n9 -= 356
										n7 -= 1912
										n41 = 995564339
										upv195 = nil --[[ constant not decoded ]]
									end
								end)
							end
						end
					end
				})
			end

			esp:CreateToggle({
				Name = "Builderman Esp",
				CurrentValue = false,
				Flag = "BuildermanEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "John Doe Esp",
				CurrentValue = false,
				Flag = "JohnDoeEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Veeronica Esp",
				CurrentValue = false,
				Flag = "VeeronicaEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Azure Esp",
				CurrentValue = false,
				Flag = "AzureEsp",
				Callback = v1179
			})
			esp:CreateToggle({
				Name = "Bulb/Vine ranges Esp",
				CurrentValue = false,
				Flag = "AzureEspRange",
				Callback = function(p189)
					if not p189 then
						for i = 1, #t24.AzureDebris do
							pcall(function()
								t24.AzureDebris[i].RootPart.RANGEVIS:Destroy()

								return
								-- (could not be recovered)
							end)
						end
					end
				end
			})
			esp:CreateToggle({
				Name = "Gears Esp",
				CurrentValue = false,
				Flag = "GearsEsp",
				Callback = v1179
			})

			if _G.UNLOCK_CD_ESP then
				esp:CreateToggle({
					Name = "Cooldown Esp",
					CurrentValue = false,
					Flag = "CooldownEsp",
					Callback = v1179,
					ToolTip = "Shows you other people's cooldown of abilities like block, mass infection, plasma beam, etc"
				})
			end

			esp:CreateSection("Esp Colors")
			esp:CreateColorPicker({
				Name = "Generator Color",
				Color = Color3.fromRGB(221, 51, 255),
				Flag = "GeneratorEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Killer Color",
				Color = Color3.fromRGB(255, 0, 0),
				Flag = "KillerEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Survivor Color",
				Color = Color3.fromRGB(0, 0, 255),
				Flag = "SurvivorEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Item Color",
				Color = Color3.fromRGB(0, 255, 255),
				Flag = "ItemEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Gingerbread Color",
				Color = Color3.fromRGB(255, 50, 204),
				Flag = "GingerbreadEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Zombie/Minion Color",
				Color = Color3.fromRGB(255, 159, 0),
				Flag = "EntityEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "007n7 Clone Color",
				Color = Color3.fromRGB(157, 255, 0),
				Flag = "CloneEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Taph Color",
				Color = Color3.fromRGB(75, 255, 145),
				Flag = "TaphEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Builderman Color",
				Color = Color3.fromRGB(157, 255, 0),
				Flag = "BuildermanEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "John Doe Color",
				Color = Color3.fromRGB(0, 0, 0),
				Flag = "JohnDoeEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Veeronica Color",
				Color = Color3.fromRGB(255, 0, 242),
				Flag = "VeeronicaEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Azure Color",
				Color = Color3.fromRGB(255, 255, 255),
				Flag = "AzureEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Quest Color",
				Color = Color3.fromRGB(186, 119, 52),
				Flag = "JaneDoeQuestEspColor",
				Callback = v1179
			})
			esp:CreateColorPicker({
				Name = "Gears Color",
				Color = Color3.fromRGB(255, 159, 0),
				Flag = "GearsEspColor",
				Callback = v1179
			})
			esp:CreateSection("Esp Settings")
			esp:CreateToggle({
				Name = "Outlines only",
				CurrentValue = false,
				Flag = "OutlineOnlyESP",
				Callback = v1179,
				TextMode = true
			})
			esp:CreateToggle({
				Name = "No outlines",
				CurrentValue = false,
				Flag = "NoOutlineESP",
				Callback = v1179,
				TextMode = true
			})
			esp:CreateToggle({
				Name = "Show items in Player Esp",
				CurrentValue = false,
				Flag = "EspShowItems",
				Callback = v1179,
				TextMode = true
			})
			esp:CreateToggle({
				Name = "Show device in Player Esp",
				CurrentValue = false,
				Flag = "EspShowDevice",
				Callback = v1179,
				TextMode = true
			})
			esp:CreateSlider({
				Name = "Outline whiteness",
				Range = {
					0,
					100
				},
				Increment = 5,
				Suffix = "%",
				CurrentValue = 50,
				Flag = "OutlineWhiteness",
				Callback = v1179,
				ToolTip = "Determines how much lighter the outline is compared to the main color of the highlight"
			})
			esp:CreateDropdown({
				Name = "HP Bar style",
				Options = {
					"Percent",
					"Number"
				},
				CurrentOption = { "Percent" },
				MultipleOptions = false,
				Flag = "HealthBarStyle",
				Callback = v1179
			})
			AddTextLabel = function(p190, p191, p192, p193, p194)
				local TextLabel = Instance.new("TextLabel")

				TextLabel.Parent = ScreenGui2

				local n77 = 717290248

				TextLabel.Size = UDim2.new(0, 0, 0, 0)
				TextLabel.Font = Enum.Font.GothamMedium
				TextLabel.BackgroundTransparency = 1
				TextLabel.Visible = false
				t35[#t35 + 1] = {
					Object = p190,
					Label = TextLabel,
					Display = p193,
					Flag = p192
				}

				if n77 ~= n2 then
					task.spawn(function()
						if p190.Parent then
							if u48 then
							else
								while true do
									if v1164.Flags[p192].CurrentValue then
										if typeof(p193) == "table" then
											if TextLabel.Text then
												xpcall(function()
													TextLabel.Text = p193.Text()

													return
													-- (could not be recovered)
												end, function(p195)
													v137("failed to set esp text of", tostring(p190:GetFullName()), " erorr:", tostring(p195))

													return
													-- (could not be recovered)
												end)
											end

											if p193.Font then
												TextLabel.Font = p193.Font
											end

											if p193.TextSize then
												TextLabel.TextSize = p193.TextSize
											end
										else
											TextLabel.Text = p193
										end

										if p194 then
											TextLabel.TextStrokeTransparency = 0
											TextLabel.TextStrokeColor3 = p194
										end

										TextLabel.TextColor3 = v1164.Flags[p191].Color
									end

									task.wait(0.1)

									if p190.Parent then
										if u48 then
											break
										end

										continue
									end

									TextLabel:Destroy()

									return
								end
							end

							v137("ending text esp because unload")
						end

						TextLabel:Destroy()
					end)

					return
				end

				n40 = 347850239
				n6 = 654330698
				n8 = 140472099
				n9 = 990157645
				n5 = 1039554427
				n4 = 680339503
				n39 += 1854
				n41 = 609727530
				n2 += 887
				-- (could not be recovered)
			end
			AddAbilitiesContainer = function(p196)
				local BillboardGui = Instance.new("BillboardGui")

				BillboardGui.Parent = p196
				BillboardGui.AlwaysOnTop = false
				BillboardGui.StudsOffset = Vector3.new(0, 6, 0)
				BillboardGui.Size = UDim2.new(0, 240, 0, 50)
				BillboardGui.Name = "Abilities"
				BillboardGui.MaxDistance = 80
				BillboardGui.ResetOnSpawn = false

				local Frame2 = Instance.new("Frame")

				Frame2.Parent = BillboardGui
				Frame2.Size = UDim2.new(1, 0, 1, 0)
				Frame2.BackgroundTransparency = 1

				local UIListLayout2 = Instance.new("UIListLayout")

				UIListLayout2.Parent = BillboardGui
				UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout2.Padding = UDim.new(0, 42)
				UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

				if n6 == 89952777 then
					return Frame2
				end

				n6 = 407226322
				n40 += 1018
				n5 -= 630
				n39 += 644
				n9 += 760
				n7 -= 218
				n1 = 459782832
				n8 = 107271729
				n41 = 260911060
				-- (could not be recovered)
			end

			do
				local n78

				AddAbilityIntoContainer = function(p197, p198, p199, p200, p201)
					n78 = 586263945

					if p198:FindFirstChild(p197) then
						return v137(p197, "already in container")
					end

					local ImageLabel = Instance.new("ImageLabel")

					ImageLabel.Parent = p198
					ImageLabel.Size = UDim2.new(0, 50, 0, 50)
					ImageLabel.BackgroundTransparency = 1
					ImageLabel.Image = p199
					ImageLabel.LayoutOrder = p201
					ImageLabel.Name = p197

					local TextLabel = Instance.new("TextLabel")

					TextLabel.Parent = ImageLabel
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.TextSize = 12
					TextLabel.Font = Enum.Font.RobotoMono
					TextLabel.BackgroundTransparency = 1
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextStrokeTransparency = 0
					TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					TextLabel.AnchorPoint = Vector2.new(0.5, 0)
					TextLabel.Position = UDim2.new(0.5, 0, 1, -4)
					task.spawn(function()
						local now2 = tick()

						while tick() - now2 <= p200 do
							if u48 then
								return p198:Destroy()
							end

							TextLabel.Text = ("%s\n%.1fs"):format(p197:gsub("Walkspeed Override", "WS Override"), p200 - (tick() - now2))
							task.wait(0.1)
						end

						if n78 == n41 then
							n7 -= 1423
							n78 = 763277233
							n41 -= 1047
							n5 = 307356941
							n8 -= 1789
							n39 = 917115583
							n2 += 100
						else
							ImageLabel:Destroy()
						end
					end)

					return
					-- (could not be recovered)
				end
			end

			local function v1816(p202, p203, p204)
				local n79

				AddTextLabel(p202, p203, p204, {
					Text = function()
						n79 = 357099644

						local HumanoidRootPart = LocalPlayer.Character and t24.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local Name = p202.Parent.Name

						if Name == "PizzaDeliveryRig" then
							Name = "Minion"
						elseif Name == "1x1x1x1Zombie" then
							Name = "Zombie"
						elseif Name == "007n7" then
							if p202.Parent:GetAttribute("clone") then
								Name = "Clone"
							end
						end

						local v1820 = p202.Name == "HumanoidRootPart" and p202.Parent:FindFirstChild("Humanoid") and (workspace.CurrentCamera.CFrame.Position - p202.Position).Magnitude >= _G.ESP_HPBAR_MIN_MAGNITUDE

						if HumanoidRootPart then
							return ("%s • %dm%s"):format(Name, math.floor((p202.Position - HumanoidRootPart.Position).magnitude / 3.57), v1820 and (" • %dHP"):format(p202.Parent.Humanoid.Health) or "")
						end

						if n39 ~= n79 then
							return ("%s %s"):format(Name, v1820 and (" • %dHP"):format(p202.Parent.Humanoid.Health) or "")
						end

						n6 += 1361
						n1 -= 1917
						n40 = 828854456
						n5 += 1503
						n41 -= 1391
						n39 += 852
						n79 += 1485
						-- (could not be recovered)
					end,
					TextSize = 15,
					Font = Enum.Font.Gotham,
					Color3.fromRGB(0, 0, 0),
					Offset = tostring(p202) ~= "Sixer" and 3 or 5.5
				}, Color3.fromRGB(0, 0, 0))
			end

			InterceptAudio = function(p205, p206)
				v138("replacing", p205, "with", p206)
				p205.SoundId = p206
			end

			local t53 = {}
			local t54 = {}

			Aimbot:CreateSection("Silent Aim")
			Aimbot:CreateToggle({
				Name = "Enable silent aim",
				CurrentValue = false,
				Flag = "SilentAimToggle",
				Callback = v1179
			})
			Aimbot:CreateDropdown({
				Name = "Ability to use silent aim",
				Options = {
					"Plasma beam - Dusekkar",
					"Void Star - Noli",
					"Corrupt Nature - Coolkid",
					"Crystal - Jane Doe",
					"Enstrangle - Azure",
					"Infernal Cry - Sixer"
				},
				CurrentOption = {},
				MultipleOptions = true,
				Flag = "SilentAimValues",
				Callback = function(p207)
					t53 = {}

					for _, v in p207, nil, nil do
						t53[v:match("^(.-)%s*%-")] = true
					end
				end,
				Searchable = true
			})
			Aimbot:CreateToggle({
				Name = "Dusekkar target survivor",
				CurrentValue = false,
				Flag = "DusekkarSurvivor",
				Callback = v1179,
				TextMode = true
			})

			do
				local function v1825()
					local Crystal = Config4.Crystal
					local v1827 = Crystal.MinChargeTime / Crystal.MaxChargeTime

					for _, child in ipairs(TemporaryUI:GetChildren()) do
						local Bar = child:FindFirstChild("Bar")
						local Percent = Bar and Bar:FindFirstChild("Percent")

						if n8 < n4 then
							if not Percent then
								continue
							end

							local v1832 = tonumber(Percent.Text:match("%d+"))

							if v1832 then
								return math.clamp(v1832 / 100, v1827, 1)
							end

							continue
						end

						n6 = 181489047
						n5 = 50088268
						n40 += 976
						n39 = 199332473
						n1 = 516014704
						n9 = 141539593
						n8 += 1302
						n4 = 194513433
						n41 -= 1863
						-- (could not be recovered)
					end

					return v1827
				end

				local v1833

				v1833 = v39(GetMousePos, newcclosure(function(...)
					setthreadidentity(2)

					local Killer = GetClosestToMouse("Killer")
					local Survivor = GetClosestToMouse("Survivor")

					if t24.DusekkarActive and v1164.Flags.SilentAimToggle.CurrentValue then
						if t53["Plasma beam"] then
							if v1164.Flags.DusekkarSurvivor.CurrentValue and Survivor then
								return Predict(Survivor)
							end

							if Killer then
								return Predict(Killer)
							end
						end
					elseif t24.NoliActive and v1164.Flags.SilentAimToggle.CurrentValue then
						if t53["Void Star"] and Survivor then
							local HumanoidRootPart = Survivor:FindFirstChild("HumanoidRootPart")
							local hit = workspace:Raycast(HumanoidRootPart.Position, Vector3.new(0, -1000, 0), RaycastParams.new())
							local Position = hit and hit.Position or HumanoidRootPart.Position

							return Position
						end
					elseif t24.CoolkidActive and v1164.Flags.SilentAimToggle.CurrentValue then
						if t53["Corrupt Nature"] and Survivor then
							return Predict(Survivor)
						end
					elseif t24.Has007n7Clone and v1164.Flags["007n7CloneFollow"].CurrentValue then
						local ok, result = pcall(getN7player)

						if ok and result then
							local ok2, result2 = pcall(calcN7position, result, t24.Has007n7Clone)

							if ok2 and result2 then
								return result2
							end

							if ok2 then
								v138("no res for bodyblock clc")
							else
								v137("bodyblock calc err:", tostring(result2))
							end
						elseif ok then
							v138("no target for bodyblock")
						else
							v137("bodyblock err:", tostring(result))
						end
					elseif tostring(LocalPlayer.Character) ~= "JaneDoe" or not v1164.Flags.SilentAimToggle.CurrentValue then
						if tostring(LocalPlayer.Character) == "Sixer" and v1164.Flags.SilentAimToggle.CurrentValue and t53["Infernal Cry"] then
							local Survivor2 = GetClosestToMouse("Survivor")

							if Survivor2 then
								return Survivor2.HumanoidRootPart.Position
							end
						end
					elseif t53.Crystal and Killer then
						local t55 = { ... }
						local ok, result = xpcall(function()
							local Crystal = Config4.Crystal
							local v1848 = Killer.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
							local Character_3 = LocalPlayer.Character
							local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")
							local Humanoid = Character_3 and Character_3:FindFirstChildOfClass("Humanoid")

							if not HumanoidRootPart or not Humanoid then
								v137("no root or hum")

								return v1833(unpack(t55))
							end

							local v1852 = math.lerp(Crystal.MinSpeed, Crystal.MaxSpeed, v1825())
							local ProjectileArc = Crystal.ProjectileArc
							local v1854 = (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2) / 2
							local v1855 = v1848 - (HumanoidRootPart.Position + Vector3.new(0, v1854, 0))
							local vector3 = Vector3.new(v1855.X, 0, v1855.Z)
							local Magnitude = vector3.Magnitude
							local v1858 = v1852 * v1852
							local v1859 = math.max(v1858 * v1858 - ProjectileArc * (ProjectileArc * Magnitude * Magnitude + 2 * v1855.Y * v1858), 0)
							local v1860 = math.atan((v1858 + -math.sqrt(v1859)) / (ProjectileArc * Magnitude))
							local v1861 = vector3.Unit * math.cos(v1860) + Vector3.new(0, math.sin(v1860), 0)
							local v1862 = (v1861 * (-v1854 * v1861.Y + math.sqrt(v1854 * v1854 * v1861.Y * v1861.Y - v1854 * v1854 + 250000)) + Vector3.new(0, v1854, 0)) / 500

							if n40 == 1015842633 then
								return HumanoidRootPart.Position + v1862 * 1000
							end

							n40 = 148850879
							n9 -= 1116
							n2 -= 497
							n8 = 368168129
							n5 -= 738
							-- (could not be recovered)
						end, function(p208)
							v137("[silent aim] jane doe error:", tostring(p208))

							if n8 ~= 69055488 then
								n2 += 224
								n9 += 285
								n8 = 337338220
								n40 = 291844491
								n5 = 257127885
							end
						end)

						if ok then
							return result
						end
					end

					return v1833(...)
				end))
			end

			Aimbot:CreateSection("Aimbot")
			Aimbot:CreateToggle({
				Name = "Enable aimbots",
				CurrentValue = false,
				Flag = "AimbotToggle",
				Callback = v1179
			})

			do
				Aimbot:CreateDropdown({
					Name = "Ability to use aimbot",
					Options = {
						"Entanglement - 1x1x1x1",
						"Mass Infection - 1x1x1x1",
						"Throw Pizza - Elliot",
						"Blood Hook - Nosferatu",
						"One Shot - Chance",
						"Corrupt Energy - John Doe",
						"Enstrangle - Azure",
						"Hatchet - Jane Doe",
						"WS Override - Coolkidd",
						"Void Rush - Noli",
						"Charge - Guest1337"
					},
					CurrentOption = {},
					MultipleOptions = true,
					Flag = "AimbotValues",
					Callback = function(p209)
						t54 = {}

						for _, v in p209, nil, nil do
							t54[v:match("^(.-)%s*%-")] = true
						end
					end,
					Searchable = true
				})
			end

			Aimbot:CreateToggle({
				Name = "M1 assist",
				CurrentValue = false,
				Flag = "Mouse1Aimbot",
				Callback = v1179
			})
			Aimbot:CreateToggle({
				Name = "Chance 360 no-scope",
				CurrentValue = false,
				Flag = "Chance360",
				Callback = v1179,
				ToolTip = "It does a 360 when you shoot with chance aimbot on"
			})
			Aimbot:CreateSlider({
				Name = "Void Rush range",
				Range = {
					10,
					130
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 60,
				Flag = "VoidRushThreshold",
				Callback = v1179
			})
			Aimbot:CreateSlider({
				Name = "Walkspeed Override range",
				Range = {
					10,
					100
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 50,
				Flag = "WalkspeedOverrideThreshold",
				Callback = v1179
			})
			Aimbot:CreateSlider({
				Name = "Charge range",
				Range = {
					3,
					30
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 14,
				Flag = "ChargeAimbotThreshold",
				Callback = v1179
			})
			Aimbot:CreateDropdown({
				Name = "Aimbot mode",
				Options = {
					"Camera",
					"Character"
				},
				CurrentOption = { "Character" },
				MultipleOptions = false,
				Flag = "AimbotLookMode",
				Callback = v1179
			})

			do
				MassInfectionActive = function()
					return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("SpeedMultipliers") and LocalPlayer.Character:FindFirstChild("SpeedMultipliers"):FindFirstChild("MassInfection")
				end
			end

			do
				local n80

				EntanglementActive = function()
					n80 = 730737123

					if n39 < n80 then
						return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("SpeedMultipliers") and LocalPlayer.Character:FindFirstChild("SpeedMultipliers"):FindFirstChild("Entanglement")
					end

					n9 = 1036662935
					n41 -= 1404
					n39 += 666
					n80 = 5344304
					n5 = 72505156
					n4 += 545
					n6 += 425
					n40 -= 342
					n2 -= 1463
					n8 -= 44
					-- (could not be recovered)
				end
			end

			ElliotHasPizza = function()
				return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Pizza") and LocalPlayer.Character:FindFirstChild("Pizza").Transparency == 0
				-- (could not be recovered)
			end
			AzureAimingEnstrangle = function(p210, p211, p212)
				local v1866
				local children = workspace.Map.Ingame:GetChildren()
				local v1868 = #children
				local n81 = 1
				local v1870 = v1868 + 0
				local v1871 = 1 - n81

				for i = 1, v1868 do
					local v1873 = children[i]

					if v1873.Name ~= "Beam" or v1873.Texture ~= "rbxassetid://4955566540" or v1873.CurveSize0 ~= 0 then
						continue
					end

					if v1873.CurveSize1 ~= 0 then
						continue
					end

					local v1874

					if n8 ~= n39 then
						v1866 = children[i]
						v1874 = LocalPlayer.Character and LocalPlayer.Character.Name == "Azure" and v1866

						return v1874
					end

					n3 -= 561
					n5 = 39357641
					n1 = 976607402
					n40 += 1378
					n8 = 1019979921
					n2 = 134044141
					n39 -= 1969
					n41 = 111916807
					n4 -= 1491
					v1866 = p212

					local v1875 = v1871 + n81

					if n81 <= 0 then
						if not (v1875 >= v1870) then
							v1874 = LocalPlayer.Character and LocalPlayer.Character.Name == "Azure" and v1866

							return v1874
						end
					elseif not (v1875 <= v1870) then
						v1874 = LocalPlayer.Character and LocalPlayer.Character.Name == "Azure" and v1866

						return v1874
					end
					-- (could not be recovered)
				end

				return LocalPlayer.Character and LocalPlayer.Character.Name == "Azure" and v1866
			end

			do
				task.spawn(function()
					while task.wait() do
						if t54.Enstrangle and not t53.Enstrangle and v1164.Flags.AimbotToggle.CurrentValue and AzureAimingEnstrangle() then
							local v1876 = GetClosestSurvivor(60)

							if v1876 then
								StartAimbotting(v1876, function()
									if n39 == 622646567 then
										return AzureAimingEnstrangle()
									end

									n3 -= 1676
									n41 += 1308
									n9 = 105068746
									n6 = 411753195
									n5 += 1010
									n39 += 1512
									-- (could not be recovered)
								end, nil, math.huge, true)
								task.wait(1.6)
							end
						end
					end
				end)
			end

			do
				local u1877

				stareFunc = function(p213, p214)
					if t24.TargetTwoTime and not p214 then
						return
					end

					local Character_3 = LocalPlayer.Character
					local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")
					local HumanoidRootPart2 = p213 and p213:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart or not HumanoidRootPart2 then
						return
					end

					if HumanoidRootPart.Anchored or HumanoidRootPart2.Anchored then
						return
					end

					if u1877 then
						return
					end

					u1877 = true

					local Position = HumanoidRootPart.Position

					HumanoidRootPart.CFrame = CFrame.new(Position, Vector3.new(HumanoidRootPart2.Position.X, Position.Y, HumanoidRootPart2.Position.Z))

					if n41 == 711371102 then
						n2 = 615122696
						n41 = 1030639749
						n8 += 1997
						n39 += 808
						n40 = 266517337
						n7 = 221297173
						n5 += 1566
						n4 = 799219822
						n9 -= 60
					else
						u1877 = false
					end
				end
			end

			Turn360 = function(p215, p216)
				local now2 = tick()

				while tick() - now2 < 0.5 do
					p215.CFrame = p216 * CFrame.Angles(0, math.rad((tick() - now2) / 0.5 * 252), 0)
					RunService.RenderStepped:Wait()
				end

				local now3 = tick()

				while tick() - now3 < 0.3 do
					p215.CFrame = p216 * CFrame.Angles(0, math.rad(252 + (tick() - now3) / 0.3 * 108), 0)

					if n6 ~= 89954042 then
						RunService.RenderStepped:Wait()

						continue
					end

					n4 += 770
					n2 -= 1817
					n39 = 85671516
					n40 = 383931917
					n9 = 451102643
					n6 = 410616269
					n5 = 772524655
					n41 = 941322515
					n3 += 267
					-- (could not be recovered)
				end

				p215.CFrame = p216 * CFrame.Angles(0, math.rad(360), 0)
			end
			Turn360Static = function(p217, p218, p219)
				local Humanoid = p217.Parent:FindFirstChildOfClass("Humanoid")
				local AutoRotate = Humanoid and Humanoid.AutoRotate

				if Humanoid then
					Humanoid.AutoRotate = false
				end

				local now2 = tick()
				local n82 = 0

				while tick() - now2 < p219 do
					local v1888 = math.rad(360 * math.clamp((tick() - now2) / p219, 0, 1))

					p217.CFrame *= CFrame.Angles(0, v1888 - n82, 0)
					n82 = v1888
					task.wait()
				end

				p217.CFrame *= CFrame.Angles(0, math.rad(360) - n82, 0)

				if n2 == n6 then
					n40 += 253
					n3 = 277083890
					n41 = 552753567
					n4 -= 2048
					n2 = 151061785
					n6 = 533152194
					n39 += 546
					n7 += 591
					n5 = 358577908
				elseif Humanoid then
					Humanoid.AutoRotate = AutoRotate
				end
			end
			t24.Disconnectables[#t24.Disconnectables + 1] = Network.RemoteEvent.OnClientEvent:Connect(function(...)
				local n83 = 278103046

				if u48 then
					return
				end

				local n84 = 945191754
				local n85 = 196998244
				local t56 = { ... }
				local n86 = 470247977
				local n87
				local n88

				if t56[1] == "UseActorAbility" then
					local v1896 = t56[2]

					if type(v1896) == "table" and typeof(v1896[1]) == "buffer" then
						local v1897 = buffer.tostring(v1896[1])
						local v1898 = GetClosestSurvivor(130)
						local v1899 = GetClosestKiller(90)
						local v1900 = GetClosestKiller(13)
						local MainKiller = t24.MainKiller
						local v1902 = GetClosestSurvivor(25)
						local v1903 = GetClosestSurvivor(95)
						local v1904 = GetClosestSurvivor(113.846)

						if IsKiller() then
							if v1164.Flags.AutoFarmSurvivors.CurrentValue then
								M1Target = nil
							end
						end

						local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
						local now2 = tick()
						local CFrame_ = HumanoidRootPart.CFrame

						v137("UseActorAbility CLIENTEVENT:", ({ buffer.tostring(v1896[1]):gsub(".", function(p220)
							n88 = 267302638

							if p220:byte() <= 32 then
								if not (n88 < n84) then
									n84 += 686
									n83 = 724015034
									n39 = 914098058
									n88 = 919135002
									n5 += 1086
									n86 += 1172
									n6 -= 797
									n85 = 864423364
									n3 = 405415044
									-- (could not be recovered)
								end
							else
								if not (p220:byte() >= 123) then
									return p220
								end

								if not (n88 < n84) then
									n84 += 686
									n83 = 724015034
									n39 = 914098058
									n88 = 919135002
									n5 += 1086
									n86 += 1172
									n6 -= 797
									n85 = 864423364
									n3 = 405415044
									-- (could not be recovered)
								end
							end

							return ("\\%03d"):format(p220:byte())
						end) })[1])

						local v1908 = table.find(v1164.Flags.AimbotLookMode.CurrentOption, "Camera") ~= nil

						if v1897:find("MassInfection") and t54["Mass Infection"] and v1164.Flags.AimbotToggle.CurrentValue and v1898 then
							StartAimbotting(v1898, MassInfectionActive, nil, nil, v1908)
						elseif v1897:find("Entanglement") and t54.Entanglement and v1164.Flags.AimbotToggle.CurrentValue and v1898 then
							StartAimbotting(v1898, EntanglementActive, nil, nil, v1908)
						elseif v1897:find("Uppercut") and t54["Blood Hook"] and v1164.Flags.AimbotToggle.CurrentValue and v1904 then
							StartAimbotting(v1904, function()
								if n6 < n83 then
									return tick() - now2 <= 2 and IsKiller()
								end

								n6 -= 1994
								n86 += 1447
								n39 -= 1325
								n7 += 233
								n5 = 86509406
								n85 += 986
								n83 = 748844388
								n84 = 796084805
								-- (could not be recovered)
							end, nil, nil, v1908)
						elseif v1897:find("Axe") and t54.Hatchet and v1164.Flags.AimbotToggle.CurrentValue and v1900 then
							StartAimbotting(v1900, function()
								return tick() - now2 <= 1 and LocalPlayer.Character and t24.GameState == 1
							end, nil, nil, true)
						elseif v1897:find("ThrowPizza") and t54["Throw Pizza"] and v1164.Flags.AimbotToggle.CurrentValue and v1902 then
							StartAimbotting(v1902, ElliotHasPizza, function()
								local Unit = (v1902.HumanoidRootPart.Position - HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)).Unit

								if n83 == 278103046 then
									return CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + Unit)
								end

								n83 = 752203719
								n40 += 1291
								n85 = 454519618
								n41 += 608
								n5 = 672855240
								n2 = 197153915
								n84 += 149
								n86 = 455989017

								if nil then
									-- (could not be recovered)
								end
								-- (could not be recovered)
							end, nil, v1908)
						elseif v1897:find("Shoot") and (t54["One Shot"] and v1164.Flags.AimbotToggle.CurrentValue or v1164.Flags.TPOneShot.CurrentValue) and LocalPlayer.Character.Name == "Chance" then
							local CurrentValue = v1164.Flags.TPOneShot.CurrentValue and MainKiller and MainKiller or v1899
							local HumanoidRootPart2 = CurrentValue and CurrentValue:FindFirstChild("HumanoidRootPart")

							v138(HumanoidRootPart2)

							if v1164.Flags.TPOneShot.CurrentValue and HumanoidRootPart2 then
								xpcall(function()
									now2 = tick()

									while tick() - now2 <= 1.669 and HumanoidRootPart.Parent do
										local result = RunService.Heartbeat:Wait()

										if HasNotification("stunned") or HasNotification("you tried") then
											return v138("chance shot ended")
										end

										if workspace.Hitboxes:FindFirstChild(LocalPlayer.Name .. "Hitbox") then
											return v138("chance shot ended")
										end

										local CFrame_2 = HumanoidRootPart.CFrame

										HumanoidRootPart.CFrame = MainKiller.HumanoidRootPart.CFrame

										local v1914 = coroutine.running()

										if n86 < n84 then
											RunService:BindToRenderStep("ChanceShoot", Enum.RenderPriority.First.Value, function()
												local UnbindFromRenderStep = RunService.UnbindFromRenderStep
												local v1916 = UnbindFromRenderStep

												UnbindFromRenderStep(RunService, "ChanceShoot")
												HumanoidRootPart.CFrame = CFrame_2 + CFrame_2.LookVector * result

												if n6 == 89952777 then
													task.spawn(v1914)
												else
													n5 -= 185
													n6 -= 275
													n3 -= 679
													n83 = 299391398
													n83[v1916] = nil --[[ constant not decoded ]]
												end
											end)
											coroutine.yield()

											continue
										end

										n86 -= 217
										n85 += 850
										n5 -= 1514
										n3 = 697222256
										n84 -= 754
										n6 -= 1464
										n7 = 126816895
										n83 = 873427975
										-- (could not be recovered)
									end
								end, function(p221)
									v137("chance tp shoot failure:", tostring(p221))

									if n83 ~= 278103366 then
										return
									end

									n5 += 951
									n9 = 1057455297
									n86 = 55034493
									n2 -= 338
									n84 -= 634
									n85 -= 997
									n83 += 636
									n7 += 2044
									-- (could not be recovered)
								end)
							elseif HumanoidRootPart2 and MainKiller and v1899 then
								local Enabled = SmoothShiftLock.Enabled

								if v1164.Flags.Chance360.CurrentValue then
									if Enabled then
										SmoothShiftLock:ToggleShiftLock()
									end

									Turn360(HumanoidRootPart, CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + (HumanoidRootPart2.Position - HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)).Unit))

									if Enabled and not SmoothShiftLock.Enabled then
										SmoothShiftLock:ToggleShiftLock()
									end
								end

								StartAimbotting(v1899, function()
									local v1918 = tick() - now2 <= 2

									if v1918 then
										v1918 = not (HasNotification("stunned") or HasNotification("you tried") or workspace.Hitboxes:FindFirstChild(LocalPlayer.Name .. "Hitbox"))
									end

									return v1918
								end, function()
									local v1919 = math.clamp((60 - (HumanoidRootPart.Position - HumanoidRootPart2.Parent.QueryHitbox.Position).magnitude) / 60, 0, math.huge)

									v138(v1919)

									local v1920 = HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)
									local Unit = (HumanoidRootPart2.Parent.QueryHitbox.Position + HumanoidRootPart2.Parent.Humanoid:GetMoveVelocity() * v1919 - v1920).Unit

									if n85 < n39 then
										return CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + Unit)
									end

									n39 -= 1883
									n83 = 268614737
									n85 -= 234
									n6 -= 563
									n5 += 1005
									n86 += 73
									n84 = 1073073615
									n40 = 716558431
								end, nil, true)
							end
						elseif v1897:find("Punch") and LocalPlayer.Character.Name == "Guest1337" and v1164.Flags.SuperPunch.CurrentValue then
							task.wait(0.62)

							local LinearVelocity = Instance.new("LinearVelocity")

							LinearVelocity.Attachment0 = HumanoidRootPart.RootAttachment
							LinearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
							LinearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
							LinearVelocity.PrimaryTangentAxis = Vector3.xAxis
							LinearVelocity.SecondaryTangentAxis = Vector3.zAxis
							LinearVelocity.MaxForce = math.huge

							local CurrentValue = v1164.Flags.SuperPunchPower.CurrentValue

							LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5
							LinearVelocity.Parent = HumanoidRootPart
							task.delay(0.22, function()
								LinearVelocity:Destroy()
							end)
							task.spawn(function()
								while true do
									if tick() - now2 <= 0.79 then
										if RunService.Heartbeat:Wait() then
											LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5

											continue
										end

										break
									end

									break
								end

								if n85 < 554319238 then
									return
								end

								n40 -= 1512
								n86 = 92852841
								n39 += 505
								n83 -= 883
								n6 += 141
								n5 = 697979010
								n85 = 736657058
								n84 = 74859489

								local v1924 = table.pack(F_0())

								if not v1924[1] then
									LPH_CRASH()
								end
								-- (could not be recovered)
							end)
						elseif v1897:find("Slash") and LocalPlayer.Character.Parent == Survivors3 then
							if v1164.Flags.TPSlash.CurrentValue and MainKiller then
								task.wait(0.1)

								local now3 = tick()

								while tick() - now3 <= t24.HitboxesDuration do
									local result = RunService.Heartbeat:Wait()
									local CFrame_2 = HumanoidRootPart.CFrame

									HumanoidRootPart.CFrame = MainKiller.HumanoidRootPart.CFrame

									local v1928 = coroutine.running()

									RunService:BindToRenderStep("TpSlash", Enum.RenderPriority.First.Value, function()
										RunService:UnbindFromRenderStep("TpSlash")
										HumanoidRootPart.CFrame = CFrame_2 + CFrame_2.LookVector * result
										task.spawn(v1928)

										return
										-- (could not be recovered)
									end)
									coroutine.yield()
								end
							elseif v1164.Flags.ShedLunge.CurrentValue then
								task.wait(0.57)

								local LinearVelocity = Instance.new("LinearVelocity")

								LinearVelocity.Attachment0 = HumanoidRootPart.RootAttachment
								LinearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
								LinearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
								LinearVelocity.PrimaryTangentAxis = Vector3.xAxis
								LinearVelocity.SecondaryTangentAxis = Vector3.zAxis
								LinearVelocity.MaxForce = math.huge

								local CurrentValue = v1164.Flags.ShedLungePower.CurrentValue

								LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5
								LinearVelocity.Parent = HumanoidRootPart
								task.delay(0.22, function()
									LinearVelocity:Destroy()

									if not (n3 < n5) then
										n85 -= 898
										n86 += 1465
										n2 = 503294565
										n6 += 422
										n83 -= 735
										n3 = 998962970
										n5 = 774988140
										n84 -= 1890
									end
								end)
								task.spawn(function()
									while true do
										if tick() - now2 <= 0.79 then
											if RunService.Heartbeat:Wait() then
												LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5

												continue
											end

											break
										end

										break
									end
								end)
							elseif v1164.Flags.Shed360.CurrentValue then
								task.wait(v1164.Flags.Shed360Wait.CurrentValue / 1000)
								Turn360Static(HumanoidRootPart, CFrame_, v1164.Flags.Shed360Duration.CurrentValue / 1000)
							end
						elseif v1897:find("CorruptEnergy") and t54["Corrupt Energy"] and v1164.Flags.AimbotToggle.CurrentValue and v1903 then
							if PlayerGui.MainUI.AbilityContainer.CorruptEnergy.AbilityName.Text == "Retract" then
								return
							end

							StartAimbotting(v1903, function()
								if n41 == 711369103 then
									return tick() - now2 <= Config11.DelayBetweenSpikeSummons * Config11.SpikeAmount + Config11.CorruptEnergyWindup and IsKiller()
								end

								n5 += 1905
								n6 -= 561
								n2 += 376
								n41 = 476659450
								n84 -= 1116
								n85 -= 1166
								n83 += 1253
								n86 = 796034863
								-- (could not be recovered)
							end, nil, nil, v1908)
						elseif v1897:find(GetM1Name()) and v1164.Flags.Mouse1Aimbot.CurrentValue then
							local v1931 = GetMaxM1Reach()

							while tick() - now2 <= 0.66 and LocalPlayer.Character and (LocalPlayer.Character.Parent == Killers3 or LocalPlayer.Character.Parent == Survivors3) and task.wait() do
								M1Target = LocalPlayer.Character and (IsKiller() and GetClosestSurvivor(v1931) or LocalPlayer.Character.Name == "Shedletsky" and GetClosestKiller(v1931))

								if M1Target then
									stareFunc(M1Target)
								end

								if t24:HasHitReg() then
									break
								end
							end
						elseif v1897:find("WalkspeedOverride") and v1164.Flags.OverrideAutoHit.CurrentValue then
							task.delay(Config9.WalkspeedOverrideWindup, function()
								n87 = 54371933

								local u1932
								local n89 = 9e9

								scanGroup = function(p222)
									local v1934 = v1164.Flags.OverrideAutoHitMode.CurrentOption[1]
									local huge = math.huge
									local LookVector = HumanoidRootPart.CFrame.LookVector

									for _, v in ipairs(p222) do
										local HumanoidRootPart2 = v:FindFirstChild("HumanoidRootPart")
										local Humanoid = v:FindFirstChild("Humanoid")

										if v ~= Character and HumanoidRootPart2 and Humanoid and Humanoid.Health > 0 then
											local v1941 = HumanoidRootPart2.Position - HumanoidRootPart.Position
											local Magnitude = v1941.Magnitude

											if Magnitude > 0 and Magnitude <= n89 then
												local v1943

												if v1934 == "Facing" then
													v1943 = -LookVector:Dot(v1941.Unit)
												elseif v1934 == "Nearest" then
													v1943 = Magnitude
												else
													v1943 = Humanoid.Health
												end

												if v1943 < huge then
													huge = v1943
													u1932 = v
												end
											end
										end
									end

									if n2 == 249177561 then
										return
									end

									n84 = 305603480
									n83 -= 1937
									n2 = 668143483
									n87 -= 1681
									n5 = 400313407
									n3 += 1976

									local v1944 = table.pack(F_0())

									if not v1944[1] then
										-- (could not be recovered)
									end
									-- (could not be recovered)
								end

								if not (n87 < n5) then
									n5 = 162716511
									n84 = 614095088
									n83 = 457112567
									n86 -= 1541
									n3 += 502
									n2 = 510203763
									n40 += 1122
									n87 += 44
									n85 += 1837
									-- (could not be recovered)
								end

								scanGroup(t24.Survivors)

								if u1932 then
									while tick() - now2 <= 0.66 and IsKiller() and HumanoidRootPart.Parent and u1932 and u1932.Parent and u1932:FindFirstChild("Humanoid") and u1932:FindFirstChild("HumanoidRootPart") and u1932.Humanoid.Health > 0 do
										if not RunService.Heartbeat:Wait() then
											break
										end

										if u1932.HumanoidRootPart:FindFirstChild("BurningStatusSFX") then
											return v138("ws tp hit: Success")
										end

										if HumanoidRootPart:FindFirstChild("LinearVelocity") then
											v138("deleting lv")
											HumanoidRootPart.LinearVelocity:Destroy()
										end

										local CFrame_2 = HumanoidRootPart.CFrame

										HumanoidRootPart.CFrame = u1932.HumanoidRootPart.CFrame + u1932.Humanoid:GetMoveVelocity() / 3.5

										local v1946 = coroutine.running()

										RunService:BindToRenderStep("WalkspeedOverrideAutoHit", Enum.RenderPriority.First.Value, function()
											RunService:UnbindFromRenderStep("WalkspeedOverrideAutoHit")
											HumanoidRootPart.CFrame = CFrame_2
											task.spawn(v1946)

											if n85 ~= 196999767 then
												return
											end

											n85 -= 1638
											n2 -= 507
											n5 -= 236
											n87 = 738749604
											n40 += 1004
											n84 = 303248369
											-- (could not be recovered)
										end)
										coroutine.yield()
									end
								end
							end)
						end
					end
				end
			end)
			Hitboxes:CreateSection("Hitbox Expander")
			Hitboxes:CreateToggle({
				Name = "Enable hitbox expander",
				CurrentValue = false,
				Flag = "HitboxExpander",
				Callback = v1179
			})
			Hitboxes:CreateSlider({
				Name = "Range",
				Range = {
					8,
					200
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 15,
				Flag = "HitboxExpanderRange",
				Callback = v1179
			})
			Hitboxes:CreateDropdown({
				Name = "Target",
				Options = {
					"Facing",
					"Nearest",
					"Lowest HP"
				},
				CurrentOption = { "Facing" },
				MultipleOptions = false,
				Flag = "HitboxExpanderMode",
				Callback = v1179
			})
			Hitboxes:CreateDropdown({
				Name = "Expand mode",
				Options = {
					"Dynamic",
					"Static"
				},
				CurrentOption = { "Dynamic" },
				MultipleOptions = false,
				Flag = "HitboxExpandMode",
				Callback = v1179
			})
			Hitboxes:CreateToggle({
				Name = "(Dynamic) auto rotate",
				CurrentValue = true,
				Flag = "HitboxExpanderAutoRotate",
				Callback = v1179,
				ToolTip = "Automatically faces your hitbox to the character increasing chance of hit",
				TextMode = true
			})
			Hitboxes:CreateLabel([[Dynamic: Automatically guarantees your hitbox to land on targetted player
Static: Increases your hitbox distance X amount infront of you
HIGHER RANGE = MORE GAPS AND MORE OBVIOUS]])
			Hitboxes:CreateSection("Hitbox Visualiser (PERFORMANCE INTENSIVE)")
			Hitboxes:CreateToggle({
				Name = "Enable visualiser modifications",
				CurrentValue = false,
				Flag = "HitboxModifications",
				Callback = v1179
			})

			local t57 = {}

			for k, v in Enum.Material:GetEnumItems() do
				t57[k] = tostring(v):split(".")[3]
			end

			table.sort(t57)
			Hitboxes:CreateDropdown({
				Name = "Material",
				Options = t57,
				CurrentOption = { "Plastic" },
				MultipleOptions = false,
				Flag = "HitboxMaterialValue",
				Callback = v1179,
				Searchable = true
			})
			Hitboxes:CreateColorPicker({
				Name = "Hitbox color",
				Color = Color3.new(1, 0.25, 0.25),
				Flag = "HitboxColor",
				Callback = v1179
			})
			Hitboxes:CreateColorPicker({
				Name = "Hitbox color (Hit)",
				Color = Color3.new(0.5, 1, 0.5),
				Flag = "HitboxHitColor",
				Callback = v1179
			})
			Hitboxes:CreateSlider({
				Name = "Hitbox transparency",
				Range = {
					0,
					1
				},
				Increment = 0.02,
				Suffix = "",
				CurrentValue = 0.98,
				Flag = "HitboxTransparency",
				Callback = v1179
			})
			Hitboxes:CreateSlider({
				Name = "Hitbox transparency (Hit)",
				Range = {
					0,
					1
				},
				Increment = 0.02,
				Suffix = "",
				CurrentValue = 0.7,
				Flag = "HitboxHitTransparency",
				Callback = v1179
			})
			Hitboxes:CreateSection("M1 Visualizer", "Left")
			Hitboxes:CreateToggle({
				Name = "Enable M1 Hitbox visualizer",
				CurrentValue = false,
				Flag = "M1Visualizer",
				Callback = v1179
			})
			Hitboxes:CreateDropdown({
				Name = "Material",
				Options = t57,
				CurrentOption = { "Plastic" },
				MultipleOptions = false,
				Flag = "M1VisualizerMaterial",
				Callback = v1179,
				Searchable = true
			})
			Hitboxes:CreateColorPicker({
				Name = "Hitbox color",
				Color = Color3.new(1, 0.25, 0.25),
				Flag = "M1VisualizerColor",
				Callback = v1179
			})
			Hitboxes:CreateSlider({
				Name = "Hitbox transparency",
				Range = {
					0,
					1
				},
				Increment = 0.02,
				Suffix = "",
				CurrentValue = 0.7,
				Flag = "M1VisualizerTransparency",
				Callback = v1179
			})
			Hitboxes:CreateToggle({
				Name = "Dont show if M1 not ready",
				CurrentValue = false,
				Flag = "M1VisualizerRequireReady",
				Callback = v1179
			})
			Hitboxes:CreateToggle({
				Name = "Track query position",
				CurrentValue = false,
				Flag = "M1VisualizerTrackQuery",
				Callback = v1179,
				ToolTip = "Shows you accurately where your M1 hitbox is actually going to land, rather than a client-sided static result <b>Recommended to enable</b>"
			})
			Hitboxes:CreateToggle({
				Name = "Dont show if M1 hitboxes",
				CurrentValue = true,
				Flag = "M1VisualizerNoHitboxes",
				Callback = v1179,
				ToolTip = "Do not show if there are hitboxes from your M1 attack lingering on the map"
			})
			t24.Disconnectables[#t24.Disconnectables + 1] = workspace.Hitboxes.ChildAdded:Connect(function(child)
				if not v1164.Flags.HitboxModifications.CurrentValue then
					return
				end

				local v1950 = Enum.Material[v1164.Flags.HitboxMaterialValue.CurrentOption[1]]
				local Color = child.Color

				while child.Parent and task.wait() do
					child.Material = v1950

					if Color.R == 1 then
						child.Color = v1164.Flags.HitboxColor.Color
						child.Transparency = v1164.Flags.HitboxTransparency.CurrentValue
					else
						child.Color = v1164.Flags.HitboxHitColor.Color
						child.Transparency = v1164.Flags.HitboxHitTransparency.CurrentValue
					end
				end
			end)

			do
				Editor:CreateSection("Editor")
				Editor:CreateLabel("If a value does nothing after changing then it means that value is only used by the server and changing it on client affects nothing")

				local function v1952(p223, p224)
					for match in string.gmatch(p224, "[^%.]+") do
						p223 = rawget(p223, match)

						if p223 == nil then
							return nil
						end
					end

					return p223
					-- (could not be recovered)
				end
				local function v1954(p225, p226)
					if p225 == p226 then
						return true
					end

					for _, v in pairs(p226) do
						if type(v) ~= "table" then
							continue
						end

						if v1954(p225, v) then
							return true
						end
					end

					return false
				end
				local function v1957(p227, p228, p229)
					local t58 = {}
					local v1959, v1960, v1961 = string.gmatch(p228, "[^%.]+")

					for k in v1959, v1960, v1961 do
						table.insert(t58, k)
					end

					local v1963 = p227
					local n90 = 0

					for i = 1, #t58 - 1 do
						local value = rawget(v1963, t58[i])

						if type(value) ~= "table" then
							if not (n41 < n4) then
								n2 = 218799003
								n8 += 1747
								n39 = 873921674
								n7 = 54841020
								n40 = 197026880
								n5 = 23268385
								n1 = 360841643
								n41 += 621

								repeat
									n4 -= 117

									local v1967 = table.pack(n90())
								until not v1967[1]
								;(nil)[nil --[[ constant not decoded ]]] = nil

								return (nil)()
							end

							value = {}
							rawset(v1963, t58[i], value)
						end

						v1963 = value
					end

					rawset(v1963, t58[#t58], p229)
				end

				local t59 = {
					[{
						"Sixer",
						true
					}] = {
						"PursuitMaxSpeed",
						"PursuitLength",
						"PursuitBaseSpeed"
					},
					[{
						"Nosferatu",
						true
					}] = { "AscentFlight.Duration" },
					[{
						"Noli",
						true
					}] = {
						"VoidRushChargeLength",
						"VoidRushTurnSpeed",
						"VoidRushInitialTurnMult",
						"VoidRushChargingSpeed",
						"VoidRushDashSpeed",
						"VoidRushInitialTurnDuration"
					},
					[{ "JaneDoe" }] = {
						"Crystal.MaxChargeTime",
						"Crystal.ChargeSpeedMult",
						"Crystal.MinChargeTime",
						"Crystal.MaximumHoldTime",
						"Axe.DashSpeed"
					},
					[{ "TwoTime" }] = {
						"CrouchRunSpeed",
						"CrouchSpeed",
						"DaggerUncrouchedLungeForce",
						"DaggerLungeForce"
					},
					[{ "Guest1337" }] = {
						"ChargingSpeed",
						"ChargingTurnSpeed"
					},
					[{ "Veeronica" }] = {
						"Sk8BumpPower",
						"Sk8TurnControl",
						"Sk8TrickStamina",
						"Sk8TrickCooldown",
						"Sk8TrickTurnControl",
						"Sk8TrickPower",
						"Sk8Speed",
						"Sk8TrickGravity",
						"Sk8TrickJump"
					}
				}
				local t60 = {}
				local t61 = {}
				local t62 = {}
				local t63 = {}
				local FORSAKEN_defaultvalues = obj.FORSAKEN_defaultvalues or {}

				obj.FORSAKEN_defaultvalues = FORSAKEN_defaultvalues

				local s10 = "Sixer"
				local v1975
				local u1976
				local v1977
				local v1978
				local u1979
				local s11 = "Catsaken/Editor"

				if not isfolder(s11) then
					makefolder(s11)
				end

				if not isfolder(s11 .. "/Configs") then
					makefolder(s11 .. "/Configs")
				end

				local v1981 = s11 .. "/Configs"

				local function v1982()
					local t64 = {}

					for _, v in ipairs(listfiles(v1981)) do
						table.insert(t64, v:match("[^/]+$"))
					end

					table.sort(t64)

					return t64
					-- (could not be recovered)
				end
				local function v1986(p230)
					if n41 ~= 711370944 then
						return v1981 .. "/" .. p230
					end

					n5 = 422311155
					n41 += 708
					n40 = 180736585
					n8 += 507
					n39 -= 647
					n3 = 700873184
					n7 += 703
					n2 = 335143051
					n1 += 28
					-- (could not be recovered)
				end
				local function v1987(p231)
					if type(p231) ~= "table" then
						return p231
					end

					local t65 = {}

					if n9 < n5 then
						for k, v in pairs(p231) do
							if type(v) == "table" then
								t65[v1987(k)] = v1987(v)
							else
								t65[v1987(k)] = v
							end
						end

						return setmetatable(t65, getmetatable(p231))
					end

					n9 += 1624
					n2 += 1470
					n3 = 1063466774
					n5 = 448551930
					n1 = 977843806
					n39 = 4279503
					n6 -= 358
					n41 += 503
					n40 = 552169635
					-- (could not be recovered)
				end
				local function v1991(p232)
					if not p232 or p232:gsub("%s+", "") == "" then
						return lib:Notify({
							Title = "Editor",
							Content = "Enter a save name.",
							Duration = 5
						})
					end

					local v1992 = p232:gsub("[\\/:*?\"<>|]", "_")
					local ok, result = pcall(function()
						return GetService("HttpService"):JSONEncode(t60)
						-- (could not be recovered)
					end)

					if not ok then
						return lib:Notify({
							Title = "Editor",
							Content = "Failed to encode the changes.",
							Duration = 5
						})
					end

					local ok2, result2 = pcall(function()
						writefile(v1986(v1992), result)
					end)

					if not ok2 then
						return lib:Notify({
							Title = "Editor",
							Content = "Failed to save: " .. tostring(result2),
							Duration = 5
						})
					end

					lib:Notify({
						Title = "Editor",
						Content = "Saved \"" .. v1992 .. "\".",
						Duration = 5
					})

					if saveDropdown then
						if not (n5 < n40) then
							n41 = 368771629
							n7 = 196673909
							n1 -= 128
							n9 -= 82
							n3 = 205644714
							n6 = 182258525
							n5 += 920
							n40 += 1256
							n39 = 614865737
							-- (could not be recovered)
						end

						saveDropdown:Refresh(v1982())
					end
				end

				for k, v in pairs(t59) do
					local v1999 = k[1]

					if not FORSAKEN_defaultvalues[v1999] then
						FORSAKEN_defaultvalues[v1999] = {}
					end

					t61[v1999] = v
					t62[v1999] = k[2]
					t63[v1999] = true

					for _, v2 in pairs(v) do
						v1957(FORSAKEN_defaultvalues[v1999], v2, v1952(require(Assets[k[2] and "Killers" or "Survivors"][v1999].Config), v2))
					end
				end

				updateeditgui = function()
					if not t63[s10] then
						return
					end

					local v2002 = "D = Default\n" .. s10 .. ":"
					local Config12 = require(Assets[t62[s10] and "Killers" or "Survivors"][s10].Config)

					for _, v in pairs(t61[s10]) do
						v2002 ..= "\n" .. v .. ": " .. tostring(v1952(Config12, v)) .. " (D=" .. tostring(v1952(FORSAKEN_defaultvalues[s10], v)) .. ")"
					end

					v1977:Set(v2002)

					if v1975 then
						v1978:Refresh(t61[s10])
					end
				end

				local t66 = {}

				for k in pairs(t59) do
					table.insert(t66, k[1])
				end

				Editor:CreateDropdown({
					Name = "Select character",
					Options = t66,
					CurrentOption = { "Sixer" },
					Flag = "SelectedEditCharacter",
					NoSave = true,
					Callback = function(p233)
						s10 = p233[1]

						if v1975 then
							updateeditgui()
						end

						return
						-- (could not be recovered)
					end
				})
				v1978 = Editor:CreateDropdown({
					Name = "Select key",
					Options = t61[s10] or {},
					CurrentOption = {},
					Flag = "SelectedEditKey",
					NoSave = true,
					Callback = function(p234)
						u1976 = p234[1]

						if u1976 then
							u1979 = v1952(FORSAKEN_defaultvalues[s10], u1976)
						end

						if n1 ~= 598751283 then
							return
						end

						n8 = 707635479
						n3 -= 896
						n4 = 1000896553
						n40 += 423
						n41 -= 137
						n9 -= 1954
						n39 -= 1679
						n5 = 729534577
						n1 = 644995470
						-- (could not be recovered)
					end
				})
				Editor:CreateInput({
					Name = "Select value",
					CurrentValue = "",
					PlaceholderText = "Value",
					RemoveTextAfterFocusLost = false,
					Flag = "SelectedEditValue",
					Callback = function(p235)
						u1979 = tonumber(p235) or p235

						return
						-- (could not be recovered)
					end
				})
				Editor:CreateButton({
					Name = "Update key to value",
					Callback = function()
						if not u1976 then
							return lib:Notify({
								Title = "Editor",
								Content = "Select a key.",
								Duration = 5
							})
						end

						if not v1952(FORSAKEN_defaultvalues[s10], u1976) then
							return lib:Notify({
								Title = "Editor",
								Content = "Select the correct character.",
								Duration = 5
							})
						end

						require(Assets[t62[s10] and "Killers" or "Survivors"][s10].Config)

						if not t60[s10] then
							t60[s10] = {}
						end

						if not (n9 < n5) then
							n7 -= 1028
							n2 += 1355
							n5 = 787828744
							n41 += 844
							n40 -= 1928
							n8 -= 1300
							n39 = 267008918
							n1 = 461664484
							n9 -= 1829
							-- (could not be recovered)
						end

						t60[s10][u1976] = u1979

						for _, v in getgc(true) do
							if type(v) == "table" and v1952(v, u1976) ~= nil and not v1954(v, FORSAKEN_defaultvalues) then
								v137("updated", s10, u1976, u1979)
								v1957(v, u1976, u1979)
							end
						end

						updateeditgui()
					end
				})

				local function resetEditedValues()
					for k, v in pairs(t60) do
						for k2 in pairs(v) do
							local v2014 = v1952(FORSAKEN_defaultvalues[k], k2)

							if v2014 ~= nil then
								for _, v2 in getgc(true) do
									if type(v2) == "table" and v1952(v2, k2) ~= nil and not v1954(v2, FORSAKEN_defaultvalues) then
										v1957(v2, k2, v2014)
									end
								end
							end
						end
					end

					local n91 = 604644044

					t60 = {}

					if n91 ~= n40 then
						updateeditgui()

						return
					end

					n1 += 7
					n3 += 431
					n8 += 551
					n39 -= 751
					n9 -= 1069
					n4 = 908723325
					n5 = 36033214
					n41 = 122533069
					n40 += 275
					-- (could not be recovered)
				end

				obj.resetEditedValues = resetEditedValues
				Editor:CreateButton({
					Name = "Reset all values",
					Callback = resetEditedValues
				})
				Editor:CreateSection("Saves")
				loadChanges = function(p236)
					if p236 == "" then
						return
					end

					if not isfile(v1981 .. "/" .. p236) then
						v137("no exist")

						return
					end

					local ok, result = pcall(function()
						return GetService("HttpService"):JSONDecode(readfile(v1981 .. "/" .. p236))
					end)

					if ok then
						resetEditedValues()
						t60 = result

						for _, v in pairs(t60) do
							for _, v2 in getgc(true) do
								for k, v3 in pairs(v) do
									if type(v2) == "table" and v1952(v2, k) ~= nil and not v1954(v2, FORSAKEN_defaultvalues) then
										v1957(v2, k, v3)
									end
								end
							end
						end
					else
						v137("no read json")
					end

					updateeditgui()
				end

				local s12 = ""
				local v2027 = Editor:CreateDropdown({
					Name = "Load save",
					Options = v1982(),
					CurrentOption = {},
					Flag = "EditorLoadSave",
					NoSave = true,
					Callback = function(p237)
						if p237[1] then
							s12 = p237[1]
						end

						return
						-- (could not be recovered)
					end
				})

				Editor:CreateButton({
					Name = "Load selected",
					Callback = function()
						loadChanges(s12)
					end
				})
				Editor:CreateButton({
					Name = "Delete selected",
					Callback = function()
						local v2028 = v1981 .. "/" .. s12

						if isfile(v2028) then
							pcall(delfile, v2028)

							if n9 ~= 263112959 then
								n5 -= 827
								n4 += 1457
								n9 = 778129136
								n40 = 689212679
								n7 -= 857
								n41 = 100313515
								n1 -= 546
								n6 = 601294227
								n39 = 638629065
								(nil)(nil, nil)
								;(nil)[231] = nil
								;(nil)[232] = nil
								;(nil)[233] = nil
								;(nil)[234] = nil
								;(nil)[235] = nil
								;(nil)[236] = nil
								;(nil)[237] = nil
								;(nil)[238] = nil
								;(nil)[239] = nil
								;(nil)[240] = nil
								;(nil)[241] = nil
								;(nil)[242] = nil
								;(nil)[243] = nil
								;(nil)[244] = nil
								;(nil)[245] = nil
								;(nil)[246] = nil
								;(nil)[247] = nil
								;(nil)[248] = nil
								;(nil)[249] = nil
								;(nil)[250] = nil
								;(nil)[251] = nil
								;(nil)[252] = nil
								;(nil)[253] = nil
								;(nil)[254] = nil
								;(nil)[255] = nil
								;(nil)[256] = nil
								;(nil)[257] = nil
								;(nil)[258] = nil
								;(nil)[259] = nil
								;(nil)[260] = nil
								;(nil)[261] = nil
								;(nil)[262] = nil
								;(nil)[263] = nil
								;(nil)[264] = nil
								;(nil)[265] = nil
								;(nil)[266] = nil
								;(nil)[267] = nil
								;(nil)[268] = nil
								;(nil)[269] = nil
								;(nil)[270] = nil
								;(nil)[271] = nil
								;(nil)[272] = nil
								;(nil)[273] = nil
								;(nil)[274] = nil
								;(nil)[275] = nil
								;(nil)[276] = nil
								;(nil)[277] = nil
								;(nil)[278] = nil
								;(nil)[279] = nil
								;(nil)[280] = nil
								;(nil)[281] = nil
								;(nil)[282] = nil
								;(nil)[283] = nil
								-- (could not be recovered)
							end

							lib:Notify({
								Title = "Editor",
								Content = "\"" .. s12 .. "\" has been deleted.",
								Duration = 5
							})
						else
							lib:Notify({
								Title = "Editor",
								Content = "\"" .. s12 .. "\" doesn't exist.",
								Duration = 5
							})
						end
					end
				})
				Editor:CreateInput({
					Name = "Save name",
					PlaceholderText = "Enter a name",
					RemoveTextAfterFocusLost = false,
					Flag = "EditorSaveName",
					DontSave = true
				})
				Editor:CreateButton({
					Name = "Save",
					Callback = function()
						v1991(v1164.Flags.EditorSaveName.CurrentValue)
					end
				})
				Editor:CreateButton({
					Name = "Refresh saves",
					Callback = function()
						v2027:Refresh(v1982())

						return
					end
				})
				Editor:CreateButton({
					Name = "Set auto-load",
					Callback = function()
						local CurrentOption = v1164.Flags.EditorLoadSave.CurrentOption

						if not CurrentOption or not CurrentOption[1] then
							return lib:Notify({
								Title = "Editor",
								Content = "Select a save first.",
								Duration = 5
							})
						end

						local v2030 = CurrentOption[1]
						local ok, result = pcall(function()
							writefile("Catsaken/editorautoload.txt", v2030)

							if n41 ~= 711369103 then
								n6 = 1025363846
								n5 += 959
								n39 += 664
								n41 -= 1882
							end
						end)

						if not ok then
							return lib:Notify({
								Title = "Editor",
								Content = "Failed to set auto-load: " .. tostring(result),
								Duration = 5
							})
						end

						lib:Notify({
							Title = "Editor",
							Content = "\"" .. v2030 .. "\" is now set to auto-load.",
							Duration = 5
						})

						return
						-- (could not be recovered)
					end
				})
				Editor:CreateButton({
					Name = "Remove current auto-load",
					Callback = function()
						local txt2 = isfile("Catsaken/editorautoload.txt") and readfile("Catsaken/editorautoload.txt")

						if txt2 then
							pcall(delfile, "Catsaken/editorautoload.txt")
							lib:Notify({
								Title = "Editor",
								Content = "\"" .. txt2 .. "\" is removed from auto-load.",
								Duration = 5
							})
						else
							lib:Notify({
								Title = "Editor",
								Content = "There is no auto-load.",
								Duration = 5
							})
						end
					end
				})
				Editor:CreateSection("Values")
				v1977 = Editor:CreateLabel("")
				v1975 = true
				updateeditgui()
				task.defer(function()
					local txt2 = isfile("Catsaken/editorautoload.txt") and readfile("Catsaken/editorautoload.txt")

					if n8 ~= n3 then
						if txt2 then
							loadChanges(txt2)
						end

						return
					end

					n5 += 1910
					n40 = 557513242
					n3 = 680329301
					n8 -= 944
					n2 += 575
					n39 -= 749
					n41 = 424560159
					n1 = 142921421
					n7 = 762274452
					-- (could not be recovered)
				end)
			end

			Character_2:CreateSection("Global")
			Character_2:CreateLabel("Kick warning for all noclip features!, if you get stuck you will probably get kicked")
			Character_2:CreateToggle({
				Name = "Disable directional speed",
				CurrentValue = false,
				Flag = "DisableDirectionalSpeed",
				Callback = function(p238)
					setthreadidentity(2)

					if p238 then
						DirectionalSpeed:Destroy()
					else
						DirectionalSpeed:Start()
					end

					return
					-- (could not be recovered)
				end
			})

			do
				local n92

				Character_2:CreateToggle({
					Name = "Disable directional movement",
					CurrentValue = false,
					Flag = "DisableDirectionalMovement",
					Callback = function(p239)
						n92 = 1043894988

						if LocalPlayer.Character then
							if not (n5 < n92) then
								n41 = 845236763
								n92 -= 2007
								n1 += 893
								n40 = 935432989
								n6 = 357057434
								n4 = 196487054
								n5 += 635
								n3 = 455236916
								n39 = 1011445721
								n7 = 619564194
								-- (could not be recovered)
							end

							LocalPlayer.Character:SetAttribute("DirectionalMovementDisabled", p239)
						end
					end
				})
			end

			do
				if _G.UNLOCK_AC_DISABLER then
					local function v2036()
						local n93 = 740516142
						local n94 = 834411837
						local ok, result = pcall(function()
							local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart

							if n94 == 834411837 then
								return HumanoidRootPart
							end

							n93 = 752486809
							n3 += 1640
							n8 = 734524881
							n5 = 415254997
							n94 += 649
							n7 = 748763687
							-- (could not be recovered)
						end)

						if ok then
							return result
						end

						if n3 ~= n93 then
							return nil
						end

						n40 = 1015725622
						n39 = 371184950
						n41 += 628
						n94 += 7
						n3 = 206391512
						n8 += 1190
						n7 = 282329907
						n93 += 492
						n5 -= 1648
						n4 += 546
						n2 -= 1177
						-- (could not be recovered)
					end
					local function v2042()
						RunService:UnbindFromRenderStep("AnticheatDisabler")

						if n3 < n4 then
							pcall(function()
								LocalPlayer.Character.HumanoidRootPart.Anchored = false

								return
								-- (could not be recovered)
							end)

							return
						end

						n39 = 810811532
						n8 -= 676
						n5 -= 113
						n41 = 645943658
						n2 -= 1458
						n4 -= 1102
						n40 = 664726446
						n7 = 491326543
						n3 = 405582159
						-- (could not be recovered)
					end

					Character_2:CreateToggle({
						Name = "Anticheat disabler (Read tooltip)",
						CurrentValue = false,
						Flag = "DisableAnticheat",
						Callback = function(p240)
							local n95 = 490388657

							v2042()

							if not p240 then
								return
							end

							if n1 == 525278510 then
								task.spawn(function()
									local v2044, v2045

									while true do
										if RunService.Heartbeat:Wait() and v1164.Flags.DisableAnticheat.CurrentValue then
											v2044 = coroutine.running()
											v2045 = v2036()

											if v2045 then
												break
											end
										else
											return
										end
									end

									if n39 == 622647046 then
										n95 += 1069
										n2 = 576455012
										n5 = 723237261
										n41 = 810312102
										n39 += 630
										n1 -= 131
										-- (could not be recovered)
									end

									while true do
										v2045.Anchored = true
										RunService:BindToRenderStep("AnticheatDisabler", Enum.RenderPriority.First.Value, function()
											RunService:UnbindFromRenderStep("AnticheatDisabler")

											local n96 = 29528237

											v2045.Anchored = false
											RunService.PostSimulation:Wait()

											if n95 == n96 then
												n39 -= 1336
												n41 -= 2016
												n5 = 631203483
												n95 = 181199245
												n2 = 147754659
												upv393[nil] = nil --[[ constant not decoded ]]
												;(nil)(nil, nil)
											else
												task.spawn(v2044)
											end
										end)
										coroutine.yield()

										local exitTo

										while RunService.Heartbeat:Wait() and v1164.Flags.DisableAnticheat.CurrentValue do
											v2044 = coroutine.running()
											v2045 = v2036()

											if v2045 then
												exitTo = 1

												break
											end
										end

										if exitTo ~= 1 then
											break
										end

										if n39 ~= 622647046 then
											continue
										end

										n95 += 1069
										n2 = 576455012
										n5 = 723237261
										n41 = 810312102
										n39 += 630
										n1 -= 131
										-- (could not be recovered)
									end
								end)

								return
							end

							n6 += 1331
							n39 -= 1312
							n7 -= 1697
							n41 = 816636570
							n2 -= 424
							n40 = 7888052
							n1 -= 649
							n8 -= 2006
							n5 -= 790
							-- (could not be recovered)
						end,
						ToolTip = "1. BREAKS picking up items, doing generators, and projectile abilities and ONLY prevents movement kicks (fly/speed/noclip)"
					})
				end
			end

			Character_2:CreateToggle({
				Name = "Speed boost",
				CurrentValue = false,
				Flag = "SmallSpeedBoost",
				Callback = function(p241)
					if p241 then
						t23.add("SpeedBoost", function(x, s)
							local W = s and s:FindFirstChild("HumanoidRootPart") and s:FindFirstChild("Humanoid")

							if (t24.GameState == 1 and W and s.HumanoidRootPart.Velocity.Magnitude > 1) then
								s:TranslateBy(W.MoveDirection * (v1164.Flags.SpeedBoostPercent and (v1164.Flags.SpeedBoostPercent.CurrentValue / 10) or 7) * x)
							end
						end)
					else
						t23.disconnect("SpeedBoost")
					end

					if n6 == 89953460 then
						n6 += 1436
						n4 -= 1076
						n7 += 1189
						n40 = 997156870
						n8 -= 212
						n5 = 725315161
						n41 -= 7
						n39 += 301
						n2 += 443
					end
				end
			})
			Character_2:CreateSlider({
				Name = "└── Percent",
				Range = {
					10,
					70
				},
				Increment = 1,
				Suffix = "%",
				CurrentValue = 70,
				Flag = "SpeedBoostPercent",
				Callback = v1179
			})
			Character_2:CreateSection("Sixer", "Left")

			do
				local t67 = {}

				EnableNoclip = function()
					if LocalPlayer.Character then
						for _, child in pairs(LocalPlayer.Character:GetChildren()) do
							if child:IsA("BasePart") then
								t67[child] = child
								child.CanCollide = false
							end
						end
					end
				end
				DisableNoclip = function()
					for _, v in pairs(t67) do
						v.CanCollide = true
					end

					local v2054 = t2_9_1[1]
					local v2055 = t2_9_1[2]
					local v2056 = t2_9_1[3]

					if n7 == 420338304 then
						return
					end

					n41 += 956
					n40 = 151167099
					n3 = 1001268518
					n8 += 905
					n5 = 199922243
					n9 = 772868029
					n1 = 405484345
					n39 = 594440600
					n7 -= 1944
					n7[v2054] = v2055[v2056]
					-- (could not be recovered)
				end
			end

			Character_2:CreateToggle({
				Name = "Demonic pursuit noclip",
				CurrentValue = false,
				Flag = "DemonicPursuitNoclip",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Demonic pursuit anti-crash",
				CurrentValue = false,
				Flag = "DemonicPursuitAntiCrash",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Infinite hitbox trail",
				CurrentValue = false,
				Flag = "DemonicPursuitHitboxTrail",
				Callback = v1179,
				ToolTip = "For demonic pursuit, use and you will walk around with hitboxes forever until you hit someone"
			})
			Character_2:CreateSection("Noli", "Left")
			Character_2:CreateToggle({
				Name = "Void rush noclip",
				CurrentValue = false,
				Flag = "VoidRushNoclip",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Void rush anti-crash",
				CurrentValue = false,
				Flag = "VoidRushAntiCrash",
				Callback = v1179
			})

			do
				local VoidRushInitialTurnDuration = Config6.VoidRushInitialTurnDuration
				local VoidRushInitialTurnMult = Config6.VoidRushInitialTurnMult

				Character_2:CreateToggle({
					Name = "Void rush control",
					CurrentValue = false,
					Flag = "VoidRushControl",
					Callback = function(p242)
						if p242 then
							for _, v in getgc(true) do
								if type(v) ~= "table" or not rawget(v, "VoidRushInitialTurnDuration") then
									continue
								end

								rawset(v, "VoidRushInitialTurnDuration", 9999)
								rawset(v, "VoidRushInitialTurnMult", 9999)

								continue
								-- (could not be recovered)
							end
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "VoidRushInitialTurnDuration") then
									rawset(v, "VoidRushInitialTurnDuration", VoidRushInitialTurnDuration)
									rawset(v, "VoidRushInitialTurnMult", VoidRushInitialTurnMult)
								end
							end
						end
					end
				})
			end

			Character_2:CreateToggle({
				Name = "Auto detonate nova",
				CurrentValue = false,
				Flag = "AutoNova",
				Callback = v1179,
				ToolTip = "Auto detonate void star when a player is in the explosion radius"
			})
			Character_2:CreateSection("Guest 1337", "Right")
			Character_2:CreateToggle({
				Name = "Charge anti-crash",
				CurrentValue = false,
				Flag = "ChargeAntiCrash",
				Callback = v1179
			})

			do
				local ChargingTurnSpeed = Config2.ChargingTurnSpeed

				Character_2:CreateToggle({
					Name = "Charge turn control",
					CurrentValue = false,
					Flag = "ChargeControl",
					Callback = function(p243)
						if p243 then
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "ChargingTurnSpeed") then
									rawset(v, "ChargingTurnSpeed", 9999)
								end
							end
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "ChargingTurnSpeed") then
									rawset(v, "ChargingTurnSpeed", ChargingTurnSpeed)
								end
							end
						end
					end
				})
			end

			Character_2:CreateToggle({
				Name = "Charge pilot",
				CurrentValue = false,
				Flag = "Gen1337StopsDoingGeneratorsAndGetsInTheCockpit",
				Callback = v1179,
				ToolTip = "Lets you fly when using the charge ability"
			})
			Character_2:CreateToggle({
				Name = "Charge noclip",
				CurrentValue = false,
				Flag = "GuestNoclip",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Super punch",
				CurrentValue = false,
				Flag = "SuperPunch",
				Callback = v1179
			})
			Character_2:CreateSlider({
				Name = "└── Power",
				Range = {
					5,
					40
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 20,
				Flag = "SuperPunchPower",
				Callback = v1179
			})
			Character_2:CreateSection("Nosferatu", "Left")

			do
				local Duration = Config7.AscentFlight.Duration

				Character_2:CreateToggle({
					Name = "Infinite flight duration",
					CurrentValue = false,
					Flag = "InfiniteNosFly",
					Callback = function(p244)
						if p244 then
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "AscentFlight") then
									rawset(rawget(v, "AscentFlight"), "Duration", math.huge)
								end
							end
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "AscentFlight") then
									rawset(rawget(v, "AscentFlight"), "Duration", Duration)
								end
							end
						end
					end
				})
			end

			Character_2:CreateToggle({
				Name = "Infinite hitbox trail",
				CurrentValue = false,
				Flag = "NosHitboxTrail",
				Callback = v1179,
				ToolTip = "After diving with the ascent ability, you will walk with hitboxes forever until you hit somebody (Essentially the same as the one for sixer)"
			})
			Character_2:CreateSection("c00lkidd", "Left")
			Character_2:CreateToggle({
				Name = "Walkspeed override pilot",
				CurrentValue = false,
				Flag = "FlyOverride",
				Callback = v1179,
				ToolTip = "Lets you fly when using walkspeed override"
			})
			Character_2:CreateToggle({
				Name = "Walkspeed override noclip",
				CurrentValue = false,
				Flag = "NoclipOverride",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Walkspeed override TP hit",
				CurrentValue = false,
				Flag = "OverrideAutoHit",
				Callback = v1179
			})
			Character_2:CreateDropdown({
				Name = "└── Target",
				Options = {
					"Facing",
					"Nearest",
					"Lowest HP"
				},
				CurrentOption = { "Facing" },
				MultipleOptions = false,
				Flag = "OverrideAutoHitMode",
				Callback = v1179
			})

			if _G.UNLOCK_AZURE_FEATUREZ then
				Character_2:CreateSection("Azure", "Left")
				Character_2:CreateToggle({
					Name = "Azure tentacles exploit",
					CurrentValue = false,
					Flag = "AzureTentacleKick",
					Callback = v1179,
					ToolTip = "Can either destroy the player's character making them unable to play for the whole round and counting them as dead, or kicks them in rare cases"
				})
				Character_2:CreateSlider({
					Name = "Throw velocity",
					Range = {
						1,
						20
					},
					Increment = 0.1,
					Suffix = "x",
					CurrentValue = 1,
					Flag = "AzureThrowVelocity",
					Callback = v1179,
					ToolTip = "Changes how far your throw goes, 1x = Disabled"
				})
			end

			Character_2:CreateSection("Jane Doe", "Right")

			do
				local MinChargeTime = Config4.Crystal.MinChargeTime
				local MaxChargeTime = Config4.Crystal.MaxChargeTime

				Character_2:CreateToggle({
					Name = "Instant crystal charge",
					CurrentValue = false,
					Flag = "JaneDoeInstantCharge",
					Callback = function(p245)
						if p245 then
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
									rawset(rawget(v, "Crystal"), "MinChargeTime", 0)
									rawset(rawget(v, "Crystal"), "MaxChargeTime", 0.1)
								end
							end
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
									rawset(rawget(v, "Crystal"), "MinChargeTime", MinChargeTime)
									rawset(rawget(v, "Crystal"), "MaxChargeTime", MaxChargeTime)
								end
							end
						end
					end
				})
			end

			do
				local MaximumHoldTime = Config4.Crystal.MaximumHoldTime

				Character_2:CreateToggle({
					Name = "Infinite crystal hold time",
					CurrentValue = false,
					Flag = "JaneDoeInfHold",
					Callback = function(p246)
						if p246 then
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
									rawset(rawget(v, "Crystal"), "MaximumHoldTime", math.huge)
								end
							end
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
									rawset(rawget(v, "Crystal"), "MaximumHoldTime", MaximumHoldTime)
								end
							end
						end

						return
						-- (could not be recovered)
					end
				})
			end

			Character_2:CreateSection("007n7", "Right")

			do
				getN7player = function()
					local v2084 = v1164.Flags["007n7CloneFollowTarget"].CurrentOption[1]

					if v2084 == "Yourself" then
						return LocalPlayer.Character
					end

					if v2084 == "Killer" then
						return t24.MainKiller
					end

					if v2084 == "Nearest survivor" then
						local Character_3 = LocalPlayer.Character

						if not Character_3 or not Character_3:FindFirstChild("HumanoidRootPart") then
							return nil
						end

						local Position = Character_3.HumanoidRootPart.Position
						local huge = math.huge
						local v2088

						for _, survivor in ipairs(t24.Survivors) do
							if survivor ~= Character_3 then
								local Magnitude = (survivor.HumanoidRootPart.Position - Position).Magnitude

								if Magnitude < huge then
									huge = Magnitude
									v2088 = survivor
								end
							end
						end

						return v2088
					end

					if v2084 == "Lowest health" then
						local huge = math.huge
						local v2093

						for _, survivor in ipairs(t24.Survivors) do
							local Health = survivor.Humanoid.Health

							if Health < huge then
								huge = Health
								v2093 = survivor
							end
						end

						return v2093
					end

					if n1 == 525278510 then
						v138("no target, fallback to lplr")

						return LocalPlayer.Character
					end

					n5 = 290388791
					n3 = 128862520
					n6 -= 1259
					n7 = 107611590
					n40 += 776
					n1 = 395211231
					n4 = 867908645
					n39 += 1582
					n41 = 978793912
					-- (could not be recovered)
				end
			end

			calcN7position = function(p247)
				if p247 then
					local HumanoidRootPart = p247:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart then
						local AssemblyLinearVelocity = HumanoidRootPart.AssemblyLinearVelocity
						local Unit = AssemblyLinearVelocity.Magnitude > 1 and AssemblyLinearVelocity.Unit or HumanoidRootPart.CFrame.LookVector
						local v2100 = HumanoidRootPart.Position + AssemblyLinearVelocity * v1164.Flags["007n7CloneFollowPrediction"].CurrentValue / 100
						local CurrentValue = v1164.Flags["007n7CloneFollowDistance"].CurrentValue
						local now2 = tick()
						local v2103 = v1164.Flags["007n7CloneFollowMode"].CurrentOption[1]

						if v2103 == "Normal" then
							return v2100
						end

						if v2103 == "Front" then
							return v2100 + Unit * CurrentValue
						end

						if v2103 == "Back" then
							return v2100 - Unit * CurrentValue
						end

						if v2103 == "Orbit" then
							return v2100 + Vector3.new(math.sin(now2 * 4) * CurrentValue, 0, math.cos(now2 * 4) * CurrentValue)
						end

						if v2103 == "Strafe" then
							return v2100 + Unit * CurrentValue + HumanoidRootPart.CFrame.RightVector * math.sin(now2 * 6) * CurrentValue / 1.5
						end

						if v2103 ~= "Run away" then
							return v2100
						end

						if LocalPlayer.Character then
							local HumanoidRootPart2 = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart2 then
								return HumanoidRootPart2.Position + HumanoidRootPart2.CFrame.LookVector * CurrentValue * 1.5
							end
						end

						if n5 ~= n39 then
							return v2100
						end

						n40 -= 1863
						n8 += 476
						n41 += 652
						n5 += 600
						n1 = 26836293
						n4 = 406714556
						n39 -= 15
						n2 += 1032
						n3 += 1143
						-- (could not be recovered)
					end
				end
			end
			Character_2:CreateToggle({
				Name = "Clone follow/bodyblock",
				CurrentValue = false,
				Flag = "007n7CloneFollow",
				ToolTip = "Must set \"inject\" ability to \"cursor\"",
				Callback = v1179
			})
			Character_2:CreateDropdown({
				Name = "└── Mode",
				Options = {
					"Normal",
					"Orbit",
					"Front",
					"Back",
					"Run away",
					"Strafe"
				},
				CurrentOption = { "Front" },
				MultipleOptions = false,
				Flag = "007n7CloneFollowMode",
				Callback = v1179
			})
			Character_2:CreateDropdown({
				Name = "└── Target",
				Options = {
					"Killer",
					"Nearest survivor",
					"Lowest health",
					"Yourself"
				},
				CurrentOption = { "Killer" },
				MultipleOptions = false,
				Flag = "007n7CloneFollowTarget",
				Callback = v1179
			})
			Character_2:CreateSlider({
				Name = "└── Prediction",
				Range = {
					0,
					30
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 15,
				Flag = "007n7CloneFollowPrediction",
				Callback = v1179
			})
			Character_2:CreateSlider({
				Name = "└── Distance",
				Range = {
					0,
					14
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 6,
				Flag = "007n7CloneFollowDistance",
				Callback = v1179
			})

			do
				local n97 = 9e9
				local u2106 = false
				local DropButton = ReplicatedStorage.Systems.Player.UI.CustomBackpack.HotbarItemContainer.DropButton
				local u2108 = false

				local function v2109(p248)
					if u2108 then
						return v137("Cancelc00lgui: already cancelling")
					end

					u2108 = true

					local CFrame_
					local n98 = 440456841

					n97 = tick()
					u2106 = false

					local connection2

					local function v2113()
						u2108 = false
						connection2:Disconnect()

						if n39 == 622646567 then
							return
						end

						n41 = 859187788
						n98 += 556
						n39 += 1273
						n8 = 396694507
						n4 = 1020877763
						n7 = 51129950
						n5 = 71069009
						-- (could not be recovered)
					end

					if n41 ~= 711369137 then
						connection2 = RunService.Heartbeat:Connect(function()
							local Character_3 = LocalPlayer.Character
							local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("Humanoid") and Character_3:FindFirstChild("HumanoidRootPart")

							if not HumanoidRootPart or Character_3.Humanoid.Health <= 0 then
								return v2113(), v137("Cancelc00lgui: died while doing troll gui")
							end

							if not u2106 then
								if not Character_3:FindFirstChild("c00lgui") then
									if tick() - n97 >= 1 then
										return v2113(), v137("Cancelc00lgui: c00lgui never appeared; aborting troll gui")
									end

									return
								end

								u2106 = true

								if p248 then
									xpcall(function()
										TemporaryUI:WaitForChild("ProgressBar"):Destroy()
									end, function()
										if n98 == 440456841 then
											v137("Cancelc00lgui: fail to delete progress bar")

											return
										end

										n2 += 398
										n7 += 1447
										n4 = 240327301
										n5 += 1325
										n98 -= 1663
										-- (could not be recovered)
									end)
									xpcall(function()
										obj.c00lguiAnimationTrack:Stop()

										return
									end, function()
										v137("Cancelc00lgui: fail to stop c00lgui animation")
									end)
									xpcall(function()
										Character_3.SpeedMultipliers.c00lgui:Destroy()
									end, function()
										v137("Cancelc00lgui: fail to stop c00lgui slowdown")
									end)
									Sprinting.CanSprint = true
									lib:Notify({
										Title = p248,
										Content = "c00lgui cancelled",
										Duration = 4
									})
								end

								v138("Cancelc00lgui: c00lgui ability detected")
							end

							if not CFrame_ then
								CFrame_ = HumanoidRootPart.CFrame
							end

							if (HumanoidRootPart.Position - CFrame_.Position).magnitude >= 40 then
								v138("Cancelc00lgui: c00lgui teleport detected")
								HumanoidRootPart.CFrame = CFrame_

								return v2113()
							end

							if tick() - n97 >= 6.5 then
								v137("Cancelc00lgui: well thats not normal")

								return v2113()
							end

							RunService.RenderStepped:Wait()
							CFrame_ = HumanoidRootPart.CFrame
						end)

						return
					end

					n4 = 167827503
					n6 = 104527785
					n5 += 160
					n98 = 262347439
					n40 -= 1951
					n39 = 857992789
					n8 = 376736864
					n7 += 1732
					n2 = 624144735
					n41 -= 1958
					upv142 = nil --[[ constant not decoded ]]
				end

				local u2116
				local connection2
				local u2118
				local connection3
				local connection4
				local connection5

				local function v2122()
					if u2116 then
						if not (n39 < n40) then
							n4 += 15
							n40 += 310
							n5 -= 1453
							n1 = 316011978
							n3 -= 1148
							n2 = 514788392
							n9 += 113
							n41 -= 1136
							n39 -= 882
							-- (could not be recovered)
						end

						u2116 = u2116:Destroy()
					end

					if connection2 then
						connection2 = connection2:Disconnect()
					end
				end
				local function v2123()
					if u2118 then
						u2118 = u2118:Destroy()
					end

					if connection3 then
						connection3 = connection3:Disconnect()
					end

					return
				end
				local function v2124()
					local Character_3 = LocalPlayer.Character

					if not Character_3 or Character_3.Name ~= "007n7" or Character_3.Parent ~= Survivors3 then
						return
					end

					local AbilityContainer = PlayerGui.MainUI:WaitForChild("AbilityContainer", 3)

					if not AbilityContainer then
						return v137("CreateTrollGui: ability container is nil")
					end

					local c00lgui = AbilityContainer:WaitForChild("c00lgui", 3)

					if not c00lgui then
						return v137("CreateTrollGui: c00lgui doesnt exist in abilities")
					end

					local clone = c00lgui:Clone()

					clone.Name = "tr0llgui"
					clone.AbilityName.Text = "tr0llgui"

					local n99 = 871397392

					clone.KeybindName:Destroy()
					clone.Parent = c00lgui.Parent
					u2116 = clone
					connection2 = clone.MouseButton1Click:Connect(function()
						if not HasAbilityReady("c00lgui") then
							v137("CreateTrollGui: you aint supposed to click that yet")

							return
						end

						module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "c00lgui")

						local n100 = 668962399

						v2109()

						if n7 < n100 then
							return
						end

						n99 += 1345
						n7 = 1045000526
						n2 = 427830837
						n3 += 913
						n40 = 261422839
						n5 += 1981
						-- (could not be recovered)
					end)

					if n41 ~= n99 then
						task.spawn(function()
							while c00lgui.Parent and u2116 and clone.Parent do
								if u2116:FindFirstChild("DropButton") then
									u2116.DropButton:Destroy()
								end

								clone.CooldownTime.Text = c00lgui.CooldownTime.Text
								clone.Clipping.Size = c00lgui.Clipping.Size
								clone.Clipping.Top.Size = c00lgui.Clipping.Top.Size
								task.wait()
							end

							v2122()
						end)

						return
					end

					n41 = 549090551
					n39 = 486250007
					n5 += 1541
					n99 += 1476
					n2 = 346625857
					n3 += 1072
					n4 -= 1688
					n40 = 527124798
					n7 -= 819
					n9 -= 1682
					-- (could not be recovered)
				end
				local function v2131()
					local Character_3 = LocalPlayer.Character

					if not Character_3 or Character_3.Name ~= "007n7" or Character_3.Parent ~= Survivors3 then
						return
					end

					local AbilityContainer = PlayerGui.MainUI:WaitForChild("AbilityContainer", 3)

					if not AbilityContainer then
						return v137("CreateCancelGui: ability container is nil")
					end

					local c00lgui = AbilityContainer:WaitForChild("c00lgui", 3)

					if not c00lgui then
						return v137("CreateCancelGui: c00lgui doesnt exist in abilities")
					end

					local clone = DropButton:Clone()

					clone.Parent = c00lgui
					u2118 = clone

					if n41 == 711369103 then
						connection3 = clone.MouseButton1Click:Connect(function()
							if LocalPlayer.Character then
								if LocalPlayer.Character:FindFirstChild("c00lgui") then
									v2109("Catsaken")

									return
								end
							end

							return v137("CreateCancelGui: there is literally no reason to press the button")
						end)

						return
					end

					n40 = 596832485
					n2 -= 708
					n39 = 28885555
					n6 += 1117
					n5 = 409635755
					n4 += 176
					n8 = 324864614
					n41 += 2047
					n3 += 1776
				end

				Character_2:CreateToggle({
					Name = "Troll c00lgui",
					CurrentValue = false,
					Flag = "007n7TrollGui",
					Callback = function(p249)
						if p249 then
							v2124()
							connection4 = LocalPlayer.CharacterAdded:Connect(function(character)
								if character.Name == "007n7" and character.Parent == Survivors3 then
									while true do
										local AbilityContainer = PlayerGui.MainUI:FindFirstChild("AbilityContainer")

										task.wait()

										if AbilityContainer and AbilityContainer.Parent and not AbilityContainer:FindFirstChild("tr0llgui") then
											break
										elseif not character.Parent then
											break
										end
									end

									if not character.Parent then
										return
									end

									v138("recreating troll gui")
									v2124()
								end
							end)
						else
							v2122()

							if connection4 then
								connection4 = connection4:Disconnect()
							end
						end
					end,
					ToolTip = [[Will not actually teleport you after c00lgui is finished loading

NOTE: there will be a really short teleportation other players see (for like 100ms) when the c00lgui teleport happens for real]]
				})
				Character_2:CreateToggle({
					Name = "Cancellable c00lgui",
					CurrentValue = false,
					Flag = "c00lguiCancelButton",
					Callback = function(p250)
						if p250 then
							v2131()
							connection5 = LocalPlayer.CharacterAdded:Connect(function(character)
								if character.Name == "007n7" and character.Parent == Survivors3 then
									repeat
										local AbilityContainer = PlayerGui.MainUI:FindFirstChild("AbilityContainer")

										task.wait()

										if AbilityContainer and AbilityContainer.Parent and AbilityContainer:FindFirstChild("c00lgui") then
											if not AbilityContainer.c00lgui:FindFirstChild("DropButton") or not character.Parent then
												break
											end
										end
									until not character.Parent

									if not character.Parent then
										return
									end

									v138("recreating cancel button")
									v2131()
								end

								if n6 < n7 then
									return
								end

								n6 = 848711292
								n39 = 637896370
								n9 = 700618434
								n5 += 492
								n7 += 1434
								n4 += 1837
								-- (could not be recovered)
							end)
						else
							v2123()

							if connection5 then
								connection5 = connection5:Disconnect()
							end
						end
					end,
					ToolTip = [[Adds a cancel button to your c00lgui

NOTE: there will be a really short teleportation other players see (for like 100ms) when the c00lgui teleport happens for real]]
				})
			end

			Character_2:CreateSection("Veeronica", "Right")
			VerronicaIsSkating = function()
				if t24.GameState ~= 1 then
					return false
				end

				if LocalPlayer.Character.Name ~= "Veeronica" then
					return false
				end

				if not Behavior2:FindFirstChild("Highlight") then
					return false
				end

				if Behavior2.Highlight.Adornee ~= LocalPlayer.Character then
					return false
				end

				return true
				-- (could not be recovered)
			end

			do
				Character_2:CreateToggle({
					Name = "Sk8 auto trick",
					CurrentValue = false,
					Flag = "AutoTrick",
					Callback = function(p251)
						if p251 then
							while task.wait() and v1164.Flags.AutoTrick.CurrentValue do
								if VerronicaIsSkating() then
									if v133 then
										firesignal(PlayerGui.MainUI.SprintingButton.MouseButton1Down)
									else
										PressKeycode(Enum.KeyCode.Space)
									end
								end
							end
						end
					end
				})
			end

			do
				local Sk8TurnControl = Config.Sk8TurnControl

				Character_2:CreateToggle({
					Name = "Sk8 turn control",
					CurrentValue = false,
					Flag = "SkateTurningControl",
					Callback = function(p252)
						local n101 = 643583030

						if p252 then
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Sk8TurnControl") then
									rawset(v, "Sk8TurnControl", 10)
								end
							end

							if n39 < n101 then
								return
							end

							n40 += 1561
						else
							for _, v in getgc(true) do
								if type(v) == "table" and rawget(v, "Sk8TurnControl") then
									rawset(v, "Sk8TurnControl", Sk8TurnControl)
								end
							end

							if n39 < n101 then
								return
							end

							n40 += 1561
						end

						n8 = 962443618
						n5 += 1692
						n39 = 375622015
						n6 = 1063241455
						n9 -= 1168
						n2 = 852059642
						n41 = 382670270
						n3 = 179730831
						-- (could not be recovered)
					end
				})
			end

			Character_2:CreateToggle({
				Name = "Sk8 anti-crash",
				CurrentValue = false,
				Flag = "Sk8AntiCrash",
				Callback = v1179,
				ToolTip = "Can be blatant if used incorrectly"
			})
			Character_2:CreateToggle({
				Name = "Sk8 forever",
				CurrentValue = false,
				Flag = "Sk8Forever",
				Callback = v1179,
				ToolTip = "Lets you skate even when you are out of stamina"
			})
			Character_2:CreateDropdown({
				Name = "└── Mode",
				Options = {
					"Coninute skating at 0 stamina",
					"Freeze stamina while skating"
				},
				CurrentOption = { "Coninute skating at 0 stamina" },
				MultipleOptions = false,
				Flag = "Sk8ForeverMode",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Sk8 trick anywhere",
				CurrentValue = false,
				Flag = "Sk8TrickAnywhere",
				Callback = v1179,
				ToolTip = "Allows you to do a trick anywhere"
			})
			Character_2:CreateToggle({
				Name = "Sk8 autofarm",
				CurrentValue = false,
				Flag = "Sk8Autofarm",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Sk8 movement control",
				CurrentValue = false,
				Flag = "Sk8Freewalk",
				Callback = v1179,
				ToolTip = "Allow to move start/stop moving while using skate"
			})
			Character_2:CreateSection("Dusekkar", "Right")
			Character_2:CreateToggle({
				Name = "Anti protection break",
				CurrentValue = false,
				Flag = "ProtectionBreak",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Use protection through walls",
				CurrentValue = false,
				Flag = "ProtectionBreakWall",
				Callback = v1179
			})
			Character_2:CreateSection("Shedletsky", "Right")
			Character_2:CreateToggle({
				Name = "Auto slash 360",
				CurrentValue = false,
				Flag = "Shed360",
				Callback = function(p253)
					if p253 then
						if v1164.Flags.ShedLunge.CurrentValue then
							lib:Notify({
								Title = "Auto slash 360",
								Content = "Slash lunge is enabled, this feature will not do anything."
							})
						end
					end
				end,
				ToolTip = "Could be blatant in some cases, user discretion is advised"
			})
			Character_2:CreateSlider({
				Name = "└── 360 duration",
				Range = {
					100,
					400
				},
				Increment = 10,
				Suffix = "ms",
				CurrentValue = 200,
				Flag = "Shed360Duration",
				Callback = v1179
			})
			Character_2:CreateSlider({
				Name = "└── 360 delay",
				Range = {
					100,
					700
				},
				Increment = 10,
				Suffix = "ms",
				CurrentValue = 500,
				Flag = "Shed360Wait",
				Callback = v1179,
				ToolTip = "Time to wait before doing the 360\nForsaken default windup = 0.55s (500ms)"
			})

			do
				Character_2:CreateToggle({
					Name = "Slash lunge",
					CurrentValue = false,
					Flag = "ShedLunge",
					Callback = function(p254)
						if p254 and v1164.Flags.Shed360.CurrentValue then
							lib:Notify({
								Title = "Slash lunge",
								Content = "360 is enabled, this feature will make it disabled."
							})
						end
					end
				})
			end

			Character_2:CreateSlider({
				Name = "└── Power",
				Range = {
					5,
					40
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 20,
				Flag = "ShedLungePower",
				Callback = v1179
			})
			Character_2:CreateSection("Two Time", "Right")
			Character_2:CreateToggle({
				Name = "Auto backstab",
				CurrentValue = false,
				Flag = "AutoBackstab",
				Callback = v1179
			})
			Character_2:CreateToggle({
				Name = "Glidestab helper",
				CurrentValue = false,
				Flag = "GlidestabHelper",
				Callback = v1179,
				ToolTip = "Automatically aims at killer back when in range after lunging"
			})
			Character_2:CreateSlider({
				Name = "Lunge hitbox distance multi",
				Range = {
					1,
					4.5
				},
				Increment = 0.1,
				Suffix = "x",
				CurrentValue = 1,
				Flag = "DaggerLungeMul",
				Callback = v1179,
				ToolTip = "Increases the distance of your dagger to hit.\n1x = Disabled"
			})
			Character_2:CreateSlider({
				Name = "Crouch hitbox distance multi",
				Range = {
					1,
					2
				},
				Increment = 0.1,
				Suffix = "x",
				CurrentValue = 1,
				Flag = "DaggerCrouchLungeMul",
				Callback = v1179,
				ToolTip = "Same thing as lunge hitbox distance multi, just applies only when crouched"
			})
			Character_2:CreateToggle({
				Name = "Backstab exploit",
				CurrentValue = false,
				Flag = "BackstabExploit",
				Callback = v1179
			})

			do
				local t68 = {}

				TrackAttributes = function(p255)
					if not p255 then
						return
					end

					local n102 = 674318451
					local n103 = 47903203
					local connection2 = p255:GetAttributeChangedSignal("PursuitState"):Connect(function()
						if p255:GetAttribute("PursuitState") == "Dashing" then
							t24.PursuitTracker = tick()

							if IsKiller() and v1164.Flags.DemonicPursuitNoclip.CurrentValue then
								EnableNoclip()

								while true do
									task.wait()

									if LocalPlayer.Character then
										if LocalPlayer.Character:GetAttribute("PursuitState") ~= "Dashing" or not IsKiller() then
											break
										end
									else
										break
									end
								end

								DisableNoclip()
							end
						end
					end)
					local connection3 = p255:GetAttributeChangedSignal("VoidRushState"):Connect(function()
						if p255:GetAttribute("VoidRushState") == "Dashing" then
							t24.VoidRushTracker = tick()
							task.spawn(function()
								while LocalPlayer.Character:GetAttribute("VoidRushState") == "Dashing" and task.wait() do
									if IsKiller() and t54["Void Rush"] then
										local v2149 = GetClosestSurvivor(v1164.Flags.VoidRushThreshold.CurrentValue)

										if v2149 then
											StartAimbotting(v2149, function()
												return IsKiller() and LocalPlayer.Character:GetAttribute("VoidRushState") == "Dashing"
												-- (could not be recovered)
											end, nil, nil, true)
										end

										StartAimbotting()
									end
								end
							end)

							if IsKiller() and v1164.Flags.VoidRushNoclip.CurrentValue then
								EnableNoclip()

								while true do
									task.wait()

									if LocalPlayer.Character then
										if LocalPlayer.Character:GetAttribute("VoidRushState") == "Dashing" and IsKiller() then
											continue
										end
									end

									break
								end

								DisableNoclip()
							end
						end
					end)
					local connection4 = p255:GetAttributeChangedSignal("DirectionalMovementDisabled"):Connect(function()
						if v1164.Flags.DisableDirectionalMovement.CurrentValue then
							p255:SetAttribute("DirectionalMovementDisabled", true)
						end

						if n102 == 674318451 then
							return
						end

						n3 -= 685
						n4 = 208841605
						n40 = 594845569
						n102 = 232167367
						n5 = 409886434
						n6 = 451202392
						n1 = 785608604
						n103 += 174
						-- (could not be recovered)
					end)

					if v1164.Flags.DisableDirectionalMovement.CurrentValue then
						p255:SetAttribute("DirectionalMovementDisabled", true)
					end

					local connection5 = p255:GetAttributeChangedSignal("FootstepsMuted"):Connect(function()
						if v1164.Flags.AntiFootsteps.CurrentValue then
							p255:SetAttribute("FootstepsMuted", true)
						end

						if n103 ~= 47903203 then
							n5 += 40
							n39 = 533008227
							n40 = 288042909
							n1 += 1359
							n3 -= 645
							n102 += 1238
							n103 -= 1720
							n6 += 1004
						end
					end)

					if v1164.Flags.AntiFootsteps.CurrentValue then
						p255:SetAttribute("FootstepsMuted", true)
					end

					local connection6 = p255:GetAttributeChangedSignal("NoFallSlow"):Connect(function()
						if 484509552 ~= n6 then
							if v1164.Flags.AntiSlowOnLanding.CurrentValue then
								p255:SetAttribute("NoFallSlow", true)
							end

							return
						end

						n103 = 472613506
						n41 += 237
						n102 = 855660114
						n5 = 831287545
						n3 = 298179865
						n6 = 549571870

						local v2153 = table.pack(F_0())

						if not v2153[1] then
							-- (could not be recovered)
						end
						-- (could not be recovered)
					end)

					if v1164.Flags.AntiSlowOnLanding.CurrentValue then
						p255:SetAttribute("NoFallSlow", true)
					end

					local HumanoidRootPart = p255:WaitForChild("HumanoidRootPart", 7)
					local Humanoid = p255:WaitForChild("Humanoid", 7)

					assert(HumanoidRootPart, "TrackAttributes: no root")
					assert(Humanoid, "TrackAttributes: no humanoid")

					local connection7 = HumanoidRootPart.ChildAdded:Connect(function(child)
						if child:IsA("LinearVelocity") then
							if not (n102 < n5) then
								n5 += 893
								n40 = 998486174
								n102 += 1470
								n1 -= 638
								n4 -= 1049
								n103 += 339
								n39 = 393342077
								-- (could not be recovered)
							end

							if u48 then
								return
							end

							if p255.Name ~= "c00lkidd" or not v1164.Flags.FlyOverride.CurrentValue then
								return
							end

							child.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector

							local connection7

							connection7 = RunService.Heartbeat:Connect(function()
								local n104 = 306112373
								local LookVector = workspace.CurrentCamera.CFrame.LookVector

								if not child.Parent then
									connection7:Disconnect()

									return
								end

								if t24.UsingWalkspeedOverride then
									child.VectorVelocity = LookVector * Config9.WalkspeedOverrideSpeed
									HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, HumanoidRootPart.Position + LookVector)

									if n103 == n104 then
										n1 = 25065603
										n5 += 682
										n40 = 825718177
										n103 = 769471366
										-- (could not be recovered)
									end
								else
									child:Destroy()

									if n103 == n104 then
										n1 = 25065603
										n5 += 682
										n40 = 825718177
										n103 = 769471366
										-- (could not be recovered)
									end
								end
							end)
							t24.Disconnectables[#t24.Disconnectables + 1] = connection7
							t24.Disconnectables[#t24.Disconnectables + 1] = child.AncestryChanged:Connect(function(child2, parent)
								if not parent then
									HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								end

								return
							end)
						end
					end)

					t24.Disconnectables[#t24.Disconnectables + 1] = connection2
					t24.Disconnectables[#t24.Disconnectables + 1] = connection3
					t24.Disconnectables[#t24.Disconnectables + 1] = connection4
					t24.Disconnectables[#t24.Disconnectables + 1] = connection5
					t24.Disconnectables[#t24.Disconnectables + 1] = connection6
					t24.Disconnectables[#t24.Disconnectables + 1] = connection7
					t68[#t68 + 1] = connection3
					t68[#t68 + 1] = connection2
					t68[#t68 + 1] = connection4
					t68[#t68 + 1] = connection5

					if n4 ~= 944310039 then
						n6 = 846525317
						n103 -= 1740
						n40 -= 246
						n7 -= 1690
						n3 += 1341
						n41 += 365
						n5 = 53108887
						n39 -= 959
						n102 -= 405
						n1 -= 1164
						n4 += 451
						-- (could not be recovered)
					end

					t68[#t68 + 1] = connection6
					t68[#t68 + 1] = connection7
					t24.Disconnectables[#t24.Disconnectables + 1] = Humanoid.Died:Once(function()
						v138("TrackAttributes: clearing trackers")

						for i = 1, #t68 do
							local v2161 = t68[i]

							if v2161 then
								v2161:Disconnect()

								local v2162 = table.find(t24.Disconnectables, v2161)

								if not v2162 then
									v137("OMG how does that not exist")
								else
									table.remove(t24.Disconnectables, v2162)
								end
							else
								v137("Something strange is happening in track attributes FOR SURE!!")
							end
						end
					end)
				end
			end

			TrackAttributes(LocalPlayer.Character)
			LocalPlayer.CharacterAdded:Connect(TrackAttributes)

			local v2163

			v2163 = v39(debug.getupvalue(Behavior.Created, 3), newcclosure(function(...)
				local n105 = 136318107

				if not v1164.Flags.ProtectionBreak.CurrentValue then
					return v2163(...)
				end

				if n5 ~= n105 then
					return true, 0
				end

				n5 = 347188900
				n6 -= 274
				n41 -= 646
				n39 = 228331339
				n8 = 165038717
				n1 -= 389
				n9 += 598
				n4 += 360
				n40 -= 1699
			end))
			Autoblock:CreateSection("Auto Block")
			t23.add("NoliCoolkidDetector", function(x, x)
				if (VoidRushIsDangerous and OverrideIsDangerous and t24.MainKiller) then
					if v1164.Flags.AutoBlockToggle.CurrentValue then
						if t24.MainKiller.Name == "Noli" then
							local x, Y = VoidRushIsDangerous()

							if (x and Y) then
								if HasAbilityReady("Block") then
									Block()
								end
							end
						elseif t24.MainKiller.Name == "c00lkidd" then
							local x, a = OverrideIsDangerous()

							if (x and a) then
								if HasAbilityReady("Block") then
									Block()
								end
							end
						end
					end
				end
			end)
			Autoblock:CreateToggle({
				Name = "Auto block",
				CurrentValue = false,
				Flag = "AutoBlockToggle",
				Callback = function(p256)
					if p256 then
						t23.add("AutoBlockHitbox", function(x, x)
							xpcall(function()
								setthreadidentity(8)

								local P = t24.MainKiller
								local I = true

								if (tostring(x) ~= "Guest1337" and not v1164.Flags.AutoBlockVisualizerAlways.CurrentValue) or not v1164.Flags.AutoBlockVisualizer.CurrentValue then
									I = false
								end

								if t24.GameState ~= 1 then
									I = false
								end

								if not P then
									I = false
								end

								if I then
									Part.Transparency = 0.8
									Part2.Transparency = 0.8
								else
									Part.Transparency = 1
									Part2.Transparency = 1
								end

								if not P then
									return
								end

								local I = t24.AttackHitboxes[P.Name].offset
								local Y = v1164.Flags.QueryAutoblock.CurrentValue and x:FindFirstChild("QueryHitbox") or x:FindFirstChild("HumanoidRootPart")
								local X = v1164.Flags.QueryAutoblock.CurrentValue and P:FindFirstChild("QueryHitbox") or P:FindFirstChild("HumanoidRootPart")

								if not (v1164.Flags.HitboxDragTech.CurrentValue and v1164.Flags.HDTVisualizer.CurrentValue) then
									Part2.Transparency = 1
								else
									Part2.Transparency = 0.8
								end

								if not P or tostring(x) ~= "Guest1337" then
									return
								end

								if (X and Y) then
									local x = v1164.Flags.VisualizerFront.CurrentValue + ((v1164.Flags.VisualizerFrontPlus.CurrentValue * (P.Humanoid:GetMoveVelocity().magnitude / P.Humanoid.WalkSpeed)) or 0)
									local P, A, r = v1164.Flags.VisualizerLeft.CurrentValue, v1164.Flags.VisualizerRight.CurrentValue, v1164.Flags.VisualizerBack.CurrentValue

									Part.CFrame = (X.CFrame * CFrame.new((A - P) / 2, 0, -(x - r) / 2)):ToWorldSpace(CFrame.new(-I))
									Part.Size = Vector3.new(P + A, 10, x + r)

									local x = v1164.Flags.HDTFront.CurrentValue
									local P, A, r = v1164.Flags.HDTLeft.CurrentValue, v1164.Flags.HDTRight.CurrentValue, v1164.Flags.HDTBack.CurrentValue

									Part2.CFrame = (X.CFrame * CFrame.new((A - P) / 2, 0, -(x - r) / 2)):ToWorldSpace(CFrame.new(-I))
									Part2.Size = Vector3.new(P + A, 10, x + r)
								else
									Part:SetAttribute("in", false)
									Part2:SetAttribute("in", false)
									Part.CFrame = CFrame.new(99999, 99999999, 9999)
									Part2.CFrame = CFrame.new(99999, 99999999, 9999)
								end

								if not pcall(function()
									Part:SetAttribute("in", arePartsTouching(Part, Y))
								end) then
									Part:SetAttribute("in", false)
								end

								if not pcall(function()
									Part2:SetAttribute("in", arePartsTouching(Part2, Y))
								end) then
									Part2:SetAttribute("in", false)
								end

								Part.Color = v1164.Flags["Visualizer" .. (Part:GetAttribute("in") and "In" or "Out") .. "Color"].Color
								Part2.Color = v1164.Flags["HDT" .. (Part2:GetAttribute("in") and "In" or "Out") .. "Color"].Color
							end, function(x)
								v137("error in auto-block hitbox:", tostring(x))
							end)
						end)

						if n5 == n3 then
							n5 = 395312886
							n41 += 1940
							n2 = 360317451
							n6 = 257612217
							n39 += 5
							n8 += 2037
							n40 = 834619570
							n1 = 367187711
							n3 = 364114090
							-- (could not be recovered)
						end
					else
						t23.disconnect("AutoBlockHitbox")

						if n5 == n3 then
							n5 = 395312886
							n41 += 1940
							n2 = 360317451
							n6 = 257612217
							n39 += 5
							n8 += 2037
							n40 = 834619570
							n1 = 367187711
							n3 = 364114090
							-- (could not be recovered)
						end
					end
				end
			})
			Autoblock:CreateToggle({
				Name = "Auto clone 007n7",
				CurrentValue = false,
				Flag = "AutoCloneToggle",
				Callback = v1179,
				ToolTip = "Uses 007n7's clone ability when killer hits you to make the killer's attack hit the clone instead of you"
			})
			Autoblock:CreateToggle({
				Name = "Auto raging pace",
				CurrentValue = false,
				Flag = "AutoParryToggle",
				Callback = v1179,
				ToolTip = "Uses slasher's raging pace ability when it detects shedletsky slash, jane doe axe, two time backstab, or guest1337 punch to parry them and avoid stun"
			})
			Autoblock:CreateToggle({
				Name = "Auto 404 Error",
				CurrentValue = false,
				Flag = "AutoUse404Error",
				Callback = v1179
			})

			local v2182 = Autoblock:CreateLabel("Ping: 0ms")

			task.spawn(function()
				while task.wait() do
					local value = Stats.PerformanceStats.Ping:GetValue()
					local s13

					if value <= 40 then
						s13 = "Best"
					elseif value <= 70 then
						s13 = "Good"
					elseif value <= 100 then
						s13 = "Decent"
					else
						s13 = "Bad, try finding a new server"
					end

					local v2185 = v2182
					local Set = v2182.Set
					local v2187 = ("Your ping is %*s (%*)"):format(string.format("%.2f", value / 1000), s13)

					Set(v2185, v2187)
				end

				if n41 < n5 then
					return
				end

				n40 -= 567
				n5 -= 30
				n1 += 1209
				n7 = 315387129
				n8 = 117714991
				n39 -= 1472
				n9 = 5637607
				n41 += 1615
				n6 -= 753
				-- (could not be recovered)
			end)
			Autoblock:CreateSection("Settings")
			Autoblock:CreateToggle({
				Name = "Auto punch",
				CurrentValue = true,
				Flag = "AutoBlockPunch",
				Callback = v1179
			})
			Autoblock:CreateToggle({
				Name = "Hitbox shake",
				CurrentValue = false,
				Flag = "AntiBait",
				Callback = v1179,
				ToolTip = "This is not legit. This feature teleports your character to the killer to get parries"
			})
			Autoblock:CreateToggle({
				Name = "Hitbox drag tech",
				CurrentValue = true,
				Flag = "HitboxDragTech",
				Callback = v1179,
				ToolTip = "Walks into the killer's old attack hitboxes to get a free parry"
			})
			Autoblock:CreateLabel("Detection range and face check apply to auto raging pace/404 error/clone, not auto block")
			Autoblock:CreateSlider({
				Name = "Detection range",
				Range = {
					4,
					12
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 10,
				Flag = "RagingPaceRange",
				Callback = v1179
			})
			Autoblock:CreateToggle({
				Name = "Face check",
				CurrentValue = false,
				Flag = "RagingPaceFaceCheck",
				Callback = v1179,
				TextMode = true
			})
			Autoblock:CreateToggle({
				Name = "Hitbox check",
				CurrentValue = true,
				Flag = "NGAutoBlockHitboxCheck",
				Callback = v1179,
				TextMode = true
			})
			Autoblock:CreateDropdown({
				Name = "Aim on",
				Options = {
					"Block",
					"Punch"
				},
				CurrentOption = {
					"Block",
					"Punch"
				},
				MultipleOptions = true,
				Flag = "AutoBlockAims",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Wait delay before blocking",
				Range = {
					0,
					300
				},
				Increment = 1,
				Suffix = "ms",
				CurrentValue = 0,
				Flag = "AutoBlockMS",
				Callback = v1179,
				ToolTip = "You might aswell just keep this at 0, but if you want it to look more like a real react block or drag tech, set it higher"
			})
			Autoblock:CreateToggle({
				Name = "Sound detection",
				CurrentValue = true,
				Flag = "AutoBlockSounds",
				Callback = v1179,
				ToolTip = "Sounds replicate before animations do, which offers a faster detection and can easily block coolkidd M1 and more"
			})
			Autoblock:CreateToggle({
				Name = "Query based detection",
				CurrentValue = true,
				Flag = "QueryAutoblock",
				Callback = v1179,
				ToolTip = "Detects wether to block based on your/their replicated position instead of client position."
			})
			Autoblock:CreateSection("Hitbox/Visualizer")
			Autoblock:CreateToggle({
				Name = "Show hitbox",
				CurrentValue = true,
				Flag = "AutoBlockVisualizer",
				Callback = v1179
			})
			Autoblock:CreateToggle({
				Name = "└── Always show",
				CurrentValue = false,
				Flag = "AutoBlockVisualizerAlways",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Left size",
				Range = {
					0,
					9
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "VisualizerLeft",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Right size",
				Range = {
					0,
					9
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "VisualizerRight",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Front size",
				Range = {
					0,
					18
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 17,
				Flag = "VisualizerFront",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Back size",
				Range = {
					-5,
					11
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "VisualizerBack",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "Z-Expansion",
				Range = {
					0,
					9
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 0,
				Flag = "VisualizerFrontPlus",
				Callback = v1179,
				ToolTip = "Adds length to front when the killer is moving"
			})
			Autoblock:CreateColorPicker({
				Name = "Color (In hitbox)",
				Color = Color3.fromRGB(0, 255, 0),
				Flag = "VisualizerInColor",
				Callback = v1179
			})
			Autoblock:CreateColorPicker({
				Name = "Color (Not in hitbox)",
				Color = Color3.fromRGB(255, 0, 0),
				Flag = "VisualizerOutColor",
				Callback = v1179
			})
			Autoblock:CreateDivider()
			Autoblock:CreateToggle({
				Name = "Show HDT hitbox",
				CurrentValue = true,
				Flag = "HDTVisualizer",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "HDT left size",
				Range = {
					0,
					9
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "HDTLeft",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "HDT right size",
				Range = {
					0,
					9
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "HDTRight",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "HDT front size",
				Range = {
					0,
					18
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 10,
				Flag = "HDTFront",
				Callback = v1179
			})
			Autoblock:CreateSlider({
				Name = "HDT back size",
				Range = {
					-5,
					11
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 5,
				Flag = "HDTBack",
				Callback = v1179
			})
			Autoblock:CreateColorPicker({
				Name = "HDT Color (In hitbox)",
				Color = Color3.fromRGB(0, 255, 0),
				Flag = "HDTInColor",
				Callback = v1179
			})
			Autoblock:CreateColorPicker({
				Name = "HDT Color (Not in hitbox)",
				Color = Color3.fromRGB(255, 0, 0),
				Flag = "HDTOutColor",
				Callback = v1179
			})
			Autoblock:CreateSection("Block Settings")
			Autoblock:CreateToggle({
				Name = "Block void rush",
				CurrentValue = false,
				Flag = "AutoBlockVoidRush",
				Callback = v1179,
				TextMode = true
			})
			Autoblock:CreateToggle({
				Name = "Block walkspeed override",
				CurrentValue = false,
				Flag = "AutoBlockOverride",
				Callback = v1179,
				TextMode = true
			})
			Autoblock:CreateToggle({
				Name = "Enable sprint after block",
				CurrentValue = true,
				Flag = "AutoParrySprint",
				Callback = v1179,
				TextMode = true
			})
			Autoblock:CreateToggle({
				Name = "Notifications",
				CurrentValue = true,
				Flag = "AutoBlockNotifications",
				Callback = v1179,
				TextMode = true
			})
			IsFacing = function(p257, p258, p259)
				local v2188 = p258.CFrame.LookVector:Dot((p257.Position - p258.Position).Unit)

				if n3 ~= 1018903073 then
					return v2188 > (p259 or 0.6)
				end

				n3 = 903074225
				n7 += 767
				n6 += 1746
				n1 += 446
				n5 = 20357432
				n40 = 656321931
				n41 += 20
				n39 = 716810798
				n8 = 317373712
				-- (could not be recovered)
			end

			do
				Block = function()
					module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Block")

					if n9 ~= 263112984 then
						return
					end

					n3 = 670856808
					n4 = 438138474
					n39 -= 576
					n9 = 924837875
					n40 = 338726123
					n8 = 322431710
					n41 = 133829059
					n5 = 277823168
					n7 += 565
					-- (could not be recovered)
				end
			end

			do
				Punch = function()
					if n5 == 850990919 then
						module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Punch")

						return
					end

					n40 = 117701542
					n9 += 1870
					n5 = 1018435231
					n1 -= 313
					n6 = 842573300
					n8 += 1984
					n41 -= 582
					n2 = 984764606
					n39 = 821333598
					-- (could not be recovered)
				end
			end

			do
				Clone = function()
					module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Clone")
				end
			end

			local u2189 = false

			Counter = function(p260, p261, p262, p263)
				if p260:GetAttribute("Invincible") == 1 then
					return
				end

				local attribute = Part:GetAttribute("in")
				local attribute2 = v1164.Flags.HitboxDragTech.CurrentValue and Part2:GetAttribute("in")
				local n106 = 323240556
				local n107 = 42852889

				if attribute2 then
					controls:Disable()
					v138("disabled controls")
				end

				local n108 = 263696038
				local v2195 = Random.new()

				if not attribute and not attribute2 then
					return
				end

				if HasAbilityReady("Block") then
					local u2196

					if v1164.Flags.AutoBlockMS.CurrentValue > 0 then
						task.wait(v1164.Flags.AutoBlockMS.CurrentValue)
					end

					task.spawn(function()
						local now2 = tick()

						Block()
						v137("fired block", tick(), tick() - now2)
						p263 = tick()

						repeat
							task.wait()
						until u2189

						local n109 = 211685301

						v138("[autoblock] took", tick() - p263, "to block")

						if n109 == n107 then
							n1 -= 1477
							n108 -= 1284
							n8 += 1558
							n39 -= 801
							n107 = 105836632
							n3 = 44940055
							n41 -= 731
							n106 -= 1072
							n5 = 837152922
						end
					end)
					task.spawn(function()
						local n110 = 687548182
						local now2 = tick()

						while true do
							xpcall(function()
								local n111 = 76382485

								attribute2 = v1164.Flags.HitboxDragTech.CurrentValue and Part2:GetAttribute("in")
								attribute = Part:GetAttribute("in")

								if (v1164.Flags.AntiBait.CurrentValue or attribute2) and tick() - now2 <= t24.HitboxesDuration + 0.2 then
									if v1164.Flags.AntiBait.CurrentValue then
										t24.SpoofedVelocity = t24.AttackHitboxes:CalculateVelocity(LocalPlayer.Character.HumanoidRootPart.Position, p260.HumanoidRootPart.Position) * 1.25 + Vector3.new(v2195:NextNumber(-1.5, 1.5), 0, v2195:NextNumber(-1.5, 1.5))
									else
										t24.SpoofedVelocity = nil

										if Sprinting.Stamina >= 0 and Sprinting.CanSprint and Sprinting.BindsEnabled then
											if n111 < n110 then
												t24:Sprint(true)
											else
												n110 = 78071438
												n40 += 442
												n3 = 652081410
												n5 = 1056745718
												n106 = 925566868
												n41 = 246436434
												n2 = 156780125
											end
										end

										LocalPlayer.Character.Humanoid:MoveTo(p260.HumanoidRootPart.Position)
									end
								end
							end, function(p264)
								v137("error in hdt:", tostring(p264))
								t24.SpoofedVelocity = nil
								controls:Enable()
							end)
							task.wait()

							if t24.HitboxesDuration + 0.2 <= tick() - now2 then
								break
							elseif u2196 then
								break
							end
						end

						t24.SpoofedVelocity = nil

						if t24.HitboxesDuration + 0.2 <= tick() - now2 then
							u2189 = false
							v137("Block unsuccessful")

							if not (n108 < n106) then
								n2 -= 462
								n110 = 443617344
								n8 = 968547664
								n106 = 970772973
								n5 = 380253401
								n41 = 690440908
								n3 = 268201605
								n108 = 510295271
								n107 = 978904600
								n40 += 1829
								-- (could not be recovered)
							end

							controls:Enable()
						end

						if u2196 then
							return
						end
					end)

					local attribute3 = LocalPlayer.Character:GetAttribute("SkinName")

					if attribute3 == "" then
						attribute3 = nil
					end

					local Config12 = require(Survivors2.Guest1337.Config)
					local Config13 = attribute3 and require(Survivors.Guest1337[attribute3].Config) or Config12
					local CurrentOption = v1164.Flags.AutoBlockAims.CurrentOption
					local v2206 = table.find(CurrentOption, "Block")
					local v2207 = table.find(CurrentOption, "Punch")

					xpcall(function()
						repeat
							task.wait()
						until u2189

						tick()
						Random.new()

						while u2189 do
							if SmoothShiftLock.Enabled then
								SmoothShiftLock:ToggleShiftLock()
							end

							if v2206 then
								stareFunc(p260)
							end

							if LocalPlayer.Character.HumanoidRootPart:FindFirstChild(Config13.Sounds and Config13.Sounds.BlockSuccess and Config13.Sounds.BlockSuccess or Config12.Sounds.BlockSuccess) then
								u2196 = true
								u2189 = false

								if v1164.Flags.AutoBlockNotifications.CurrentValue then
									lib:Notify({
										Title = "Auto Block",
										Content = "Successful Block",
										Duration = 7,
										Image = "shield"
									})
								end

								if v1164.Flags.AutoParrySprint.CurrentValue and Sprinting.Stamina >= 0 and Sprinting.CanSprint and Sprinting.BindsEnabled then
									t24:Sprint(true)
								end

								break
							end

							RunService.RenderStepped:Wait()
						end

						v138("Punch success:", u2196)

						if not u2196 or not v1164.Flags.AutoBlockPunch.CurrentValue then
							controls:Enable()
							v138("re-enabled controls 2")

							return true
						end

						repeat
							task.wait()
						until HasAbilityReady("Punch")

						local now2 = tick()
						local HumanoidRootPart = p260.HumanoidRootPart

						while tick() - now2 <= 0.669 do
							Punch()

							if v2207 then
								stareFunc(p260)
							end

							LocalPlayer.Character.Humanoid:MoveTo(p260.HumanoidRootPart.Position)

							local CriticalPunch = Config13.Sounds and Config13.Sounds.CriticalPunch and Config13.Sounds.CriticalPunch or Config12.Sounds.CriticalPunch
							local Parry = Config13.Sounds and Config13.Sounds.Parry and Config13.Sounds.Parry or Config12.Sounds.Parry

							if HumanoidRootPart:FindFirstChild(CriticalPunch) or HumanoidRootPart:FindFirstChild(Parry) then
								if v1164.Flags.AutoBlockNotifications.CurrentValue then
									lib:Notify({
										Title = "Auto Punch",
										Content = "Successful Punch",
										Duration = 7,
										Image = "flame"
									})
								end

								if v1164.Flags.AutoParrySprint.CurrentValue and Sprinting.Stamina >= 0 then
									t24:Sprint(true)
								end

								break
							else
								RunService.RenderStepped:Wait()
							end
						end
					end, function(p265)
						v137("Counter() error:", tostring(p265))

						if n40 < 1068222334 then
							controls:Enable()

							return
						end

						n106 = 234271460
						n3 = 311659064
						n107 = 1067676354
						n5 = 655900701
						n8 += 76
						n40 -= 1845
						n9 = 344689165
						n2 = 388232809
						n108 -= 1092
						-- (could not be recovered)
					end)
					t24.SpoofedVelocity = nil
					controls:Enable()
					v138("re-enabled controls")

					if ShiftLockState and not SmoothShiftLock.Enabled then
						SmoothShiftLock:ToggleShiftLock()
					end
				end

				t24.SpoofedVelocity = nil

				return true
			end
			TableFindThatWorks = function(p266, p267)
				for _, v in p266, nil, nil do
					if v == p267 then
						return v
					end
				end

				return false
			end
			IsFacing2 = function(p268, p269, p270, p271)
				local v2214 = p268.Position - p269.Position

				if v2214.Magnitude > 30 then
					return false
				end

				local Unit = v2214.Unit
				local v2216 = p269.CFrame.LookVector:Dot(Unit)
				local v2217 = math.abs(p269.CFrame.RightVector:Dot(Unit))
				local v2218 = v2216 > (p270 or 0.7)

				if v2218 then
					v2218 = v2217 < (p271 or 0.4)
				end

				return v2218
			end

			local t69 = {}

			GetTrackLength = function(...)
				local v2220 = ...
				local animationId = select(2, ...)
				local Animation = Instance.new("Animation")

				Animation.AnimationId = animationId

				local v2223 = v2220:LoadAnimation(Animation)

				task.wait()

				local Length = v2223.Length

				v2223:Destroy()
				Animation:Destroy()

				return Length
			end
			GetSelectedGhostAnims = function()
				local t70 = {}

				for k, ghostAnimation in pairs(t24.Metas.GhostAnimations) do
					for _, v in ipairs(ghostAnimation) do
						if table.find(v1164.Flags[k .. "GhostAnimation"].CurrentOption, v.Flag:sub(#k + 1, #v.Flag)) then
							t70[#t70 + 1] = k .. v.Flag
						end
					end
				end

				return t70
			end
			TrackAnimations = function(x, K)
				local i = x and x:WaitForChild("HumanoidRootPart", 7)

				if (not i) then
					return
				end

				local F = i and x:WaitForChild("Humanoid", 7)

				if (not F) then
					return
				end

				local J = F:WaitForChild("Animator", 5)

				if (not J) then
					return
				end

				local F = x == LocalPlayer.Character
				local j = x:GetAttribute("SkinName")

				if j == "" then
					j = nil
				end

				local j = t24:GetConfig(x)
				local p = t24:GetSkinConfig(x)
				local C = require(Assets[x.Parent.Name][x.Name].Behavior)
				local V = j

				t24.Disconnectables[#t24.Disconnectables + 1] = J.AnimationPlayed:Connect(function(z)
					local Q = t24.Metas.AttackIdToName[z.Animation.AnimationId]

					task.spawn(function()
						if F and v1164.Flags.GhostAnims.CurrentValue then
							for v, w in pairs(t24.Metas.GhostAnimations) do
								if x.Name == v then
									for k, k in ipairs(w) do
										if table.find(GetSelectedGhostAnims(), v .. k.Flag) then
											for v, v in ipairs(k.AnimationKeys) do
												local w = p and p.Animations and p.Animations[v]
												local l = w or V.Animations[v]

												if not l then
													v137("Ghost animations:", v, "nil in", k.Flag)

													continue
												end

												if l == z.Animation.AnimationId then
													GhostAnim(z, k.Method)
												end
											end
										end
									end
								end
							end

							if IsKiller() and v1164.Flags.GhostM1.CurrentValue then
								local v = (p and p.Animations) and p.Animations or V.Animations
								local V = "Slash"

								if x.Name == "Noli" then
									V = "Stab"
								elseif x.Name == "c00lkidd" then
									V = "Attack"
								elseif x.Name == "Azure" then
									V = (x:GetAttribute("FootstepOverride") == "GolemFootsteps") and "GolemSlash" or "Slash"
								end

								local w = v[V]

								if not w then
									return v137("Ghost animations: M1 nil in", x.Name .. " (skin: \"" .. tostring(x:GetAttribute("SkinName")) .. "\")")
								end

								if w == z.Animation.AnimationId then
									z:Stop()
								end
							end
						end
					end)

					local V = { "rbxassetid://127802146383565", "rbxassetid://82691533602949", "rbxassetid://128943791000974", "rbxassetid://122604262087779", "rbxassetid://139901321415812", "rbxassetid://130355934640695" }

					if F and u1205 and table.find(V, z.Animation.AnimationId) then
						v137("stopping generator animation")

						return z:Stop()
					end

					if F and z.Animation.AnimationId == require(Survivors2["007n7"].Config).Animations.c00lguiStart then
						obj.c00lguiAnimationTrack = z

						return v138("c00lgui track!")
					end

					task.spawn(function()
						local W = LocalPlayer.Character

						if F and table.find(t24.Metas.AnimationMetas.GeneralAttacks, z.Animation.AnimationId) then
							local P = 0
							local H = tick()

							local function V(v, v)
								return P >= v and P <= v + t24.HitboxesDuration
							end

							local v = 0

							while W.Parent and tick() - H <= z.Length and v1164.Flags.HitboxExpander.CurrentValue and RunService.Heartbeat:Wait() do
								local w = W:FindFirstChild("HumanoidRootPart")

								if w and (tostring(W) == "Shedletsky" or IsKiller()) then
									local k = t24.Metas.AttackIdToWindup[z.Animation.AnimationId] or -0.01

									if k < 0 then
										v137("that aint supposed to happen")
									end

									P = tick() - H

									local H = V(z, k) and not W.FOVMultipliers:FindFirstChild("HitRegistered")

									if not H then
										local H = math.atan((math.random() * 2 - 1) * 0.2 / 10)

										w.CFrame = w.CFrame * CFrame.Angles(0, H - v, 0)
										v = H

										continue
									end

									local H
									local V = v1164.Flags.HitboxExpanderRange.CurrentValue
									local l = v1164.Flags.HitboxExpandMode.CurrentOption[1]

									function scanGroup(O, t)
										local t = v1164.Flags.HitboxExpanderMode.CurrentOption[1]
										local h = math.huge
										local _ = w.CFrame.LookVector

										for L, L in ipairs(O) do
											local O = L:FindFirstChild("HumanoidRootPart")
											local M = L:FindFirstChild("Humanoid")

											if L ~= W and O and M and M.Health > 0 then
												local u = O.Position - w.Position
												local O = u.Magnitude

												if O > 0 and O <= V then
													local U

													if t == "Facing" then
														U = -_:Dot(u.Unit)
													elseif t == "Nearest" then
														U = O
													else
														U = M.Health
													end

													if U < h then
														h = U
														H = L
													end
												end
											end
										end
									end

									if IsKiller() then
										scanGroup(t24.Survivors)
									else
										H = t24.MainKiller
									end

									if H or l ~= "Dynamic" then
										local O = t24.AttackHitboxes[W.Name].offset.Z
										local t = t24.AttackHitboxes[W.Name].size.Z

										V = V / t

										local W = w.CFrame
										local h = (P - k) / t24.HitboxesDuration
										local P

										if l == "Dynamic" then
											local k = H.QueryHitbox.CFrame
											local l = H.Humanoid:GetMoveVelocity() / 3.5
											local H = v1164.Flags.HitboxExpanderAutoRotate.CurrentValue
											local _ = H and k or (W.Rotation + k.Position)

											P = _ + l - _.LookVector * (O / 2)
										else
											P = W + ((W.LookVector * (V)) * (h * t))
										end

										w.CFrame = P

										local P = coroutine.running()

										RunService:BindToRenderStep("HitboxExpander", Enum.RenderPriority.First.Value, function()
											RunService:UnbindFromRenderStep("HitboxExpander")

											local H = math.atan((math.random() * 2 - 1) * 0.2 / 10)

											w.CFrame = W * CFrame.Angles(0, H - v, 0)
											v = H
											task.spawn(P)
										end)
										coroutine.yield()
									end
								end
							end
						end
					end)

					local W = C.Abilities

					task.spawn(function()
						if table.find(t24.Metas.AnimationMetas.TwoTimeStuff, z.Animation.AnimationId) and x.Name == "TwoTime" then
							local W = 0
							local P = tick()

							if v1164.Flags.Antibackstab.CurrentValue and IsKiller() and not t24.TargetTwoTime then
								while z.IsPlaying and RunService.RenderStepped:Wait() do
									if (LocalPlayer.Character.HumanoidRootPart.Position - x.HumanoidRootPart.Position).magnitude <= 23 then
										lib:Notify({ Title = "Anti backstab", Content = "TwoTime tried to stab you", Duration = 6, Image = "shield" })
										t24.TargetTwoTime = x
										task.delay(2.381, function()
											t24.TargetTwoTime = nil
										end)
										task.spawn(function()
											while t24.TargetTwoTime and LocalPlayer.Character and t24.GameState == 1 and task.wait() do
												stareFunc(x, true)
											end

											t24.TargetTwoTime = nil
										end)
									end
								end

								return
							elseif F then
								local function r(H, V)
									local C = H.HumanoidRootPart.Position
									local v = V.HumanoidRootPart.CFrame
									local w = v.LookVector * -1.0
									local k = RaycastParams.new()

									k.FilterType = Enum.RaycastFilterType.Exclude
									k.FilterDescendantsInstances = { H, V }

									for H = -1.0, 1 do
										for V = -2.0, 2 do
											local l = v * Vector3.new(H, V, 0.55)

											if w:Dot(C - l) > math.cos(math.rad(90)) then
												if not workspace:Raycast(C, l - C, k) then
													return true
												end
											end
										end
									end

									return false
								end

								task.spawn(function()
									xpcall(function()
										local H = true

										while tick() - P <= z.Length and RunService.Heartbeat:Wait() do
											W = tick() - P

											local V = t24.MainKiller

											if v1164.Flags.GlidestabHelper.CurrentValue and V and V:FindFirstChild("HumanoidRootPart") then
												local C = LocalPlayer.Character.HumanoidRootPart
												local v = r(LocalPlayer.Character, V)

												if v and H then
													return
												end

												H = false

												if v and (C.Position - V.HumanoidRootPart.Position).magnitude <= 14 then
													local r = C.CFrame
													local H = C.Velocity
													local v = V.QueryHitbox.CFrame
													local w = V.Humanoid:GetMoveVelocity()
													local V = w / 3.5

													if not t24:HasHitReg() then
														C.Velocity = Vector3.zero
														C.CFrame = (v + V) - (v.LookVector * 5)

														local V = coroutine.running()

														RunService:BindToRenderStep("BackstabAim", Enum.RenderPriority.First.Value, function()
															RunService:UnbindFromRenderStep("BackstabAim")
															C.Velocity = H
															C.CFrame = CFrame.new(r.Position, v.LookVector)
															task.spawn(V)
														end)
														coroutine.yield()
													end
												end
											end
										end
									end, function(r)
										v137("error in backstab aim:", tostring(r))
									end)
								end)

								local r = v1164.Flags.DaggerLungeMul.CurrentValue
								local H = v1164.Flags.DaggerCrouchLungeMul.CurrentValue
								local V = x.HumanoidRootPart

								if v1164.Flags.BackstabExploit.CurrentValue and t24.MainKiller then
									while tick() - P <= z.Length and not t24:HasHitReg() and t24.MainKiller and t24.MainKiller.Parent and RunService.Heartbeat:Wait() do
										if W > (0.45 + LocalPlayer:GetNetworkPing()) then
											break
										end

										if W >= (0.2 - LocalPlayer:GetNetworkPing()) then
											local C = V.CFrame
											local v = V.AssemblyLinearVelocity
											local w = t24.MainKiller.QueryHitbox.CFrame
											local k = t24.MainKiller.Humanoid:GetMoveVelocity()
											local l = k / 3.5

											V.CFrame = (w + l) - (w.LookVector * 7)
											V.AssemblyLinearVelocity = Vector3.zero

											local w = coroutine.running()

											RunService:BindToRenderStep("BackstabExploit", Enum.RenderPriority.First.Value, function()
												RunService:UnbindFromRenderStep("BackstabExploit")
												V.CFrame = C
												V.AssemblyLinearVelocity = v
												task.spawn(w)
											end)
											coroutine.yield()
										end
									end

									return
								end

								if (Q == "Stab" and r > 1) or H > 1 then
									local C = 0

									while tick() - P <= z.Length and C < 1 and RunService.Heartbeat:Wait() do
										local P = Q == "Stab" and (z.Length - (0.25 + t24.HitboxesDuration)) or 0.6

										if W >= 0.25 then
											C = W / P

											if not xpcall(function()
												local W = V.Position
												local P = ((Q == "Stab" and r or H) * C) * (Q == "Stab" and 10 or 30)
												local r = V.CFrame.LookVector
												local H = W + (r * P)
												local W = V.CFrame

												V.CFrame = W + (r * P)

												local P = coroutine.running()

												RunService:BindToRenderStep("LungeRestore", Enum.RenderPriority.First.Value, function()
													RunService:UnbindFromRenderStep("LungeRestore")
													V.CFrame = W
													task.spawn(P)
												end)
												coroutine.yield()
											end, function(W)
												v137("error in dagger lunge multiplier:", tostring(W))
											end) then
												break
											end
										end
									end

									return
								end
							end
						end
					end)
					task.spawn(function()
						if x.Parent ~= Killers3 then
							return
						end

						if not v1164.Flags.StunSpy.CurrentValue then
							return
						end

						local W = (p and p.Animations and p.Animations.Stunned and p.Animations.Stunned.Start) and p.Animations.Stunned.Start or j.Animations.Stunned.Start
						local n = (p and p.Animations and p.Animations.Stunned and p.Animations.Stunned.End) and p.Animations.Stunned.End or j.Animations.Stunned.End
						local P = GetTrackLength(J, n)

						if z.Animation.AnimationId == W then
							local W = 0
							local n = Players[x:GetAttribute("RecentAttacker")].Character

							if n.Name == "Shedletsky" then
								W = Config3.SlashStunTime
							elseif n.Name == "TwoTime" then
								W = (tick() - (n:GetAttribute("LastInvisibilityTime") or 0) <= 3) and 3.5 or 2
							elseif n.Name == "Guest1337" and (x.HumanoidRootPart:FindFirstChild("rbxassetid://13471740561") or x.HumanoidRootPart:FindFirstChild("rbxassetid://116900970230089")) then
								W = Config2.ParryStunTime
							elseif n.Name == "Chance" then
								W = 2
							end

							if W == 0 then
								return v137("cant figure out what stunned")
							end

							if x.Name == "Sixer" then
								W = W * 0.75
							end

							W = W + P

							local Y = Instance.new("BillboardGui")

							Y.Parent = x.Head
							Y.AlwaysOnTop = true
							Y.StudsOffset = Vector3.new(0, 3, 0)
							Y.Size = UDim2.new(1, 40, 1, 0)
							Y.Name = "stunspybb"
							Y.ResetOnSpawn = false

							local n = Instance.new("TextLabel")

							n.Parent = Y
							n.Size = UDim2.new(1, 0, 1, 0)
							n.TextSize = 18
							n.Font = Enum.Font.RobotoMono
							n.BackgroundTransparency = 1
							n.TextColor3 = Color3.fromRGB(212, 0, 0)
							n.TextStrokeTransparency = 0
							n.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

							local P = tick()

							while W - (tick() - P) > 0 do
								n.Text = string.format("[STUNNED] %.2fs", W - (tick() - P))
								task.wait()
							end

							Y:Destroy()

							return
						end
					end)

					if Q == "EnragedStart" then
						x:SetAttribute("enraged", true)
						v137("slasher enraged")
						task.spawn(function()
							local Y = tick()

							while x:GetAttribute("enraged") and not u48 and task.wait() do
								if tick() - Y >= j.EnragedTime then
									v137("slasher stopped enraged naturally")
									x:SetAttribute("enraged", false)
								end
							end
						end)
					elseif Q == "EnragedBehead" or Q == "EnragedSlash" or Q == "GashingWoundStart" then
						x:SetAttribute("enraged", false)
					end

					local Y = (p and p.Animations and p.Animations.Block) and p.Animations.Block or j.Animations.Block
					local Y = (p and p.Animations and p.Animations.Charge) and p.Animations.Charge or j.Animations.Charge
					local W = (p and p.Sounds and p.Sounds.Parry) and p.Sounds.Parry or j.Sounds.Parry

					if Y == z.Animation.AnimationId and F then
						t24.IsCharging = true
						t24.Disconnectables[#t24.Disconnectables + 1] = z.Destroying:Once(function()
							t24.IsCharging = false
						end)
						t24.Disconnectables[#t24.Disconnectables + 1] = z.Stopped:Once(function()
							t24.IsCharging = false
						end)
						task.spawn(function()
							if v1164.Flags.GuestNoclip.CurrentValue then
								EnableNoclip()

								repeat
									task.wait()
								until not t24.IsCharging or t24.GameState ~= 1

								DisableNoclip()
							end
						end)
						task.spawn(function()
							if t54["Charge"] then
								while (t24.IsCharging and t24.GameState == 1 and task.wait()) do
									local Y = GetClosestKiller(v1164.Flags.ChargeAimbotThreshold.CurrentValue)

									if Y then
										StartAimbotting(Y, function()
											return t24.IsCharging and t24.GameState == 1
										end, nil, nil, true)
									end
								end
							end
						end)
						task.spawn(function()
							if v1164.Flags.Gen1337StopsDoingGeneratorsAndGetsInTheCockpit.CurrentValue then
								workspace.Gravity = 0
								LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero

								local Y = Instance.new("LinearVelocity")

								Y.Parent = LocalPlayer.Character.HumanoidRootPart
								Y.RelativeTo = Enum.ActuatorRelativeTo.World
								Y.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
								Y.Attachment0 = LocalPlayer.Character.HumanoidRootPart.RootAttachment
								Y.ForceLimitsEnabled = false

								repeat
									Y.VectorVelocity = workspace.CurrentCamera.CFrame.LookVector * j.ChargingSpeed
									task.wait()
								until not t24.IsCharging or t24.GameState ~= 1

								Y:Destroy()
								workspace.Gravity = 196.2
							end
						end)
					end

					task.spawn(function()
						if x.Name == "Guest1337" then
							if TableFindThatWorks(t69, z.Animation.AnimationId) then
								if F then
									u2189 = true
								end

								x:SetAttribute("isblocking", true)
								t24.Disconnectables[#t24.Disconnectables + 1] = z.Stopped:Once(function()
									x:SetAttribute("isblocking", false)

									if F then
										u2189 = false
									end
								end)
								t24.Disconnectables[#t24.Disconnectables + 1] = z.Destroying:Once(function()
									x:SetAttribute("isblocking", false)

									if F then
										u2189 = false
									end
								end)
								task.wait(z.Length)
								x:SetAttribute("isblocking", false)

								if F then
									u2189 = false
								end
							end
						end
					end)

					if K and IsKiller() and (LocalPlayer.Character.Name == "Slasher" or LocalPlayer.Character.Name == "JohnDoe") then
						if not table.find(t24.Metas.AnimationMetas.SentinelAnimations, z.Animation.AnimationId) then
							return
						end

						local Y = LocalPlayer.Character.HumanoidRootPart
						local W = x.HumanoidRootPart

						if v1164.Flags.QueryAutoblock.CurrentValue then
							Y = LocalPlayer.Character.QueryHitbox
							W = x.QueryHitbox
						end

						local n = Instance.new("Part")

						n.Parent = workspace
						n.Anchored = true
						n.CanCollide = false
						n.Transparency = 0.5
						n.Color = Color3.fromRGB(255, 0, 0)
						n.Material = Enum.Material.Air

						while z.IsPlaying do
							if (v1164.Flags.AutoParryToggle.CurrentValue or v1164.Flags.AutoUse404Error.CurrentValue) and (HasAbilityReady("RagingPace") or HasAbilityReady("404Error")) then
								if LocalPlayer.Character.Name == "Slasher" and not v1164.Flags.AutoParryToggle.CurrentValue then
									return
								end

								if LocalPlayer.Character.Name == "JohnDoe" and not v1164.Flags.AutoUse404Error.CurrentValue then
									return
								end

								local P = (Y.Position - W.Position).Magnitude
								local A = v1164.Flags.NGAutoBlockHitboxCheck.CurrentValue

								if (A or P <= v1164.Flags.RagingPaceRange.CurrentValue) and (not v1164.Flags.RagingPaceFaceCheck.CurrentValue or IsFacing2(Y, W, 0.707, 1)) and (not A or (function()
									local Y = t24.AttackHitboxes[x.Name]

									if not Y.fake then
										local W = (v1164.Flags.QueryAutoblock.CurrentValue and x.QueryHitbox or x.HumanoidRootPart).CFrame
										local P = W:ToWorldSpace(CFrame.new(-Y.offset))
										local P = LocalPlayer.Character.HumanoidRootPart
										local A = v1164.Flags.QueryAutoblock.CurrentValue and LocalPlayer.Character.QueryHitbox or P
										local r = Y.size + ((P.Size / 2) * (P.AssemblyLinearVelocity.magnitude / 10))

										n.Size = r
										n.CFrame = W + (W.LookVector * (r.Z / 2))

										return arePartsTouching(n, A)
									end
								end)()) then
									if v1164.Flags.AutoBlockMS.CurrentValue > 0 then
										task.wait(v1164.Flags.AutoBlockMS.CurrentValue)
									end

									module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", LocalPlayer.Character.Name == "JohnDoe" and "404Error" or "RagingPace")
								end
							end

							RunService.RenderStepped:Wait()
						end

						n:Destroy()

						return
					end

					local Y
					local W

					if (table.find(t24.WalkspeedOverrideAnimations, z.Animation.AnimationId)) then
						t24.UsingWalkspeedOverride = true
						Y = true
						W = true
						task.spawn(function()
							if (IsKiller() and v1164.Flags.NoclipOverride.CurrentValue) then
								EnableNoclip()

								repeat
									task.wait()
								until not IsKiller() or not t24.UsingWalkspeedOverride

								DisableNoclip()
							end
						end)
						task.spawn(function()
							if (IsKiller() and t54["WS Override"]) then
								while (t24.UsingWalkspeedOverride and task.wait()) do
									local n = GetClosestSurvivor(v1164.Flags.WalkspeedOverrideThreshold.CurrentValue)

									if n then
										StartAimbotting(n, function()
											return IsKiller() and t24.UsingWalkspeedOverride
										end, nil, nil, true)
									end
								end
							end
						end)
					end

					if (table.find(t24.WalkspeedOverrideEndedAnims, z.Animation.AnimationId)) then
						t24.UsingWalkspeedOverride = false
						t24.LungingWalkspeedOverride = false
					end

					if (table.find(t24.WalkspeedOverrideLoopAnims, z.Animation.AnimationId)) then
						t24.Disconnectables[#t24.Disconnectables + 1] = z.Destroying:Once(function()
							t24.UsingWalkspeedOverride = false
							t24.LungingWalkspeedOverride = false
						end)
						t24.Disconnectables[#t24.Disconnectables + 1] = z.Stopped:Once(function()
							t24.UsingWalkspeedOverride = false
							t24.LungingWalkspeedOverride = false
						end)
						t24.LungingWalkspeedOverride = true
					end

					task.spawn(function()
						if v1164.Flags.RevealTrajectory.CurrentValue then
							local n = "Swords"
							local P = "Shockwave"

							if (x.Name == "1x1x1x1") then
								local A = (t24:GetSkinConfig(x) or t24:GetConfig(x)).Instances or {}

								n = A.SwordsTemplate and A.SwordsTemplate.Name or n
								P = A.ShockwaveTemplate and A.ShockwaveTemplate.Name or P
							end

							if (table.find(t24.Metas.AnimationMetas.RevealTrajectory, z.Animation.AnimationId) or Y) then
								local A = Instance.new("Part")

								A.Parent = workspace
								A.Anchored = true
								A.CanCollide = false
								A.Transparency = 0.7
								A.Material = Enum.Material.Neon
								A.Color = Color3.fromRGB(255, 0, 0)

								local r = false
								local B = false
								local e = (Q == "MassInfection" and 5) or 2
								local d
								local G = 0
								local H = x.HumanoidRootPart.Position
								local R = x.HumanoidRootPart.CFrame.LookVector
								local m
								local b = true

								task.spawn(function()
									local c = tick()
									local V, K, F, J = 6, 6, 0, 1000

									while tick() - c <= e do
										local c = workspace.Map.Ingame:FindFirstChild(P)
										local P = workspace.Map.Ingame:FindFirstChild(n)
										local n = c or P

										if (x.Name == "1x1x1x1" and n) then
											if not m then
												m = x.HumanoidRootPart.Position
											end

											local j = n:GetPivot()

											d = true

											if (Q == "MassInfection" and c) then
												A.CFrame = CFrame.new(m, j.Position) * CFrame.new((K - V) / 2, 0, -(J - F) / 2)
												r = true
											end

											if (Q == "Entanglement" and P) then
												A.CFrame = CFrame.new(m, j.Position) * CFrame.new((K - V) / 2, 0, -(J - F) / 2)
												r = true
											end

											if (r and not c) then
												v138("shockwave deleted")

												break
											end

											if (B and not P) then
												v138("swords deleted")

												break
											end
										end

										RunService.RenderStepped:Wait()
									end
								end)
								task.delay(1, function()
									if Q == "Uppercut" then
										b = false
									end
								end)

								while (z.IsPlaying or t24.UsingWalkspeedOverride) and not d do
									local n = W and (Config9.WalkspeedOverrideSpeed) or 1000
									local P, r, B = 6, 6, 0

									if (Q == "Entanglement" or Q == "Uppercut") then
										P, r = 3, 3
									end

									if (Q == "CorruptEnergy") then
										n = Config11.DistanceBetweenSpikes * Config11.SpikeAmount
									end

									if (Q == "Uppercut") then
										n = 113.846
									end

									if (W) then
										P, r = 4, 4
									end

									local d = x.HumanoidRootPart.Position
									local o = d - H
									local g = o.Magnitude > 0.01 and Vector3.new(o.X, 0, o.Z).Unit or R

									R = g

									if (W and t24.LungingWalkspeedOverride) then
										G = G + Vector3.new(o.X, 0, o.Z).Magnitude
									end

									H = d

									local o = math.max(n - G, 0)

									if (b) then
										if (W and t24.LungingWalkspeedOverride) then
											local G = CFrame.new(d, d + g)

											A.CFrame = G * CFrame.new((r - P) / 2, 0, -(o - B) / 2)
											A.Size = Vector3.new(P + r, 10, o + B)
										else
											A.CFrame = x.HumanoidRootPart.CFrame * CFrame.new((r - P) / 2, 0, -(n - B) / 2)
											A.Size = Vector3.new(P + r, 10, n + B)
										end
									end

									if (Y and not t24.UsingWalkspeedOverride) then
										break
									end

									if (Q == "Uppercut" and not x.HookModel.Beam.Enabled) then
										break
									end

									RunService.RenderStepped:Wait()
								end

								A.Color = Color3.fromRGB(0, 0, 255)
								TweenService:Create(A, TweenInfo.new(e, Enum.EasingStyle.Linear), { Transparency = 1 }):Play()

								if (not W and Q ~= "Uppercut") then
									task.wait(e)
								end

								A:Destroy()
							end
						end
					end)

					local x = GetClosestKiller(999)

					if (x and not IsKiller() and table.find(t24.Metas.AnimationMetas.AutoblockAnimations, z.Animation.AnimationId) and (not v1164.Flags.AutoblockSounds.CurrentValue or x.Name == "Slasher") and LocalPlayer.Character.Name == "Guest1337") then
						local Y = x:FindFirstChild("HumanoidRootPart")
						local W = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

						if v1164.Flags.QueryAutoblock.CurrentValue then
							W = LocalPlayer.Character:FindFirstChild("QueryHitbox")
							Y = x:FindFirstChild("QueryHitbox")
						end

						if not W or not Y then
							return
						end

						local n = (W.Position - Y.Position).Magnitude
						local Y = tick()

						while z.IsPlaying and tick() - Y <= t24.HitboxesDuration do
							if (HasAbilityReady("Block") and v1164.Flags.AutoBlockToggle.CurrentValue) then
								if Counter(x, i, z, tick()) then
									break
								end

								task.wait()
							end

							RunService.RenderStepped:Wait()
						end
					end
				end)
			end

			local MainKiller = t24.MainKiller

			if MainKiller then
				TrackAnimations(MainKiller)

				if MainKiller:GetAttribute("Username") ~= LocalPlayer.Name then
					AddBoxEsp(MainKiller, "KillerEspColor", "KillerEsp")
					AddHighlightEsp(MainKiller, "KillerEspColor", "HIFORSAKEN", true)
					v1816(MainKiller:FindFirstChild("HumanoidRootPart"), "KillerEspColor", "KillerEsp")
				end
			end

			do
				t24.Disconnectables[#t24.Disconnectables + 1] = Killers3.ChildAdded:Connect(function(child)
					if child.Name == "FakeNoli" then
						return
					end

					TrackAnimations(child)

					if not child:GetAttribute("Username") or child:GetAttribute("Username") == LocalPlayer.Name then
						return
					end

					AddBoxEsp(child, "KillerEspColor", "KillerEsp")
					AddHighlightEsp(child, "KillerEspColor", "HIFORSAKEN", true)
					v1816(child:WaitForChild("HumanoidRootPart"), "KillerEspColor", "KillerEsp")
				end)
			end

			for _, v in t24.Survivors, nil, nil do
				TrackAnimations(v, true)

				if v:GetAttribute("Username") ~= LocalPlayer.Name then
					AddBoxEsp(v, "SurvivorEspColor", "SurvivorEsp", true)
					AddHighlightEsp(v, "SurvivorEspColor", "HIFORSAKEN", true)
					v1816(v:FindFirstChild("HumanoidRootPart"), "SurvivorEspColor", "SurvivorEsp")
				end
			end

			t24.Disconnectables[#t24.Disconnectables + 1] = Survivors3.ChildAdded:Connect(function(child)
				TrackAnimations(child, true)

				if child:GetAttribute("Username") == LocalPlayer.Name then
					return
				end

				AddBoxEsp(child, "SurvivorEspColor", "SurvivorEsp", true)
				AddHighlightEsp(child, "SurvivorEspColor", "HIFORSAKEN", true)

				local v2390 = child

				v1816(child:WaitForChild("HumanoidRootPart"), "SurvivorEspColor", "SurvivorEsp")

				return
				-- (could not be recovered)
			end)

			for _, v in workspace.Map.Ingame:GetChildren() do
				if v.Name == "PizzaDeliveryRig" or v.Name == "1x1x1x1Zombie" then
					AddBoxEsp(v, "EntityEspColor", "EntityEsp")

					if v1164.Flags.EntityEsp.CurrentValue then
						AddHighlightEsp(v, "EntityEspColor", "HIFORSAKEN", true)
					end

					v1816(v:FindFirstChild("HumanoidRootPart"), "EntityEspColor", "EntityEsp")
				end
			end

			local n112 = 0

			t24.Disconnectables[#t24.Disconnectables + 1] = workspace.Map.Ingame.ChildAdded:Connect(function(x)
				(function()
					if x.Name == "007n7" then
						local e = x:WaitForChild("HumanoidRootPart")

						if not e then
							return v137("OMFG", x.PrimaryPart)
						end

						AddBoxEsp(x, "CloneEspColor", "CloneEsp")

						if v1164.Flags.CloneEsp.CurrentValue then
							AddHighlightEsp(x, "CloneEspColor", "HIFORSAKEN", true)
						end

						v1816(e, "CloneEspColor", "CloneEsp")
						x:SetAttribute("clone", true)

						local e = x:GetAttribute("Username")
						local d = Players[e].Character.HumanoidRootPart

						if _G.UNLOCK_CD_ESP and v1164.Flags.CooldownEsp.CurrentValue then
						end

						if e == LocalPlayer.Name then
							t24.Has007n7Clone = x
							t24.Disconnectables[#t24.Disconnectables + 1] = x.Destroying:Once(function()
								t24.Has007n7Clone = nil
							end)
						else
							if (v1164.Flags.AntiClone007n7.CurrentValue) then
								x:Destroy()
								v137("destroyed a fake clone")

								if not v1164.Flags.Antis_EnableNotifications.CurrentValue or t24.GameState ~= 1 then
									return
								end

								lib:Notify({ Title = `Anti Clone`, Content = `Deleted a 007n7 clone`, Duration = 6, Image = "ban" })
							end
						end
					end
				end)();
				(function()
					if (IsKiller() and x.Name == "Voidstar") then
						local s

						s = RunService.Heartbeat:Connect(function()
							if (v1164.Flags.AutoNova.CurrentValue and tick() - n112 >= 1 and (function()
								for P, P in ipairs(t24.Survivors) do
									if (P:FindFirstChild("HumanoidRootPart") and P ~= LocalPlayer.Character) then
										if ((x.Position - P.HumanoidRootPart.Position).Magnitude <= (Config6.NovaExplosionRadius / 2) - 3) then
											return true
										end
									end
								end
							end)()) then
								v138("triggering nova")
								n112 = tick()
								module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Nova")
							end
						end)
						t24.Disconnectables[#t24.Disconnectables + 1] = x:GetPropertyChangedSignal("Parent"):Once(function()
							s:Disconnect()
						end)
					end
				end)()

				if (x.Name ~= "PizzaDeliveryRig" and x.Name ~= "1x1x1x1Zombie") then
					return
				end

				AddBoxEsp(x, "EntityEspColor", "EntityEsp")

				if v1164.Flags.EntityEsp.CurrentValue then
					AddHighlightEsp(Entity, "EntityEspColor", "HIFORSAKEN", true)
				end

				v1816(x:WaitForChild("HumanoidRootPart"), "EntityEspColor", "EntityEsp")
			end)

			do
				IsAiming = function(p272, p273, p274, p275)
					local v2400 = p273.Unit:Dot((p274 - p272).Unit)

					if n5 ~= n2 then
						return v2400 >= p275
					end

					n4 += 2024
					n40 += 306
					n8 = 538711404
					n7 += 1748
					n5 += 1827
					n41 = 646819023
					n9 += 644
					n39 = 773961801
					n2 = 885925492
					-- (could not be recovered)
				end
			end

			VoidRushIsDangerous = function()
				if t24.GameState ~= 1 then
					return
				end

				local MainKiller2 = t24.MainKiller

				if MainKiller2 then
					local v2402 = MainKiller2

					if MainKiller2:GetAttribute("VoidRushState") == "Dashing" then
						local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

						v2402 = MainKiller2

						local HumanoidRootPart2 = MainKiller2:FindFirstChild("HumanoidRootPart")

						if v1164.Flags.QueryAutoblock.CurrentValue then
							HumanoidRootPart = LocalPlayer.Character.QueryHitbox
							HumanoidRootPart2 = MainKiller2.QueryHitbox
						end

						if HumanoidRootPart2 and HumanoidRootPart then
							return IsFacing2(HumanoidRootPart, HumanoidRootPart2), MainKiller2
						end
					end
				end
			end
			OverrideIsDangerous = function()
				if t24.GameState ~= 1 then
					return
				end

				if LocalPlayer.Character then
					local Character_3 = LocalPlayer.Character
					local v2406 = Character_3
					local FindFirstChild = Character_3.FindFirstChild
					local v2408 = FindFirstChild
					local humanoidRootPart = FindFirstChild(v2406, "HumanoidRootPart")

					if humanoidRootPart then
						local MainKiller2 = t24.MainKiller
						local HumanoidRootPart = MainKiller2

						if HumanoidRootPart then
							v2408 = MainKiller2
							HumanoidRootPart = MainKiller2:FindFirstChild("HumanoidRootPart")
						end

						local v2412 = HumanoidRootPart

						if not HumanoidRootPart then
							return
						end

						if v1164.Flags.QueryAutoblock.CurrentValue then
							humanoidRootPart = LocalPlayer.Character:FindFirstChild("QueryHitbox")
							v2408 = MainKiller2
							HumanoidRootPart = MainKiller2:FindFirstChild("QueryHitbox")
						end

						if not HumanoidRootPart or not humanoidRootPart then
							return
						end

						if MainKiller2 and t24.UsingWalkspeedOverride and MainKiller2.Name == "c00lkidd" and (HumanoidRootPart.Position - humanoidRootPart.Position).magnitude <= 30 then
							if IsFacing2(humanoidRootPart, HumanoidRootPart) then
								return true, MainKiller2
							end

							local LinearVelocity = v2412:FindFirstChild("LinearVelocity")
							local LineDirection = LinearVelocity and LinearVelocity.LineDirection

							if LineDirection then
								return IsAiming(HumanoidRootPart.Position, LineDirection, humanoidRootPart.Position, 0.906), MainKiller2
							end
						end

						return
					end
				end
			end
			Self:CreateSection("Player related settings")
			NeedToEscapeOrReel = function()
				local QTE = TemporaryUI:FindFirstChild("QTE")

				if n39 == 622646567 then
					return QTE ~= nil and QTE:FindFirstChild("Zone3") == nil
				end

				n7 += 2003
				n1 -= 855
				n3 = 365706661
				n8 = 263914122
				n5 = 187995504
				n40 -= 621
				n39 += 1413
				n41 -= 1811
				n4 += 690
				-- (could not be recovered)
			end
			Check = function()
				for _, v in TemporaryUI:GetChildren() do
					if n40 ~= 1015842633 then
						n39 -= 1115
						n5 += 1829
						n41 += 832
						n8 -= 604
						n4 = 975822106
						n3 = 897765356
						n7 = 165773791
						n40 -= 1633
						n1 -= 1416
					elseif v.Name == "1x1x1x1Popup" then
						v:Destroy()
					end
				end
			end
			SuperSpecialFemboyNotifyOWO = function(...)
				if not v1164.Flags.SpectateDetectorNotifications.CurrentValue then
					return
				end

				if n8 == 69055488 then
					return lib:Notify(...)
				end

				n5 -= 743
				n7 -= 1832
				n2 += 702
				n41 -= 1956
				n39 -= 668
				n8 -= 582
				n40 += 1627
				n4 = 963470829
				n3 = 601011132
				-- (could not be recovered)
			end

			do
				local ScreenGui4 = Instance.new("ScreenGui")

				ScreenGui4.Name = "SpectatorsGui"
				ScreenGui4.ResetOnSpawn = false
				ScreenGui4.IgnoreGuiInset = true
				ScreenGui4.Parent = gethui()

				local TextLabel = Instance.new("TextLabel")

				TextLabel.BackgroundTransparency = 1
				TextLabel.AnchorPoint = Vector2.new(0.5, 1)
				TextLabel.Position = UDim2.new(0.5, 0, 1, -20)
				TextLabel.Size = UDim2.new(0, 0, 0, 20)
				TextLabel.AutomaticSize = Enum.AutomaticSize.X
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.TextSize = 14
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.Visible = false
				TextLabel.Parent = ScreenGui4
				UpdateSpectators = function()
					local spectators = GetSpectators()
					local CurrentValue = v1164.Flags.SpectateDetector.CurrentValue

					if CurrentValue then
						local v2422 = spectators ~= ""

						TextLabel.Visible = spectators ~= ""
						TextLabel.Text = "Spectators: " .. spectators

						return
					end

					TextLabel.Visible = CurrentValue
					TextLabel.Text = "Spectators: " .. spectators
				end
			end

			Self:CreateToggle({
				Name = "Spectate detector",
				CurrentValue = true,
				Flag = "SpectateDetector",
				Callback = UpdateSpectators()
			})
			Self:CreateToggle({
				Name = "└── Notify",
				CurrentValue = true,
				Flag = "SpectateDetectorNotifications",
				Callback = v1179,
				TextMode = true
			})

			do
				local t71 = {}

				track_spectate = function(p276)
					t24.Disconnectables[#t24.Disconnectables + 1] = p276:GetAttributeChangedSignal("SpectateTargetUserId"):Connect(function()
						UpdateSpectators()

						local v2424

						if t71[p276] then
							t71[p276].Close()
						end

						if p276:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId then
							v2424 = true
							task.spawn(function(...)
								if not v2424 then
									return
								end

								while p276:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId do
									task.wait()
								end

								if not v1164.Flags.SpectateDetector.CurrentValue then
									return
								end

								t71[p276] = SuperSpecialFemboyNotifyOWO({
									Title = "Spectate detector",
									Content = string.format("<font color=%s>%s</font> stopped spectating you", "\"rgb(0, 255, 0)\"", p276.Name),
									Duration = 12,
									Image = "triangle-alert",
									NoQueue = true
								})

								return
								-- (could not be recovered)
							end)

							if v1164.Flags.SpectateDetector.CurrentValue then
								t71[p276] = SuperSpecialFemboyNotifyOWO({
									Title = "Spectate detector",
									Content = string.format("<font color=%s>%s</font> is spectating you!", "\"rgb(255, 0, 0)\"", p276.Name),
									Duration = 12,
									Image = "triangle-alert",
									NoQueue = true
								})
							end
						end
					end)
				end
			end

			t24.Disconnectables[#t24.Disconnectables + 1] = Players.PlayerAdded:Connect(track_spectate)

			do
				t24.Disconnectables[#t24.Disconnectables + 1] = Players.PlayerRemoving:Connect(function()
					task.defer(UpdateSpectators)

					if 1053297955 ~= n41 then
						return
					end

					n3 -= 65
					n7 += 1915
					n9 -= 1604
					n1 = 523964260
					n5 = 984139606
					n8 += 340
					n41 = 715573288
					n39 -= 1857
					n40 -= 928
					-- (could not be recovered)
				end)
			end

			for _, player in ipairs(Players:GetPlayers()) do
				track_spectate(player)

				if player:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId and v1164.Flags.SpectateDetector.CurrentValue then
					SuperSpecialFemboyNotifyOWO({
						Title = "Spectate detector",
						Content = string.format("<font color=%s>%s</font> is spectating you!", "\"rgb(255, 0, 0)\"", player.Name),
						Duration = 12,
						Image = "triangle-alert",
						NoQueue = true
					})
				end
			end

			UpdateSpectators()
			Self:CreateToggle({
				Name = "Auto remove popups",
				CurrentValue = false,
				Flag = "AutoClearPopups",
				Callback = function(p277)
					if p277 then
						Check()
					end

					if n40 ~= 1015843548 then
						return
					end

					n39 -= 887
					n41 += 1516
					n7 -= 1523
					n40 = 626377900
					n8 = 459499431
					n3 = 23595915
					n9 += 1977
					n5 += 1681
					n1 = 972688934
					-- (could not be recovered)
				end
			})

			do
				Self:CreateToggle({
					Name = "Auto unsprint",
					CurrentValue = false,
					Flag = "AutoUnsprint",
					Callback = function(p278)
						if n39 == 622646567 then
							if p278 then
								t23.add("AutoUnsprint", function(x, x)
									if not x then
										return
									end

									if ((x.Parent == Killers3 and v1164.Flags.AI_Killer_Toggle.CurrentValue) or (not v1164.Flags.AI_Survivor_Toggle.CurrentValue or LocalPlayer.Character.Parent ~= Survivors3)) and not v1164.Flags.UnlimitedRunning.CurrentValue then
										if Sprinting.Stamina <= 1 then
											t24:Sprint(false)
										end
									end
								end)
							else
								t23.disconnect("AutoUnsprint")
							end

							return
						end

						n5 += 9
						n6 = 756065942
						n2 = 737068401
						n39 = 621046437
						n40 = 518506700
						n1 = 237838429
						n41 = 605890085
						n8 = 725756935
						n3 -= 1787
						-- (could not be recovered)
					end,
					ToolTip = "Unsprints at 1 stamina to avoid the penalty. Does nothing if infinite stamina is enabled"
				})
			end

			Self:CreateToggle({
				Name = "Always sprint",
				CurrentValue = false,
				Flag = "AutoSprint",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "No sprint tweening",
				CurrentValue = false,
				Flag = "NoSprintTween",
				Callback = function(p279)
					if p279 then
						t23.add("NoSprintTween", function(p280, p281)
							if Sprinting.__currentSpeedTween and p281 then
								local v2427 = p281

								if p281:FindFirstChild("Humanoid") and Sprinting.IsSprinting then
									Sprinting.__currentSpeedTween:Cancel()
									Sprinting.__currentSpeedTween = nil

									local __speedMultiplier = Sprinting.__speedMultiplier
									local CurrentSprintSpeed = Sprinting.CurrentSprintSpeed or Sprinting.SprintSpeed
									local attribute = p281.Humanoid:GetAttribute("BaseSpeed") or 16
									local value = CurrentSprintSpeed / attribute
									local v2432 = value / attribute

									__speedMultiplier.Value = value
								else
								end
							else
							end
						end)
					else
						if n8 ~= 69055488 then
							n1 = 331909807
							n40 = 677366473
							n4 = 1026906620
							n8 = 502257611
							n3 = 20360669
							n6 -= 1681
							n41 += 515
							n5 -= 1757
							n39 = 600737737
							-- (could not be recovered)
						end

						t23.disconnect("NoSprintTween")
					end
				end,
				ToolTip = "Makes it so you when you sprint you immediately have full sprint speed instead of gradually getting faster"
			})
			Self:CreateToggle({
				Name = "Togglable sprint",
				CurrentValue = false,
				Flag = "ToggleSprintPC",
				Callback = v1179,
				ToolTip = "Allows you to toggle sprint on/off instead of holding, For PC/Console users"
			})
			Self:CreateToggle({
				Name = "No slowdown",
				CurrentValue = false,
				Flag = "NoSlowdown",
				Callback = function()
					task.spawn(function()
						while task.wait() and v1164.Flags.NoSlowdown.CurrentValue do
							if LocalPlayer.Character then
								if not LocalPlayer.Character:FindFirstChild("SpeedMultipliers") then
									continue
								end

								for _, child in ipairs(LocalPlayer.Character.SpeedMultipliers:GetChildren()) do
									if not HasAbility(child.Name) and child.Value < 1 then
										v137("Changing slowness effect: ", child)
										child.Value = 1

										if not child:GetAttribute("gaveconnection") then
											child:SetAttribute("gaveconnection", true)

											local connection2 = child:GetPropertyChangedSignal("Value"):Connect(function()
												child.Value = 1
											end)

											t24.Disconnectables[#t24.Disconnectables + 1] = child.Destroying:Once(function()
												connection2:Disconnect()
												v138("the slowness affect has been destroyed")

												return
												-- (could not be recovered)
											end)
											t24.Disconnectables[#t24.Disconnectables + 1] = connection2
										end
									end
								end
							end
						end
					end)
				end
			})

			do
				Self:CreateToggle({
					Name = "No slowdown from abilitys",
					CurrentValue = false,
					Flag = "NoAbilitySlowdown",
					Callback = function()
						task.spawn(function()
							local n113 = 829883084
							local n114 = 9675884

							while task.wait() and v1164.Flags.NoAbilitySlowdown.CurrentValue do
								if LocalPlayer.Character then
									if not LocalPlayer.Character:FindFirstChild("SpeedMultipliers") then
										continue
									end

									for _, v in LocalPlayer.Character.SpeedMultipliers:GetChildren() do
										if HasAbility(v.Name) and v.Value < 1 then
											v137("Changing ability slowness effect: ", v)
											v.Value = 1

											if not v:GetAttribute("gaveconnection") then
												v:SetAttribute("gaveconnection", true)

												local connection2 = v:GetPropertyChangedSignal("Value"):Connect(function()
													v.Value = 1

													return
												end)

												if not (n114 < n39) then
													n2 = 232479703
													n113 += 470
													n39 = 1006681572
													n114 -= 1088
													n7 = 730687104
													n5 += 978
													n6 = 545416320
													n4 = 69996603
													-- (could not be recovered)
												end

												t24.Disconnectables[#t24.Disconnectables + 1] = v.Destroying:Once(function()
													connection2:Disconnect()
													v138("the slowness affect has been destroyed")

													if n113 == 829883084 then
														return
													end

													n114 += 1994
													n7 -= 1193
													n113 -= 1746
													n6 -= 319
													n4 += 1937
													n5 -= 2011
													-- (could not be recovered)
												end)
												t24.Disconnectables[#t24.Disconnectables + 1] = connection2
											end
										end
									end
								end
							end
						end)
					end
				})
			end

			do
				Self:CreateToggle({
					Name = "Device spoofer",
					CurrentValue = false,
					Flag = "DeviceSpoofer",
					Callback = function(p282)
						if p282 and v1164.Flags.ServerDeviceSpooferValue.CurrentOption[1] then
							module:FireServerConnection("SetDevice", "REMOTE_EVENT", v1164.Flags.ServerDeviceSpooferValue.CurrentOption[1])
						else
							module:FireServerConnection("SetDevice", "REMOTE_EVENT", RealDevice)
						end
					end,
					ToolTip = "It is normal that your real device will show in the player list, but only to you; to everyone else, it appears as the \"Server device\", and the game treats you as if you are on \"Client device\""
				})
			end

			Self:CreateDropdown({
				Name = "└── Server device",
				Options = {
					"PC",
					"Mobile",
					"Console",
					"Unknown"
				},
				CurrentOption = { RealDevice },
				MultipleOptions = false,
				Flag = "ServerDeviceSpooferValue",
				Callback = function(p283)
					if v1164.Flags.DeviceSpoofer.CurrentValue then
						module:FireServerConnection("SetDevice", "REMOTE_EVENT", p283[1])
					end

					if n1 < n3 then
						return
					end

					n39 -= 303
					n1 -= 161
					n5 = 985539694
					n2 += 1266
					n41 += 1621
					n40 += 1043
					n4 -= 1515
					n8 = 815195678
					n3 -= 118
					-- (could not be recovered)
				end
			})
			Self:CreateDropdown({
				Name = "└── Client device",
				Options = {
					"PC",
					"Mobile",
					"Console"
				},
				CurrentOption = { RealDevice },
				MultipleOptions = false,
				Flag = "ClientDeviceSpooferValue",
				Callback = v1179
			})

			local v2441

			v2441 = v39(Device.GetPlayerDevice, newcclosure(function(p284)
				local v2442 = tostring(debug.traceback())

				if v2442:find("Sprinting:235") or v1164.Flags.ToggleSprintPC.CurrentValue and v2442:find("function sprint") then
					return "Mobile"
				end

				if v1164.Flags.DeviceSpoofer.CurrentValue then
					return v1164.Flags.ClientDeviceSpooferValue.CurrentOption[1]
				end

				return v2441(p284)
				-- (could not be recovered)
			end))

			do
				Self:CreateToggle({
					Name = "Always show sidebar",
					CurrentValue = false,
					Flag = "SidebarVisibility",
					Callback = function(p285)
						if n39 == 622647786 then
							n9 += 1347
							n40 += 1276
							n4 = 948468735
							n3 -= 175
							n2 -= 2016
							n1 -= 1058
							n39 = 837526748
							n41 = 333164078
							n5 += 1914
							-- (could not be recovered)
						end

						if p285 then
							t23.add("SidebarVisibility", function()
								if (SidebarHandler.MenusHidden) then
									if PlayerInfo then
										PlayerInfo.Position = UDim2.new(0, 100, 1, -70.0)
									end

									SidebarHandler:ToggleSidebarButtons(true)
								end
							end, 0.5)
						else
							t23.disconnect("SidebarVisibility")

							if t24.GameState == 1 and PlayerInfo then
								PlayerInfo.Position = UDim2.new(0, 20, 1, -20)
								SidebarHandler:ToggleSidebarButtons(false)
							end
						end
					end
				})
			end

			Self:CreateToggle({
				Name = "Always show chat",
				CurrentValue = false,
				Flag = "AlwaysShowChat",
				Callback = function(p286)
					if p286 then
						t23.add("AlwaysShowChat", function()
							TextChatService:FindFirstChildOfClass("ChatWindowConfiguration").Enabled = true
						end, 0.5)
					else
						t23.disconnect("AlwaysShowChat")

						if t24.GameState == 1 then
							TextChatService:FindFirstChildOfClass("ChatWindowConfiguration").Enabled = false
						end
					end
				end
			})

			do
				Self:CreateToggle({
					Name = "Always show player list",
					CurrentValue = false,
					Flag = "PlayerlistVisibility",
					Callback = function(p287)
						if p287 then
							if n6 == 89954146 then
								n39 = 926718054
								n5 = 619199135
								n4 = 190101466
								n3 = 347463365
								n40 += 1702
								n9 = 854909736
								n41 = 357371516
								n6 = 141315598
								n8 = 262654087
							else
								t23.add("PlayerlistVisibility", function()
									if not PlayerList.ListEnabled then
										PlayerList:TogglePlayerList(true, true)
									end
								end, 0.5)
							end
						else
							t23.disconnect("PlayerlistVisibility")

							if t24.GameState == 1 then
								return PlayerList:TogglePlayerList(false, true)
							end
						end
					end
				})
			end
			;(function()
				local x = false
				local W = {}
				local n = { "HideKillerWins", "HidePlaytime", "HideSurvivorWins" }

				local function P(I)
					if not W[I.UserId] then
						W[I.UserId] = {}
					end

					for X, X in ipairs(n) do
						local A = I:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(X)

						W[I.UserId][X] = A.Value
					end
				end
				local function I(X)
					for A, A in ipairs(n) do
						local n = X:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(A)

						n.Value = false
					end
				end
				local function n(X)
					if W[X.UserId] then
						for A, r in pairs(W[X.UserId]) do
							local W = X:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(A)

							W.Value = r
						end
					end
				end
				local function W(X)
					for A, A in ipairs(Players:GetPlayers()) do
						if X then
							P(A)
							I(A)
						else
							n(A)
						end
					end
				end

				t24.Disconnectables[#t24.Disconnectables + 1] = Players.PlayerAdded:Connect(function(Y)
					if x == true then
						P(Y)
						I(Y)
					end
				end)
				Self:CreateToggle({ Name = "Privacy bypass", CurrentValue = false, Flag = "PrivacyBypass", Callback = function(a)
					x = a
					W(a)
				end, ToolTip = "Let's you see players stats, even when they are hidden" })
			end)()

			do
				local PlayWinnerCutscene = t24.NetworkConnections.PlayWinnerCutscene
				local v2462 = clonefunction(PlayWinnerCutscene.Callback)

				Self:CreateToggle({
					Name = "Disable winner cutscene",
					CurrentValue = false,
					Flag = "AutoLobby",
					Callback = function(p288)
						if p288 then
							PlayWinnerCutscene.Callback = function()
								v138("skipped cutscene of winner")
							end
						else
							PlayWinnerCutscene.Callback = v2462
						end

						return
						-- (could not be recovered)
					end
				})

				local StatusContainer = PlayerGui.MainUI.StatusContainer

				Self:CreateToggle({
					Name = "Reveal hallucination status",
					CurrentValue = false,
					Flag = "RevealHallucinationStatus",
					Callback = function(p289)
						if StatusContainer:FindFirstChild("Hallucination") then
							StatusContainer.Hallucination.Visible = p289
						end
					end
				})
				t24.Disconnectables[#t24.Disconnectables + 1] = StatusContainer.ChildAdded:Connect(function(...)
					local v2464 = ...

					if v2464.Name == "Hallucination" then
						if v1164.Flags.RevealHallucinationStatus.CurrentValue then
							v2464.Visible = true
						end
					end

					if n7 < n5 then
						return
					end

					n3 = 1049553971
					n40 = 260918121
					n41 -= 1124
					n9 += 1816
					n4 -= 562
					n5 += 1640
					n7 += 478
					n39 += 1973
					n8 = 700669199

					local value = select(365, ...)
					-- (could not be recovered)
				end)
			end

			Self:CreateSection("Player abilitys")
			task.spawn(function()
				local u2466
				local n115 = 858047068

				if not (n9 < n5) then
					n7 += 1726
					n3 -= 1733
					n40 = 580814643
					n39 -= 783
					n1 = 251486340
					n9 = 739926047
					n2 += 1704
					n41 -= 679
					n5 = 293770686
					-- (could not be recovered)
				end

				while task.wait(0.1) do
					if u48 then
						return
					end

					xpcall(function()
						if (v1164.Flags.NosferatuMinigame.CurrentValue or v1164.Flags.AutoNosferatuReel.CurrentValue) then
							if (NeedToEscapeOrReel()) then
								if (IsKiller()) then
									if (not v1164.Flags.AutoNosferatuReel.CurrentValue) then
										return
									end
								else
									if (not v1164.Flags.NosferatuMinigame.CurrentValue) then
										return
									end
								end

								local x = (IsKiller() and LocalPlayer.Name or GetKillerUsername()) .. "NosHookQTE"

								module:FireServerConnection(x, "REMOTE_EVENT", true)

								local x = v1164.Flags.AutoNosEscapeTimeMin.CurrentValue / 100
								local n = v1164.Flags.AutoNosEscapeTimeMax.CurrentValue / 100
								local Y = (x > 0 and n > 0) and (RandomNumber(x, n) / 10) or 0

								if Y ~= 0 then
									task.wait(Y)
								else
									RunService.RenderStepped:Wait()
								end

								if (not u2466) then
									task.spawn(function()
										u2466 = true

										repeat
											task.wait()
										until not NeedToEscapeOrReel()

										if (IsKiller()) then
											lib:Notify({ Title = "Blood Hook", Content = "Automatically reeled survivor", Duration = 6, Image = "droplet" })
										else
											lib:Notify({ Title = "Blood Hook", Content = "Successfully escaped", Duration = 5, Image = "droplet" })
										end

										u2466 = false
									end)
								end
							else
								task.wait(0.05)
							end
						end
					end, function(p290)
						v137("error in nos auto qte:", tostring(p290))

						if n1 < n115 then
							task.wait()

							return
						end

						n39 -= 598
						n2 += 1646
						n1 -= 1833
						n5 -= 1786
						n7 = 847151280
						n115 = 228839925
						n3 = 457507550
						-- (could not be recovered)
					end)
				end
			end)

			do
				local n116

				GetCharges = function()
					n116 = 941624665

					local ok, result = pcall(function()
						if HasAbility("Reroll") then
							return tonumber(PlayerGui.MainUI.AbilityContainer.Reroll.Charges.Text)
						end
					end)

					if n116 < n40 then
						if not ok then
							return 9e9
						end

						local v2475 = result or 9e9

						return v2475
					end

					n1 = 458070089
					n2 -= 307
					n9 = 947247399
					n40 = 734073660
					n39 = 247962074
					n6 = 1027026379
					n7 = 481216175
					n41 = 572920825
					n5 -= 1950
					n116 = 982795986
					-- (could not be recovered)
				end
			end

			do
				local n117 = 0

				Self:CreateToggle({
					Name = "Auto flip coin",
					CurrentValue = false,
					Flag = "AutoCoinFlip",
					Callback = function()
						if n6 ~= n2 then
							task.spawn(function()
								while task.wait() and (v1164.Flags.AutoCoinFlip.CurrentValue) do
									if (GetCharges() < v1164.Flags.MaxCharges.CurrentValue and HasAbilityReady("CoinFlip") and (tick() - n117 >= 2.5)) then
										module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "CoinFlip")
										n117 = tick()
									end
								end
							end)

							return
						end

						n39 -= 1064
						n2 = 496982450
						n1 = 189177370
						n4 -= 272
						n5 += 1707
						n41 = 133050836
						n8 = 418593145
						n40 -= 234
						n6 -= 1274
						-- (could not be recovered)
					end
				})
			end

			Self:CreateSlider({
				Name = "└── Max charges",
				Range = {
					1,
					3
				},
				Increment = 1,
				StrictIncrement = true,
				Suffix = "",
				CurrentValue = 1,
				Flag = "MaxCharges",
				Callback = v1179
			})

			do
				local v2477

				v2477 = v39(cl_ConstructQTE.new, newcclosure(function(p291, p292)
					local n118 = 620294967
					local n119 = 227696162
					local n120 = 335064330
					local v2481 = v2477(p291, p292)

					task.spawn(function()
						if v1164.Flags.InfiniteDisarmAttempts.CurrentValue then
							v2481.FailedAttempts = -math.huge
							v137("patched FailedAttempts")
						end

						local n121

						if v1164.Flags.AutoDisarmMinigame.CurrentValue then
							local v2483 = RandomNumber(v1164.Flags.AutoDisarmTimeMin.CurrentValue * 10, v1164.Flags.AutoDisarmTimeMax.CurrentValue * 10) / 10

							if n120 == n118 then
								n41 += 538
								n118 += 1248
								n3 = 557121497
								n7 = 381705469
								n5 = 249341248
								n120 = 898714898
								n2 -= 1282
								n119 = 286922210
								-- (could not be recovered)
							end

							task.spawn(function()
								local n122 = 188650400

								if n122 ~= n119 then
									setthreadidentity(8)
									lib:Notify({
										Title = "Auto Disarm",
										Content = string.format("Disarm time: %1.fs", v2483),
										Duration = v2483 - 0.1,
										Image = "loader-circle"
									})

									return
								end

								n5 = 291651955
								n119 = 585392863
								n118 = 775919725
								n2 += 20
								n41 -= 891
								-- (could not be recovered)
							end)
							task.wait(v2483)
							v2481.Progress = 100
							v2481:Destroy()
							task.spawn(function()
								n121 = 197520985

								if n5 ~= n121 then
									setthreadidentity(8)
									lib:Notify({
										Title = "Auto Disarm",
										Content = "The disarm minigame was skipped successfully.",
										Duration = 7,
										Image = "check"
									})

									return
								end

								n41 -= 1834
								n121 = 709534068
								n118 += 1058
								n120 -= 1686
								n119 = 651512931
								n5 = 349286387
								-- (could not be recovered)
							end)
						end
					end)

					return v2481
					-- (could not be recovered)
				end))
			end

			Self:CreateToggle({
				Name = "TP Slash",
				CurrentValue = false,
				Flag = "TPSlash",
				Callback = v1179,
				ToolTip = "Teleports you behind the killer when slashing as shedletsky (no visible teleport on your screen, but others do see it)"
			})
			Self:CreateToggle({
				Name = "TP One Shot",
				CurrentValue = false,
				Flag = "TPOneShot",
				Callback = v1179,
				ToolTip = "Teleports you behind the killer when shooting (no visible teleport on your screen, but others do see it)"
			})

			do
				Self:CreateToggle({
					Name = "Auto chicken",
					CurrentValue = false,
					Flag = "AutoChicken",
					Callback = function(p293)
						if p293 then
							t23.add("AutoChicken", function()
								if (HasAbilityReady("FriedChicken") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")) then
									if (LocalPlayer.Character.Humanoid.Health <= v1164.Flags.AutoChickenHealth.CurrentValue) then
										local x = GetClosestKiller(5000)

										if ((not v1164.Flags.AutoChickenFar.CurrentValue or not x) or (LocalPlayer.Character.HumanoidRootPart.Position - x.HumanoidRootPart.Position).magnitude >= 100) then
											module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "FriedChicken")
										end
									end
								end
							end, 0.4)
						else
							t23.disconnect("AutoChicken")

							if n2 == n39 then
								n3 = 795875679
								n6 = 196468499
								n41 -= 1864
								n39 = 511522076
								n4 -= 740
								n2 -= 600
								n9 -= 1168
								n40 += 512
								n5 += 547
								-- (could not be recovered)
							end
						end
					end
				})
			end

			Self:CreateSlider({
				Name = "└── Health limit",
				Range = {
					1,
					99
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 40,
				Flag = "AutoChickenHealth",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "└── Only when far from killer",
				CurrentValue = false,
				Flag = "AutoChickenFar",
				Callback = v1179,
				TextMode = true
			})
			Self:CreateToggle({
				Name = "Stun spy",
				CurrentValue = false,
				Flag = "StunSpy",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Reveal ability trajectory",
				CurrentValue = false,
				Flag = "RevealTrajectory",
				ToolTip = "Shows you the path of abilities like mass infection, entanglement, walkspeed override, etc. so you can dodge it easier",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Walk over digital footprint",
				CurrentValue = false,
				Flag = "WalkOverDF",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Walk over trails",
				CurrentValue = false,
				Flag = "WalkOverTrail",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Walk over nos puddles",
				CurrentValue = false,
				Flag = "WalkOverPuddles",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Anti block",
				CurrentValue = false,
				Flag = "Antiblock",
				ToolTip = "Physically prevents your M1 from being sent if catsaken detects it's going to hit a player that IS CURRENTLY blocking",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Anti backstab",
				CurrentValue = false,
				Flag = "Antibackstab",
				Callback = v1179
			})
			task.spawn(function()
				while task.wait(0.1) do
					pcall(function()
						if v1164.Flags.WalkOverDF.CurrentValue then
							for x, x in pairs(t24.DoeDebris) do
								if x:FindFirstChild("TouchInterest") then
									x.TouchInterest:Destroy()
								end
							end
						end
					end)
					pcall(function()
						if v1164.Flags.WalkOverTrail.CurrentValue then
							for x, x in pairs(t24.DoeTrailDebris) do
								if x:FindFirstChild("TouchInterest") then
									x.TouchInterest:Destroy()
								end
							end
						end
					end)
					pcall(function()
						if v1164.Flags.WalkOverPuddles.CurrentValue then
							for x, x in pairs(t24.NosDebris) do
								if x:FindFirstChild("TouchInterest") then
									x.TouchInterest:Destroy()
								end
							end
						end
					end)
				end
			end)

			do
				local v2492

				v2492 = v39(Util.IsOnScreen, newcclosure(function(...)
					if not v1164.Flags.ProtectionBreakWall.CurrentValue then
						return v2492(...)
					end

					if n2 < n39 then
						return true
					end

					n9 = 605946941
					n5 = 234548513
					n1 += 803
					n39 -= 1468
					n40 += 540
					n6 -= 724
					n8 -= 1114
					n41 -= 46
					n2 = 567014482
					-- (could not be recovered)
				end))
			end

			do
				local v2493
				local n123 = -9e9

				v2493 = v39(module.FireServerConnection, newcclosure(function(p294, ...)
					local _
					local state = 1
					local v2500, t72, n124, v2503, HumanoidRootPart, v2505, forIter, forState, forControl, v2509, v2510, HumanoidRootPart2

					while true do
						if state <= 2 then
							if state == 1 then
								v2500 = p294

								if u48 then
									state = 88
								else
									state = 2
								end
							elseif state == 2 then
								t72 = { ... }
								n124 = 591955984

								if t72[1] == "UpdateHeartbeatAsync" then
									state = 3
								else
									state = 4
								end
							end
						elseif state <= 4 then
							if state == 3 then
								return v137("yeah, no...")
							elseif state == 4 then
								if t72[1] == "UpdateCharacterPosition" and v1164.Flags.FakeLag.CurrentValue then
									state = 5
								else
									state = 23
								end
							end
						elseif state <= 6 then
							if state == 5 then
								local v2512 = tonumber(v1164.Flags.FakeLagLoss.CurrentOption[1]:sub(1, 2))

								if math.random(1, 100) <= v2512 then
									state = 22
								else
									state = 6
								end
							elseif state == 6 then
								if t72[1] == "SetDevice" and v1164.Flags.DeviceSpoofer.CurrentValue then
									state = 7
								else
									state = 8
								end
							end
						elseif state <= 8 then
							if state == 7 then
								t72[3] = v1164.Flags.ServerDeviceSpooferValue.CurrentOption[1]
								state = 19
							elseif state == 8 then
								if t72[1] == LocalPlayer.Name .. "DusekkarCancel" and (v1164.Flags.ProtectionBreakWall.CurrentValue or v1164.Flags.ProtectionBreak.CurrentValue) then
									state = 9
								else
									state = 10
								end
							end
						elseif state <= 10 then
							if state == 9 then
								return
							elseif state == 10 then
								if t72[1] == "SetSpectateTarget" and v1164.Flags.AntiDetectSpectate.CurrentValue and t72[3] ~= nil then
									state = 11
								else
									state = 12
								end
							end
						elseif state <= 12 then
							if state == 11 then
								return
							elseif state == 12 then
								if t72[1] == LocalPlayer.Name .. "666Crashed" and t24.PursuitTracker then
									state = 30
								else
									state = 13
								end
							end
						elseif state <= 14 then
							if state == 13 then
								if t72[1] == LocalPlayer.Name .. "NosAirDiveLand" and v1164.Flags.NosHitboxTrail.CurrentValue then
									state = 14
								else
									state = 15
								end
							elseif state == 14 then
								return v137("nos hitbox trail thing")
							end
						elseif state <= 16 then
							if state == 15 then
								if v1164.Flags.VoidRushAntiCrash.CurrentValue and t72[1] == LocalPlayer.Name .. "VoidRushCollision" and t24.VoidRushTracker then
									state = 86
								else
									state = 16
								end
							elseif state == 16 then
								if t72[1] == LocalPlayer.Name .. "C00lkiddCollision" then
									state = 39
								else
									state = 17
								end
							end
						elseif state <= 18 then
							if state == 17 then
								if v1164.Flags.ChargeAntiCrash.CurrentValue and t72[1] == LocalPlayer.Name .. "Guest1337Collision" then
									state = 21
								else
									state = 18
								end
							elseif state == 18 then
								if v1164.Flags.Antiblock.CurrentValue and t72[1] == "UseActorAbility" and t72[3] == GetM1Name() then
									state = 55
								else
									state = 19
								end
							end
						elseif state <= 20 then
							if state == 19 then
								if t53.Enstrangle and tostring(LocalPlayer.Character) == "Azure" and v1164.Flags.SilentAimToggle.CurrentValue and t72[1] == LocalPlayer.Name .. "AzureUpdateCameraLookVector" then
									state = 20
								else
									state = 61
								end
							elseif state == 20 then
								v2503 = GetClosestSurvivor(60)

								if v2503 then
									state = 51
								else
									state = 61
								end
							end
						elseif state <= 22 then
							if state == 21 then
								return
							elseif state == 22 then
								return
							end
						elseif state <= 24 then
							if state == 23 then
								if t72[1] == "SetDevice" and v1164.Flags.DeviceSpoofer.CurrentValue then
									state = 24
								else
									state = 25
								end
							elseif state == 24 then
								t72[3] = v1164.Flags.ServerDeviceSpooferValue.CurrentOption[1]
								state = 45
							end
						elseif state <= 26 then
							if state == 25 then
								if t72[1] == LocalPlayer.Name .. "DusekkarCancel" and (v1164.Flags.ProtectionBreakWall.CurrentValue or v1164.Flags.ProtectionBreak.CurrentValue) then
									state = 26
								else
									state = 27
								end
							elseif state == 26 then
								return
							end
						elseif state <= 28 then
							if state == 27 then
								if t72[1] == "SetSpectateTarget" and v1164.Flags.AntiDetectSpectate.CurrentValue and t72[3] ~= nil then
									state = 28
								else
									state = 29
								end
							elseif state == 28 then
								return
							end
						elseif state <= 30 then
							if state == 29 then
								if t72[1] == LocalPlayer.Name .. "666Crashed" and t24.PursuitTracker then
									state = 30
								else
									state = 35
								end
							elseif state == 30 then
								if v1164.Flags.DemonicPursuitAntiCrash.CurrentValue then
									state = 31
								else
									state = 32
								end
							end
						elseif state <= 32 then
							if state == 31 then
								task.wait()

								if Config8.PursuitLength <= tick() - t24.PursuitTracker then
									state = 32
								else
									state = 31
								end
							elseif state == 32 then
								if v1164.Flags.DemonicPursuitHitboxTrail.CurrentValue then
									state = 34
								else
									state = 33
								end
							end
						elseif state <= 34 then
							if state == 33 then
								return v2493(v2500, unpack(t72))
							elseif state == 34 then
								return RunService:UnbindFromRenderStep("666PursuitCharge")
							end
						elseif state <= 36 then
							if state == 35 then
								if t72[1] == LocalPlayer.Name .. "NosAirDiveLand" and v1164.Flags.NosHitboxTrail.CurrentValue then
									state = 36
								else
									state = 37
								end
							elseif state == 36 then
								return v137("nos hitbox trail thing")
							end
						elseif state <= 38 then
							if state == 37 then
								if v1164.Flags.VoidRushAntiCrash.CurrentValue and t72[1] == LocalPlayer.Name .. "VoidRushCollision" and t24.VoidRushTracker then
									state = 86
								else
									state = 38
								end
							elseif state == 38 then
								if t72[1] == LocalPlayer.Name .. "C00lkiddCollision" then
									state = 39
								else
									state = 43
								end
							end
						elseif state <= 40 then
							if state == 39 then
								if v1164.Flags.FlyOverride.CurrentValue then
									state = 41
								else
									state = 40
								end
							elseif state == 40 then
								return (v2493(v2500, unpack(t72)))
							end
						elseif state <= 42 then
							if state == 41 then
								state = 42
							elseif state == 42 then
								return (v2493(v2500, unpack(t72)))
							end
						elseif state <= 44 then
							if state == 43 then
								if v1164.Flags.ChargeAntiCrash.CurrentValue and t72[1] == LocalPlayer.Name .. "Guest1337Collision" then
									state = 85
								else
									state = 44
								end
							elseif state == 44 then
								if v1164.Flags.Antiblock.CurrentValue and t72[1] == "UseActorAbility" and t72[3] == GetM1Name() then
									state = 55
								else
									state = 45
								end
							end
						elseif state <= 46 then
							if state == 45 then
								if t53.Enstrangle and tostring(LocalPlayer.Character) == "Azure" and v1164.Flags.SilentAimToggle.CurrentValue and t72[1] == LocalPlayer.Name .. "AzureUpdateCameraLookVector" then
									state = 46
								else
									state = 47
								end
							elseif state == 46 then
								v2503 = GetClosestSurvivor(60)

								if v2503 then
									state = 51
								else
									state = 47
								end
							end
						elseif state <= 48 then
							if state == 47 then
								if tostring(LocalPlayer.Character) == "Azure" then
									state = 67
								else
									state = 48
								end
							elseif state == 48 then
								if n3 == n41 then
									state = 49
								else
									state = 50
								end
							end
						elseif state <= 50 then
							if state == 49 then
								n3 += 985
								n4 += 755
								n40 -= 689
								n9 = 321099253
								n41 = 776756224
								n6 -= 628
								n7 += 1596
								n39 = 183661091
								n5 += 1979
								bit32.bxor(nil, nil)
								-- (could not be recovered)
							elseif state == 50 then
								return v2493(v2500, unpack(t72))
							end
						elseif state <= 52 then
							if state == 51 then
								HumanoidRootPart = v2503:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart then
									state = 52
								else
									state = 53
								end
							elseif state == 52 then
								HumanoidRootPart = v2503.HumanoidRootPart.Position
								state = 53
							end
						elseif state <= 54 then
							if state == 53 then
								if HumanoidRootPart then
									state = 54
								else
									state = 61
								end
							elseif state == 54 then
								t72[3] = HumanoidRootPart
								state = 61
							end
						elseif state <= 56 then
							if state == 55 then
								v2505 = nil
								state = 56
							elseif state == 56 then
								forIter, forState, forControl = pairs(t24.Survivors)

								if type(forIter) == 'table' then
									local forMeta = getmetatable(forIter)

									if type(forMeta) == 'table' and forMeta['__iter'] then
										forIter, forState, forControl = (forMeta['__iter'](forIter))
									else
										forIter, forState, forControl = next, forIter, nil
									end
								end

								state = 57
							end
						elseif state <= 58 then
							if state == 57 then
								local v2514

								v2514, v2509 = (forIter(forState, forControl))

								if v2514 == nil then
									state = 58
								else
									forControl = v2514
									state = 83
								end
							elseif state == 58 then
								if v2505 then
									state = 82
								else
									state = 59
								end
							end
						elseif state <= 60 then
							if state == 59 then
								if t53.Enstrangle and tostring(LocalPlayer.Character) == "Azure" and v1164.Flags.SilentAimToggle.CurrentValue and t72[1] == LocalPlayer.Name .. "AzureUpdateCameraLookVector" then
									state = 60
								else
									state = 61
								end
							elseif state == 60 then
								v2510 = GetClosestSurvivor(60)

								if v2510 then
									state = 62
								else
									state = 61
								end
							end
						elseif state <= 62 then
							if state == 61 then
								if tostring(LocalPlayer.Character) == "Azure" then
									state = 67
								else
									state = 72
								end
							elseif state == 62 then
								HumanoidRootPart2 = v2510:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart2 then
									state = 63
								else
									state = 64
								end
							end
						elseif state <= 64 then
							if state == 63 then
								HumanoidRootPart2 = v2510.HumanoidRootPart.Position
								state = 64
							elseif state == 64 then
								if HumanoidRootPart2 then
									state = 65
								else
									state = 66
								end
							end
						elseif state <= 66 then
							if state == 65 then
								t72[3] = HumanoidRootPart2
								state = 66
							elseif state == 66 then
								if tostring(LocalPlayer.Character) == "Azure" then
									state = 67
								else
									state = 78
								end
							end
						elseif state <= 68 then
							if state == 67 then
								if t72[1] == LocalPlayer.Name .. "AzureUpdateMouse" and _G.UNLOCK_AZURE_FEATUREZ then
									state = 68
								else
									state = 75
								end
							elseif state == 68 then
								if v1164.Flags.AzureTentacleKick.CurrentValue then
									state = 71
								else
									state = 69
								end
							end
						elseif state <= 70 then
							if state == 69 then
								if v1164.Flags.AzureThrowVelocity.CurrentValue > 1 then
									state = 70
								else
									state = 75
								end
							elseif state == 70 then
								t72[3] *= 1 + v1164.Flags.AzureThrowVelocity.CurrentValue / 10
								state = 75
							end
						elseif state <= 72 then
							if state == 71 then
								LocalPlayer.Character.HumanoidRootPart.Anchored = true
								task.spawn(function()
									task.wait(2)

									if tick() - n123 >= 1 then
										if not (n124 < n40) then
											n5 -= 1654
											n4 -= 60
											n6 = 534029257
											n40 += 498
											n39 += 1489
											n124 -= 956
											n7 = 688922668
											-- (could not be recovered)
										end

										LocalPlayer.Character.HumanoidRootPart.Anchored = false
									end
								end)
								n123 = tick()
								t72[3] = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 7000, 0)
								state = 72
							elseif state == 72 then
								if n3 == n41 then
									state = 73
								else
									state = 74
								end
							end
						elseif state <= 74 then
							if state == 73 then
								n3 += 985
								n4 += 755
								state = 80
							elseif state == 74 then
								return v2493(v2500, unpack(t72))
							end
						elseif state <= 76 then
							if state == 75 then
								if n3 == n41 then
									state = 76
								else
									state = 77
								end
							elseif state == 76 then
								n3 += 985
								n4 += 755
								n40 -= 689
								n9 = 321099253
								n41 = 776756224
								n6 -= 628
								n7 += 1596
								n39 = 183661091
								n5 += 1979
								bit32.bxor(nil, nil)
								-- (could not be recovered)
							end
						elseif state <= 78 then
							if state == 77 then
								return v2493(v2500, unpack(t72))
							elseif state == 78 then
								if n3 == n41 then
									state = 79
								else
									state = 81
								end
							end
						elseif state <= 80 then
							if state == 79 then
								n3 += 985
								n4 += 755
								state = 80
							elseif state == 80 then
								n40 -= 689
								n9 = 321099253
								n41 = 776756224
								n6 -= 628
								n7 += 1596
								n124 = 492583242
								n39 = 183661091
								n5 += 1979
								bit32.bxor(nil, nil)

								return
							end
						elseif state <= 82 then
							if state == 81 then
								return v2493(v2500, unpack(t72))
							elseif state == 82 then
								setthreadidentity(8)

								return lib:Notify({
									Title = "Anti block",
									Content = "Prevented an attack against a block",
									Duration = 6,
									Image = "shield"
								})
							end
						elseif state <= 84 then
							if state == 83 then
								if v2509:GetAttribute("isblocking") and IsFacing(v2509.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart, 0.73) then
									state = 84
								else
									state = 57
								end
							elseif state == 84 then
								v2505 = true
								v137("fucking guests...")
								state = 57
							end
						elseif state <= 86 then
							if state == 85 then
								return
							end

							if state == 86 then
								task.wait()

								if Config6.VoidRushDashLength <= tick() - t24.VoidRushTracker then
									state = 87
								else
									state = 86
								end
							end
						elseif state == 87 then
							return v2493(v2500, unpack(t72))
						elseif state == 88 then
							return v2493(v2500, ...)
						end
					end
				end))
			end

			do
				IsFacingBack = function(p295, p296)
					local v2515 = p295.Position - p296.Position
					local v2516 = -p296.CFrame.LookVector
					local v2517 = v2515:Dot(v2516)

					if v2517 <= 0 or v2517 > 7 then
						return false
					end

					return (v2515 - v2516 * v2517).Magnitude <= 3.5
				end
			end

			task.spawn(function()
				while task.wait() do
					if (v1164.Flags.AutoBackstab.CurrentValue) then
						local x = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local s = GetClosestKiller(15)

						if (s and s:FindFirstChild("HumanoidRootPart") and x and HasAbilityReady("Dagger")) then
							if (IsFacingBack(x, s.HumanoidRootPart)) then
								local x = tick()

								StartAimbotting(s, function()
									module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Dagger")

									local a = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

									a:MoveTo(s.HumanoidRootPart.Position)
									stareFunc(s)

									return (tick() - x <= 2) and (LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3) and not HasNotification("stabbed")
								end)
							end
						end
					end
				end
			end)
			Self:CreateSection("Auto M1", "Right")

			do
				Self:CreateToggle({
					Name = "Auto Slash/M1",
					CurrentValue = false,
					Flag = "AutoUseM1",
					Callback = function()
						task.spawn(function()
							while task.wait() and (v1164.Flags.AutoUseM1.CurrentValue) do
								if HasAbilityReady(GetM1Name()) then
									local x = v1164.Flags.AutoAutoM1Radius.CurrentValue and GetMaxM1Reach() or v1164.Flags.AutoM1Radius.CurrentValue
									local W = LocalPlayer.Character and ((IsKiller() and GetClosestSurvivor(x)) or (LocalPlayer.Character.Name == "Shedletsky" and GetClosestKiller(x)))

									if (W and W:GetAttribute("Invincible") ~= 1 and W:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not t24:HasHitReg()) then
										if ((not v1164.Flags.AutoM1FaceCheck.CurrentValue or v1164.Flags.Mouse1Aimbot.CurrentValue) or IsFacing(W.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart, 0.73)) then
											module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
										end
									end
								end
							end
						end)

						return
						-- (could not be recovered)
					end
				})
			end

			Self:CreateToggle({
				Name = "Face check",
				CurrentValue = true,
				Flag = "AutoM1FaceCheck",
				Callback = v1179,
				TextMode = true,
				ToolTip = "BYPASSED if M1 Assist is enabled because it automatically faces the survivor anyway"
			})
			Self:CreateSlider({
				Name = "Radius",
				Range = {
					6,
					15
				},
				Increment = 1,
				Suffix = "",
				CurrentValue = 10,
				Flag = "AutoM1Radius",
				Callback = v1179
			})
			Self:CreateToggle({
				Name = "Auto radius",
				CurrentValue = true,
				Flag = "AutoAutoM1Radius",
				Callback = v1179,
				TextMode = true,
				ToolTip = "Automatically get the reach of your M1 that changes for each killer, instead of one static setting"
			})
			xpcall(function()
				Animations:CreateSection("Movement animations")

				local x = {}
				local R = {}
				local m = {}
				local b = {}
				local c = {}
				local V = {}
				local y = Killers2
				local W = Survivors2
				local q = {}
				local D = {}

				local function K(i)
					i.Walk = {}
					i.Run = {}
					i.Idle = {}
					i.InjuredWalk = {}
					i.InjuredRun = {}
					i.InjuredIdle = {}
				end

				K(q)
				K(D)

				function scan_runwalkidle(K, i)
					local F = K:GetChildren()

					for K = 1, #F do
						local J = F[K]

						if J.Name == "Sixer" or J.Parent.Name == "Sixer" then
							continue
						end

						if i and J.Parent.Parent.Name == "Skins" then
							scan_runwalkidle(J, true)
						elseif J:IsA("Folder") and J:FindFirstChild("Config") then
							local K = require(J.Config)
							local F

							if i then
								local i = (J.Parent.Parent.Name == "Killers" and y or W)[J.Parent.Name]
								local j = require(i.Config)

								F = string.format("%s (%s)", j.DisplayName or i.Name, K.DisplayName)
							else
								F = string.format("%s", K.DisplayName or J.Name)
							end

							local i = K.Animations

							if i then
								if i.Walk and not table.find(x, i.Walk) then
									q.Walk[F] = i.Walk
									D.Walk[#D.Walk + 1] = F
								end

								if i.Run and not table.find(R, i.Run) then
									q.Run[F] = i.Run
									D.Run[#D.Run + 1] = F
								end

								if i.Idle and not table.find(m, i.Idle) then
									q.Idle[F] = i.Idle
									D.Idle[#D.Idle + 1] = F
								end

								if i.InjuredWalk and not table.find(b, i.InjuredWalk) then
									q.InjuredWalk[F] = i.InjuredWalk
									D.InjuredWalk[#D.InjuredWalk + 1] = F
								end

								if i.InjuredRun and not table.find(c, i.InjuredRun) then
									q.InjuredRun[F] = i.InjuredRun
									D.InjuredRun[#D.InjuredRun + 1] = F
								end

								if i.InjuredIdle and not table.find(V, i.InjuredIdle) then
									q.InjuredIdle[F] = i.InjuredIdle
									D.InjuredIdle[#D.InjuredIdle + 1] = F
								end
							end
						end
					end
				end

				scan_runwalkidle(y)
				scan_runwalkidle(W)
				scan_runwalkidle(Killers, true)
				scan_runwalkidle(Survivors, true)
				v138(string.format("[Animations] inserted: %d walk anims, %d run anims, %d idle anims, %d injured walk anims, %d injured run anims, %d injured idle anims", #D.Walk, #D.Run, #D.Idle, #D.InjuredWalk, #D.InjuredRun, #D.InjuredIdle))

				local function x(W)
					local n = { "Default" }
					local H = D[W]

					for W = 1, #H do
						n[#n + 1] = H[W]
					end

					return n
				end
				local function W(n)
					n = n[1]
					ContentProvider:PreloadAsync({ q[n] })
					v138("cached", n)
				end

				Animations:CreateLabel("Animations are FE — Everyone can see them like you do " .. utf8.char(9989))
				Animations:CreateToggle({ Name = "Replace run animations", CurrentValue = false, Flag = "ReplaceRunAnims", Callback = v1179 })
				Animations:CreateDropdown({ Name = "Basic run", Options = x("Run"), CurrentOption = { "Default" }, Flag = "SelectedRunAnimation", Callback = W, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured run", Options = x("InjuredRun"), CurrentOption = { "Default" }, Flag = "SelectedInjuredRunAnimation", Callback = W, Searchable = true })
				Animations:CreateToggle({ Name = "Replace walk animations", CurrentValue = false, Flag = "ReplaceWalkAnims", Callback = v1179 })
				Animations:CreateDropdown({ Name = "Basic walk", Options = x("Walk"), CurrentOption = { "Default" }, Flag = "SelectedWalkAnimation", Callback = W, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured walk", Options = x("InjuredWalk"), CurrentOption = { "Default" }, Flag = "SelectedInjuredWalkAnimation", Callback = W, Searchable = true })
				Animations:CreateToggle({ Name = "Replace idle animations", CurrentValue = false, Flag = "ReplaceIdleAnims", Callback = v1179 })
				Animations:CreateDropdown({ Name = "Basic idle", Options = x("Idle"), CurrentOption = { "Default" }, Flag = "SelectedIdleAnimation", Callback = W, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured idle", Options = x("InjuredIdle"), CurrentOption = { "Default" }, Flag = "SelectedInjuredIdleAnimation", Callback = W, Searchable = true })
				Animations:CreateToggle({ Name = "Fake injured animations", CurrentValue = false, Flag = "FakeInjuredAnims", Callback = v1179 })
				Animations:CreateSection("Ghost animations")
				Animations:CreateToggle({ Name = "Enable ghost animations", CurrentValue = false, Flag = "GhostAnims", Callback = v1179 })
				Animations:CreateDivider()
				Animations:CreateToggle({ Name = "Ghost M1 Animation", CurrentValue = false, Flag = "GhostM1", Callback = v1179 })

				local x = {}

				for x = 1, #t24.Metas.GhostAnimationsOrder do
					local a = t24.Metas.GhostAnimationsOrder[x]
					local x = t24.Metas.GhostAnimations[a]
					local W = {}

					for n, I in ipairs(x) do
						W[n] = I.Flag:sub(#a + 1, #I.Flag)
					end

					Animations:CreateDropdown({ Name = a, Options = W, CurrentOption = {}, Flag = a .. "GhostAnimation", MultipleOptions = true, Callback = v1179, Searchable = true })
				end

				Animations:CreateLabel("This section is not finished.")

				local x = obj.CATSAKEN_ANIMS or {}

				obj.CATSAKEN_ANIMS = x

				for a, a in ipairs({ "Walk", "Run", "Idle" }) do
					local s = Instance.new("Animation")

					x[a] = s
					x["Injured" .. a] = s
				end

				function getselanim(a)
					return v1164.Flags["Selected" .. a .. "Animation"].CurrentOption[1]
				end
				function uwubitch(a)
					xpcall(function()
						local s = a and a:WaitForChild("HumanoidRootPart", 7)

						if (not s) then
							return
						end

						local W = s and a:WaitForChild("Humanoid", 7)

						if (not W) then
							return
						end

						local s = W:WaitForChild("Animator", 5)

						if (not s) then
							return
						end

						if not a.Parent or a.Parent == Spectating then
							return
						end

						local n = (t24:GetSkinConfig(a) or {}).Animations

						if not n then
							n = t24:GetConfig(a) and t24:GetConfig(a).Animations
						end

						if not n then
							return
						end

						local a = table.clone(debug.getupvalue(Actors.ApplySkinDataToActorInfo, 2))
						local I = n.Run or a.Run
						local X = n.Walk or a.Walk
						local r = n.Idle or a.Idle
						local n = a.InjuredRun
						local B = a.InjuredWalk
						local g = a.InjuredIdle

						local function a()
							return s.AnimationPlayed:Connect(function(s)
								if x[s.Animation] then
									return
								end

								local G = nil
								local H

								if s.Animation.AnimationId == n then
									G = "InjuredRun"
								end

								if s.Animation.AnimationId == B then
									G = "InjuredWalk"
								end

								if s.Animation.AnimationId == g then
									G = "InjuredIdle"
								end

								if s.Animation.AnimationId == I then
									G = "Run"
								end

								if s.Animation.AnimationId == X then
									G = "Walk"
								end

								if s.Animation.AnimationId == r then
									G = "Idle"
								end

								if not G then
									return
								end

								local I = v1164.Flags.FakeInjuredAnims.CurrentValue and (G == "Run" or G == "Walk" or G == "Idle")

								if ((G:find("Idle") and not v1164.Flags.ReplaceIdleAnims.CurrentValue) or (G:find("Run") and not v1164.Flags.ReplaceRunAnims.CurrentValue) or (G:find("Walk") and not v1164.Flags.ReplaceWalkAnims.CurrentValue)) and not I then
									return
								end

								H = getselanim(G)

								if I then
									H = (G == "Run" and n) or (G == "Walk" and B) or g
								else
									if H == "Default" then
										return
									end

									if not H then
										return v137("hey!", s.Animation.AnimationId)
									end

									H = q[G][H]
								end

								local n = s.Priority

								s.Priority = Enum.AnimationPriority.Core

								local I = x[G]

								I.AnimationId = H

								local x = W:LoadAnimation(I)

								x.Priority = G:find("Idle") and Enum.AnimationPriority.Idle or Enum.AnimationPriority.Movement
								TrackingConnection:Disconnect()
								x:Play(0.15)
								task.spawn(function()
									while s.IsPlaying do
										if G:find("Run") then
											x:AdjustSpeed(W.WalkSpeed / Sprinting.SprintSpeed)
										elseif G:find("Idle") then
											x:AdjustSpeed(1)
										elseif G:find("Walk") then
											x:AdjustSpeed(W.WalkSpeed / W:GetAttribute("BaseSpeed") or 12)
										end

										RunService.RenderStepped:Wait()
									end

									s.Priority = n
									x:Stop(0.15)
								end)
								TrackingConnection = a()
								t24.Disconnectables[#t24.Disconnectables + 1] = TrackingConnection
							end)
						end

						TrackingConnection = a()
						t24.Disconnectables[#t24.Disconnectables + 1] = TrackingConnection
					end, function(x)
						v137("error in animations tracker func:", tostring(x))
					end)
				end

				t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(x)
					uwubitch(x)
				end)
				uwubitch(LocalPlayer.Character)
			end, function(p297)
				v137("error in animation tab:", tostring(p297))

				if n40 ~= 1015843897 then
					return
				end

				n40 -= 1033
				n9 += 922
				n7 += 1005
				n8 -= 309
				n3 += 1085
				n39 += 237
				n5 = 849735119
				n41 += 691
				n6 = 197019924
				-- (could not be recovered)
			end)
			Game:CreateSection("Map")
			Game:CreateToggle({
				Name = "Spike noclip",
				CurrentValue = false,
				Flag = "SpikeNoclip",
				Callback = function()
					if n5 == 850992924 then
						n40 = 90584893
						n4 += 1295
						n41 = 635257906
						n5 -= 767
						n3 = 197100068
						n6 = 366981046
						n39 -= 1878
						n9 -= 1396
						n1 = 223049972
					else
						task.spawn(function()
							local spilled = {}

							for k, v in t24.Spikes, nil, nil do
								table.remove(t24.Spikes, k)
								v:Destroy()
							end
						end)
					end
				end
			})

			do
				if _G.UNLOCK_TP_ALL then
					Game:CreateButton({
						Name = "Loop Random TP all players",
						ToolTip = "Requries a <b>Dropped</b> Medkit or any bloxy cola to be on the map (not in inventory)",
						Callback = function()
							local t73 = {
								"BloxyCola",
								"Medkit"
							}

							local function v2581(p298)
								if p298:IsA("BasePart") and not p298.Anchored and not p298:IsDescendantOf(workspace.Map.Lobby) then
									for _, v in ipairs(t73) do
										if p298.Name:lower():find(v:lower()) then
											return true
										end
									end
								end

								return false
							end

							local t74 = {}

							for _, descendant in pairs(workspace:GetDescendants()) do
								if v2581(descendant) then
									table.insert(t74, descendant)
								end
							end

							if #t74 > 0 then
								local HumanoidRootPart = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
								local t75 = {}

								for _, v in ipairs(t74) do
									if not v or not v.Parent or v.Anchored then
										continue
									end

									HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 1.5, 0)
									task.wait(0.3)
									table.insert(t75, v)

									continue
								end

								RunService.Heartbeat:Connect(function()
									for _, v in ipairs(t75) do
										if v and v.Parent and not v.Anchored then
											v.AssemblyLinearVelocity = Vector3.new(99999, 99999, 99999)
											v.AssemblyAngularVelocity = Vector3.new(99999, 99999, 99999)
										end
									end
								end)
							end
						end
					})

					if n4 ~= 944310039 then
						n41 = 37579443
						n39 += 1665
						n3 = 440842962
						n7 = 186992523
						n5 = 335671082
						n9 -= 865
						n1 = 831783618
						n40 -= 84
						n6 += 1763
						n2 = 823091895
						n4 = 486963474
						n8 = 376766843
						-- (could not be recovered)
					end

					Game:CreateLabel("The TP ALL effect usually only takes 10 seconds if not instant, but it can take longer")
				end
			end

			Game:CreateToggle({
				Name = "Fullbright",
				CurrentValue = false,
				Flag = "Fullbright",
				Callback = function(p299)
					v243[p299 and "Enable" or "Disable"]()

					if n5 > 700538724 then
						return
					end

					n1 = 1014402511
					n5 += 1672
					n4 = 405888469
					n6 = 304819262
					n8 -= 1295
					n39 -= 375
					n41 = 702509131
					n7 += 1332
					n40 += 1842
					-- (could not be recovered)
				end
			})

			do
				Game:CreateToggle({
					Name = "Disable lobby blur",
					CurrentValue = false,
					Flag = "DisableLobbyBlur",
					Callback = function(p300)
						if t24.GameState == 0 then
							if not Lighting:FindFirstChild("DepthOfField") then
								if n9 < n40 then
									return v137("DisableLobbyBlur: hmmmmm")
								end

								n5 -= 436
								n41 = 213368728
								n39 = 669096254
								n4 = 261936821
								n6 -= 1842
								n40 = 550203800
								n1 = 127611711
								n3 = 418442124
								n9 += 747
								-- (could not be recovered)
							end

							Lighting.DepthOfField.Enabled = not p300
						end
					end,
					ToolTip = "Disable the depth of field effect in the lobby that forsaken added for no reason"
				})
			end

			do
				t24.Disconnectables[#t24.Disconnectables] = Lighting.ChildAdded:Connect(function(child)
					if n5 > 617287958 then
						if v1164.Flags.DisableLobbyBlur.CurrentValue and child.Name == "DepthOfField" then
							child.Enabled = false
						end

						return
					end

					n2 = 513896334
					n9 -= 1211
					n41 -= 85
					n39 -= 1131
					n5 = 824018437
					n6 += 1811
					n1 = 71727645
					n7 += 1521
					n40 -= 675
					-- (could not be recovered)
				end)
			end

			Game:CreateSection("Currency")
			SearchTool = function(p301)
				for _, v in t24.Items, nil, nil do
					if v.Name == p301 and v.ItemRoot.Velocity.Magnitude <= 2 then
						return v
					end
				end

				return nil
			end

			do
				GrabTool = function(p302)
					if t24.GameState ~= 1 then
						return
					end

					if not p302 then
						return
					end

					local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

					if not v1164.Flags.DisableAnticheat.CurrentValue then
						if not LocalPlayer.Character:GetAttribute("acbypass") then
							if not HumanoidRootPart then
								return
							end

							local v2596 = #LocalPlayer.Character:QueryDescendants("Tool#" .. p302.Name) > 0

							if LocalPlayer.Backpack:FindFirstChild(p302.Name) or v2596 then
								return
							end

							pcall(function()
								if HumanoidRootPart and p302:FindFirstChild("ItemRoot") then
									local CFrame_ = HumanoidRootPart.CFrame

									HumanoidRootPart.CFrame = p302.ItemRoot.CFrame

									local now2 = tick()

									repeat
										local ProximityPrompt = p302:FindFirstChild("ItemRoot") and p302.ItemRoot:FindFirstChild("ProximityPrompt")

										if not ProximityPrompt then
											return
										end

										fireproximityprompt(ProximityPrompt)
										task.wait()
									until tick() - now2 >= 4 or p302.Parent == LocalPlayer.Backpack or not p302.Parent

									if tick() - now2 >= 4 then
										return v137("timed out while picking up item")
									end

									HumanoidRootPart.CFrame = CFrame_
								end

								return
							end)

							return
						end
					end
				end
			end

			YoinkLoot = function(p303)
				if IsKiller() then
					return
				end

				if t24.GameState ~= 1 then
					return
				end

				if u1206 or u1207 or u1205 then
					return
				end

				if v1164.Flags.AutoRomania.CurrentValue or p303 then
					u1206 = true
					xpcall(function()
						GrabTool(SearchTool("BloxyCola"), true)
						GrabTool(SearchTool("Medkit"), true)

						return
						-- (could not be recovered)
					end, function(p304)
						if n5 ~= 850992171 then
							v137("error when grabbing items:", tostring(p304))

							return
						end

						n41 -= 1338
						n7 = 260083704
						n5 = 321414064
						n2 = 850819396
						n40 += 2007
						n1 = 848277171
						-- (could not be recovered)
					end)
					u1206 = false
				end
			end
			Game:CreateToggle({
				Name = "Autofarm gingerbread [DISABLED]",
				CurrentValue = false,
				Flag = "AutofarmGingerbread",
				Callback = v1179
			})
			Game:CreateToggle({
				Name = "Autofarm sukkars [DISABLED]",
				CurrentValue = false,
				Flag = "AutofarmSukkars",
				Callback = v1179
			})
			GameStateChanged(function()
				local n125 = 297060108

				if not (t24.GameState ~= 1 or u1205) then
					pcall(YoinkLoot)
					pcall(YoinkGears)
				end

				if n8 == n125 then
					n1 += 1016
					n40 = 714871547
					n3 += 41
					n5 = 401258033
					n4 = 217889140
					n9 = 1070483404
					n41 = 517294298
					n39 = 379621611
					n8 = 593744685
				end
			end)
			Game:CreateSection("Items")
			GrabMedkit = function()
				local Medkit = SearchTool("Medkit")

				if not Medkit then
					return v137("no medkit found")
				end

				GrabTool(Medkit)
			end

			do
				GrabCola = function()
					local BloxyCola = SearchTool("BloxyCola")

					if not BloxyCola then
						return v137("no bloxy cola found")
					end

					GrabTool(BloxyCola)
				end
			end

			local u2603

			BringItems = function()
				if u2603 then
					return
				end

				if t24.GameState ~= 1 then
					return
				end

				if u1205 then
					return
				end

				u2603 = true
				v138("BringItems() result:", pcall(function()
					local CFrame_ = LocalPlayer.Character.HumanoidRootPart.CFrame
					local t76 = {
						"BloxyCola",
						"Medkit"
					}

					local function v2606(p305)
						if not p305:IsA("BasePart") or p305.Anchored or p305:IsDescendantOf(workspace.Map.Lobby) then
							if n5 == n41 then
								n3 = 640772721
								n5 += 231
								n41 += 417
								n6 -= 573
								n8 += 1623
								-- (could not be recovered)
							end
						else
							for _, v in ipairs(t76) do
								if p305.Name:lower():find(v:lower()) then
									return true
								end
							end

							if n5 == n41 then
								n3 = 640772721
								n5 += 231
								n41 += 417
								n6 -= 573
								n8 += 1623
								-- (could not be recovered)
							end
						end

						return false
					end

					local t77 = {}

					for _, descendant in pairs(workspace:GetDescendants()) do
						if v2606(descendant) then
							table.insert(t77, descendant)
						end
					end

					if not (#t77 > 0) then
						return lib:Notify({
							Title = "No",
							Content = "There are not any items on the map to bring"
						})
					end

					local Character_3 = LocalPlayer.Character

					if not Character_3 then
						return
					end

					local HumanoidRootPart = Character_3:WaitForChild("HumanoidRootPart", 2)

					if not HumanoidRootPart then
						return
					end

					local t78 = {}

					for _, v in ipairs(t77) do
						if v and v.Parent and not v.Anchored then
							local now2 = tick()
							local connection2

							connection2 = RunService.Heartbeat:Connect(function()
								if tick() - now2 >= 1 then
									connection2:Disconnect()
								end

								for _, v2 in ipairs(t78) do
									if v2 and v2.Parent and not v2.Anchored then
										v2.CFrame = CFrame_
									else
										connection2:Disconnect()
									end
								end

								return
							end)
							t24.Disconnectables[#t24.Disconnectables + 1] = connection2
							HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 1.5, 0)
							task.wait(0.3)
							table.insert(t78, v)
						end
					end

					LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame_
				end))
				u2603 = false

				return
			end
			Game:CreateButton({
				Name = "Grab medkit",
				Callback = GrabMedkit
			})
			Game:CreateButton({
				Name = "Grab bloxy cola",
				Callback = GrabCola
			})
			Game:CreateButton({
				Name = "Bring items",
				Callback = BringItems,
				ToolTip = "It takes ahold of it, then teleports it. You can use this as killer. Will fail on medkits unless you picked up that item and dropped it before."
			})

			do
				Game:CreateToggle({
					Name = "Auto pickup all items",
					CurrentValue = false,
					Flag = "AutoRomania",
					Callback = function(p306)
						if n3 ~= n2 then
							if p306 then
								pcall(YoinkLoot)
							end

							return
						end

						n2 += 1924
						n3 -= 1590
						n39 = 37016247
						n8 = 712146138
						n41 = 284888037
						n40 = 767243193
						n5 -= 826
						n1 += 337
						n9 += 859
						-- (could not be recovered)
					end
				})
			end

			Game:CreateToggle({
				Name = "Auto pickup near items",
				CurrentValue = false,
				Flag = "AutoPickCloseItems",
				Callback = function(p307)
					if p307 then
						t23.add("AutoPickCloseItems", function(x, x)
							local s = x and x:FindFirstChild("HumanoidRootPart")

							if (s and v1164.Flags.AutoPickCloseItems.CurrentValue) then
								for x, x in ipairs(t24.Items) do
									if (x:FindFirstChild("ItemRoot") and x.ItemRoot:FindFirstChild("ProximityPrompt")) then
										if ((x.ItemRoot.Position - s.Position).Magnitude <= x.ItemRoot.ProximityPrompt.MaxActivationDistance) then
											fireproximityprompt(x.ItemRoot.ProximityPrompt)
										end
									end
								end
							end
						end, 0.1)
					else
						if n5 ~= 850990919 then
							n3 -= 228
							n8 = 1015714308
							n39 -= 798
							n6 += 525
							n4 -= 1458
							n41 += 1478
							n5 = 741579075
							n9 -= 1383
							n40 = 965655917
							-- (could not be recovered)
						end

						t23.disconnect("AutoPickCloseItems")
					end
				end
			})

			do
				Game:CreateToggle({
					Name = "Auto pickup all gears",
					CurrentValue = false,
					Flag = "AutoGetGears",
					Callback = function(p308)
						if p308 then
							if n5 ~= 850990919 then
								n7 -= 1549
								n1 = 963265142
								n39 = 581309715
								n3 = 1006815490
								n40 = 724862936
								n41 += 1272
								n8 -= 1507
								n5 -= 1717
								n2 = 465269042
								-- (could not be recovered)
							end

							pcall(YoinkGears)
						end
					end
				})
			end

			do
				Game:CreateSection("Killer")

				local v2624 = Game:CreateLabel("Killer: @null [Skin]")

				Game:CreateButton({
					Name = "Spectate killer",
					Callback = function()
						if IsKiller() then
							return
						end

						local MainKiller2 = t24.MainKiller

						if MainKiller2 and MainKiller2:FindFirstChild("Humanoid") then
							if workspace.CurrentCamera.CameraSubject == MainKiller2.Humanoid then
								lib:Notify({
									Title = "Spectate",
									Content = "Stopped spectating " .. tostring(MainKiller2),
									Duration = 6,
									Image = "eye"
								})
								workspace.CurrentCamera.CameraSubject = LocalPlayer.Character
							elseif LocalPlayer.Character then
								lib:Notify({
									Title = "Spectate",
									Content = "Spectating " .. tostring(MainKiller2) .. " click again to stop",
									Duration = 6,
									Image = "eye"
								})

								if n7 ~= 420338304 then
									n41 -= 1465
									n5 = 250171298
									n39 += 184
									n8 += 190
									n3 = 595378658
									n40 -= 1077
									n7 = 324196312
									n2 += 883
									n6 = 956739805
									-- (could not be recovered)
								end

								workspace.CurrentCamera.CameraSubject = MainKiller2.Humanoid
							end
						end
					end
				})
				Game:CreateButton({
					Name = "Teleport to killer",
					Callback = function()
						local MainKiller2 = t24.MainKiller

						if MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character then
							if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								LocalPlayer.Character.HumanoidRootPart.CFrame = MainKiller2.HumanoidRootPart.CFrame
							end
						end
					end
				})
				Game:CreateToggle({
					Name = "Farm survivors",
					CurrentValue = false,
					Flag = "AutoFarmSurvivors",
					Callback = function()
						task.spawn(function()
							while task.wait() do
								pcall(function()
									if (not v1164.Flags.AutoFarmSurvivors.CurrentValue) then
										return
									elseif (IsKiller()) then
										local x = t24.Survivors[math.random(1, #t24.Survivors)]

										while x.Parent and x:FindFirstChild("Humanoid") and x:FindFirstChild("HumanoidRootPart") and x.Humanoid.Health > 0 do
											local n = x.HumanoidRootPart.CFrame

											LocalPlayer.Character.HumanoidRootPart.CFrame = n
											module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
											task.wait()

											if (not v1164.Flags.AutoFarmSurvivors.CurrentValue) then
												return
											end
										end
									end
								end)
							end
						end)

						return
						-- (could not be recovered)
					end,
					ToolTip = "Fair warning - This is not an AI auto-hunt. It teleports to all players and slams the m1 key until it kills them."
				})
				Game:CreateToggle({
					Name = "Bypass killer walls",
					CurrentValue = false,
					Flag = "BypassKillerWalls",
					Callback = function(x)if IsKiller()then return;end;for a,a in ipairs(workspace.Map:QueryDescendants("\z \66asePa\114t\u{005B}\67ol\x6Ci\s\i\on\71\114oup=Kil\108er\115\u{005D}"))do a.CanCollide=not x;end;end,
					ToolTip = "stand in a killer door for 3 seconds = KICK"
				})
				t24.Disconnectables[#t24.Disconnectables + 1] = workspace.Map.DescendantAdded:Connect(function(descendant)
					if descendant:IsA("BasePart") and descendant.CollisionGroup == "Killers" and v1164.Flags.BypassKillerWalls.CurrentValue then
						descendant.CanCollide = false

						if not descendant:FindFirstChild("PathfindingModifier") then
							local PathfindingModifier = Instance.new("PathfindingModifier")

							PathfindingModifier.Label = "Impassable"
							PathfindingModifier.Parent = descendant
						end
					end

					return
					-- (could not be recovered)
				end)

				for _, v in ipairs(workspace.Map:QueryDescendants("BasePart[CollisionGroup=Killers]")) do
					if not v:FindFirstChild("PathfindingModifier") then
						local PathfindingModifier = Instance.new("PathfindingModifier")

						PathfindingModifier.Label = "Impassable"
						PathfindingModifier.Parent = v
					end
				end

				Game:CreateSection("Survivors", "Right")

				local v2635 = Game:CreateLabel("Survivors: " .. #t24.Survivors)

				task.spawn(function()
					while task.wait(0.5) do
						v2635:Set("Survivors: " .. #t24.Survivors)

						local x = t24.MainKiller

						if x then
							v2624:Set("Killer: @" .. x:GetAttribute("Username") .. " [" .. x.Name .. "]")
						else
							v2624:Set("Killer: None")
						end
					end
				end)
			end

			do
				Game:CreateButton({
					Name = "Teleport To Random Survivor",
					Callback = function()
						if #t24.Survivors == 0 then
							return
						end

						local HumanoidRootPart = #t24.Survivors == 1 and t24.Survivors[1].HumanoidRootPart

						if not HumanoidRootPart then
							local exitTo

							while true do
								local v2639 = t24.Survivors[math.random(1, #t24.Survivors)]

								if v2639 and v2639 ~= LocalPlayer.Character then
									HumanoidRootPart = v2639:FindFirstChild("HumanoidRootPart")
								end

								if n5 == 850992780 then
									break
								end

								task.wait()

								if not HumanoidRootPart then
									if not ((IsKiller() and 1 or 2) > #t24.Survivors) and not u48 then
										continue
									end

									exitTo = 1

									break
								end

								exitTo = 1

								break
							end

							if exitTo ~= 1 then
								n7 += 1054
								n4 -= 978
								n2 = 630771520
								n40 += 520
								n41 += 418
								n39 = 289233239
								n8 -= 1238
								n5 = 530224278
								n6 = 122660892

								if nil < nil then
									while nil < nil do
									end
								end
								-- (could not be recovered)
							end
						end

						if HumanoidRootPart and LocalPlayer.Character then
							if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								LocalPlayer.Character.HumanoidRootPart.CFrame = HumanoidRootPart.CFrame
							end
						end
					end
				})
			end

			Game:CreateSection("Emotes", "Left")

			do
				local t79 = {}
				local t80 = {}

				for _, child in pairs(Assets.Emotes:GetChildren()) do
					local module2 = require(child)

					t80[module2.DisplayName] = module2
					table.insert(t79, module2.DisplayName)
				end

				table.sort(t79)

				local u2645

				Game:CreateDropdown({
					Name = "Select emote",
					Options = t79,
					CurrentOption = { t79[1] },
					Flag = "SelectedEmote",
					Callback = v1179,
					Searchable = true
				})
				Game:CreateButton({
					Name = "Fake emote start/stop (NO vfx, NO sfx)",
					Callback = function()
						if u2645 then
							local v2646

							if u2645.IsPlaying then
								u2645:Stop()

								local Destroy = u2645.Destroy

								v2646 = Destroy
								Destroy(u2645)
								u2645 = nil
							else
								local Animation = Instance.new("Animation")
								local AssetID = t80[v1164.Flags.SelectedEmote.CurrentOption[1]].AssetID

								Animation.AnimationId = typeof(AssetID) == "table" and AssetID[math.random(1, #AssetID)] or AssetID

								local v2650 = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)

								v2646 = v2650
								v2650:Play()
								u2645 = v2650
							end

							if n4 == 944310604 then
								n4 -= 62
								n39 += 771
								n5 = 336951692
								n8 = 18067106
								n2 += 1719
								n7 = 610302064
								n41 -= 932
								n40 = 547679987
								n3 = 181659839
								n3[v2646] = -73
								n3[v2646] = nil --[[ constant not decoded ]]
								-- (could not be recovered)
							end
						else
							local Animation = Instance.new("Animation")
							local AssetID = t80[v1164.Flags.SelectedEmote.CurrentOption[1]].AssetID

							Animation.AnimationId = typeof(AssetID) == "table" and AssetID[math.random(1, #AssetID)] or AssetID

							local v2653 = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)
							local v2654 = v2653

							v2653:Play()
							u2645 = v2653
						end
					end
				})
			end

			Antis:CreateSection("Anti affects")

			do
				local n126

				HookEffect = function(p309, p310)
					n126 = 954080987

					local n127

					local function v2657()
						setthreadidentity(2)
						t24.NetworkConnections.StatusRemoved.Callback(p310)
						setthreadidentity(9)

						if n126 == 954080987 then
							return
						end

						n2 = 747341625
						n5 = 514618519
						n126 = 386823442
						n4 -= 1360
						n1 = 458530210
						n40 = 984065869
						-- (could not be recovered)
					end
					local function v2658()
						n127 = 302071915

						if n41 ~= n127 then
							v137("error removing effect", p310, "in HookEffect")

							return
						end

						n5 = 742759452
						n126 += 1893
						n2 = 650480645
						n40 = 255645562
						n41 += 995
						n127 = 191485000
						n4 -= 1951
						-- (could not be recovered)
					end

					xpcall(v2657, v2658)

					if n2 < n9 then
						v39(p309.Applied, newcclosure(function()
							setthreadidentity(2)
							task.spawn(function()
								setthreadidentity(8)

								if not v1164.Flags.Antis_EnableNotifications.CurrentValue then
									return
								end

								lib:Notify({
									Title = ("Anti %*"):format(p310),
									Content = ("Blocked a %* effect from happening"):format(p310),
									Duration = 3,
									Image = "ban"
								})

								if n5 ~= 850990919 then
									n5 -= 69
									n1 -= 1283
									n40 += 703
								end
							end)

							if n5 < n126 then
								setthreadidentity(2)
								coroutine.yield()

								return
							end

							n5 = 620707452
							n7 = 824179325
							n1 = 1058500891
							n39 = 401812649
							n126 += 2032
							n40 -= 1444

							local v2659 = table.pack(F_0())

							if not v2659[1] then
								-- (could not be recovered)
							end
							-- (could not be recovered)
						end))

						return
					end

					n40 = 869822773
					n4 -= 1146
					n7 = 927224268
					n39 = 144942307
					n2 = 304035179
					n1 += 1684
					n41 = 841198109
					n5 = 527780955
					n9 += 755
					n126 += 1979
					-- (could not be recovered)
				end
			end

			RestoreEffect = function(p311)
				if isfunctionhooked(p311.Applied) then
					v47(p311.Applied)
				end

				if n6 ~= 89954588 then
					return
				end

				n39 = 730874416
				n3 = 513608824
				n7 += 1866
				n41 = 861318615
				n40 = 840153827
				n9 -= 516
				n4 = 172528315
				n5 = 159126582
				n6 += 377
				-- (could not be recovered)
			end
			CreateAntiFeatureCallback = function(p312, p313, p314)
				local n128 = 1000284074

				if n40 ~= 1015844081 then
					local function v2661(p315)
						if p315 then
							if not (n4 < n128) then
								n41 -= 165
								n128 += 1359
								n5 = 216979729
								n4 = 530112659
								n7 = 79781794
								n6 += 618

								return
							end

							HookEffect(p312, p313)
						else
							RestoreEffect(p312, p313, p314)
						end
					end

					return v2661
				end

				n4 = 772867026
				n2 = 415587107
				n9 = 581457117
				n39 = 98530834
				n5 -= 705
				n40 = 305630899
				n6 -= 6
				n7 = 678395588
				n41 += 1226
				-- (could not be recovered)
			end
			Antis:CreateToggle({
				Name = "Anti slowness",
				CurrentValue = false,
				Flag = "AntiSlowness",
				Callback = CreateAntiFeatureCallback(Slowness, "slowness", "Slowness")
			})
			Antis:CreateToggle({
				Name = "Anti subspace",
				CurrentValue = false,
				Flag = "AntiSubspace",
				Callback = CreateAntiFeatureCallback(Subspaced, "subspace", "Subspaced")
			})
			Antis:CreateToggle({
				Name = "Anti blindness",
				CurrentValue = false,
				Flag = "AntiBlindness",
				Callback = CreateAntiFeatureCallback(Blindness, "blindness", "Blindness")
			})
			Antis:CreateToggle({
				Name = "Anti glitched",
				CurrentValue = false,
				Flag = "AntiGlitched",
				Callback = CreateAntiFeatureCallback(Glitched, "glitched", "Glitched")
			})
			Antis:CreateToggle({
				Name = "Anti slatekin slow/fov",
				CurrentValue = false,
				Flag = "AntiSlateskin",
				Callback = CreateAntiFeatureCallback(Slateskin, "slateskin", "Slateskin")
			})
			Antis:CreateToggle({
				Name = "Anti nausea",
				CurrentValue = false,
				Flag = "AntiNausea",
				Callback = CreateAntiFeatureCallback(Nausea, "nausea", "Nausea")
			})
			Antis:CreateToggle({
				Name = "Anti stun",
				CurrentValue = false,
				Flag = "AntiStun",
				Callback = CreateAntiFeatureCallback(Stunned, "stun", "Stunned")
			})
			Antis:CreateToggle({
				Name = "Anti exhaust",
				CurrentValue = false,
				Flag = "AntiExhaust",
				Callback = CreateAntiFeatureCallback(Exhausted, "exhaust", "Exhausted")
			})
			Antis:CreateSection("Antis misc")
			Antis:CreateToggle({
				Name = "Anti clone 007n7",
				CurrentValue = false,
				Flag = "AntiClone007n7",
				Callback = function()
					if t24.GameState ~= 1 then
						return
					end

					for _, child in pairs(workspace.Map.Ingame:GetChildren()) do
						if child.Name == "007n7" and child:GetAttribute("Username") ~= LocalPlayer.Name then
							child:Destroy()
							v137("destroying a fake 007n7")

							if v1164.Flags.Antis_EnableNotifications.CurrentValue then
								lib:Notify({
									Title = "Anti Clone",
									Content = "Deleted a 007n7 clone",
									Duration = 3,
									Image = "ban"
								})
							end
						end
					end
				end
			})
			Antis:CreateToggle({
				Name = "Anti hallucinations",
				CurrentValue = false,
				Flag = "AntiHallu",
				Callback = function(p316)
					if p316 then
						for _, child in ipairs(StatusEffects.KillerExclusive.Hallucination.HallucinationClass:GetChildren()) do
							local v2666

							v2666 = v39(require(child).Init, newcclosure(function(...)
								setthreadidentity(2)

								if not v1164.Flags.AntiHallu.CurrentValue then
									return v2666(...)
								end

								task.spawn(function()
									setthreadidentity(8)

									if not v1164.Flags.Antis_EnableNotifications.CurrentValue then
										return
									end

									lib:Notify({
										Title = "Anti Hallucinations",
										Content = ("Blocked a hallucination (%*) from happening"):format(child),
										Duration = 3.5,
										Image = "ban"
									})
								end)
								setthreadidentity(2)
								coroutine.yield()

								return
								-- (could not be recovered)
							end))
						end
					else
						for _, child in ipairs(StatusEffects.KillerExclusive.Hallucination.HallucinationClass:GetChildren()) do
							local Init = require(child).Init

							if isfunctionhooked(Init) then
								v47(Init)
							end

							continue
							-- (could not be recovered)
						end
					end
				end,
				ToolTip = "Fake noli, incorrect timer, fake dispenser, etc"
			})
			Antis:CreateToggle({
				Name = "Anti void star pull",
				CurrentValue = false,
				Flag = "AntiNoliPull",
				Callback = v1179,
				ToolTip = "Removes the pulling affect when you get hit by the gayish void star"
			})
			Antis:CreateToggle({
				Name = "Anti azure vine pull",
				CurrentValue = false,
				Flag = "AntiVinePull",
				Callback = v1179,
				ToolTip = "Lets you walk freely when you get trapped by a vine from azure"
			})
			Antis:CreateToggle({
				Name = "Anti AFK kill",
				CurrentValue = false,
				Flag = "AntiKillAFK",
				Callback = v1179,
				ToolTip = "Prevents you dying after being afk for 60 seconds"
			})
			Antis:CreateToggle({
				Name = "Anti slow on landing",
				CurrentValue = false,
				Flag = "AntiSlowOnLanding",
				Callback = function(p317)
					if LocalPlayer.Character then
						LocalPlayer.Character:SetAttribute("NoFallSlow", p317)
					end

					local n129 = 793394671

					if n41 < n129 then
						return
					end

					n3 = 806804732
					n2 -= 672
					n41 -= 1195
					n6 = 748837360
					n40 = 977705055
					n39 = 569762921
					n5 = 544383604
					n8 = 813552260
					n4 += 1852
					upv147 = nil --[[ constant not decoded ]]
					-- (could not be recovered)
				end,
				ToolTip = "Makes you not slow when you fall from any height"
			})

			do
				Antis:CreateToggle({
					Name = "Anti footsteps",
					CurrentValue = false,
					Flag = "AntiFootsteps",
					Callback = function(p318)
						if LocalPlayer.Character then
							LocalPlayer.Character:SetAttribute("FootstepsMuted", p318)
						end
					end
				})
			end

			do
				local KB = t24.NetworkConnections.KB
				local v2672 = clonefunction(KB.Callback)

				Antis:CreateToggle({
					Name = "Anti knockback",
					CurrentValue = false,
					Flag = "AntiKB",
					Callback = function(p319)
						if n2 < n3 then
							if p319 then
								KB.Callback = function()
									local spilled = {}

									setthreadidentity(8)

									if v1164.Flags.Antis_EnableNotifications.CurrentValue then
										return lib:Notify({
											Title = "Anti Knockback",
											Content = "Voided some knockback",
											Duration = 2,
											Image = "ban"
										})
									end

									return
									-- (could not be recovered)
								end
							else
								KB.Callback = v2672
							end

							return
						end

						n5 += 1832
						n2 += 1852
						n41 += 864
						n3 -= 35
						n4 += 52
						n40 = 944885321
						n9 = 713121632
						n7 = 707863780
						n39 -= 1338
						-- (could not be recovered)
					end
				})
			end

			do
				local u2674

				Antis:CreateToggle({
					Name = "Anti infernal cry",
					CurrentValue = false,
					Flag = "AntiInfernalCry",
					Callback = function(p320)
						local attribute = Killers3:FindFirstChild("Sixer") and Killers3.Sixer:GetAttribute("Username")

						if attribute then
							local v2676 = t24.NetworkConnections[attribute .. "666ShockwaveHit"]

							if v2676 then
								if p320 then
									u2674 = clonefunction(v2676.Callback)
									v2676.Callback = function()
										setthreadidentity(2)
										t24.NetworkConnections.StatusRemoved.Callback("Blindness")
										setthreadidentity(8)

										if v1164.Flags.Antis_EnableNotifications.CurrentValue then
											return lib:Notify({
												Title = "Anti infernal cry",
												Content = "Blocked infernal cry effect",
												Duration = 3,
												Image = "ban"
											})
										end

										return
									end
								elseif u2674 then
									v2676.Callback = u2674
								end
							end
						end
					end
				})

				local v2677

				v2677 = v39(module.SetConnection, newcclosure(function(p321, ...)
					local t81 = { ... }
					local n130
					local v2680 = t81[1]
					local v2681 = v2680
					local s14 = "666ShockwaveHit"

					if v2680.find(v2681, s14) then
						if n1 == 525279905 then
							local v2683
							local v2684
							local v2685
							local v2686
							local v2687

							n2 = 909373411
							n1 = 155169238
							n41 += 1344
							n39 = 465493974
							n5 += 1750
							n3 = 21384592
							n9 -= 1424

							local v2688 = n40 + 1256

							n40 = v2688
							n4 = 875947396

							return v2688(v2681, s14, nil, nil, v2683, v2684, v2685, v2686, v2687, nil)
						end

						v138("hey", t81[1])

						local v2689

						v2689 = v39(t81[3], newcclosure(function()
							n130 = 79230804

							if v1164.Flags.AntiInfernalCry.CurrentValue then
								setthreadidentity(2)
								t24.NetworkConnections.StatusRemoved.Callback("Blindness")
								setthreadidentity(8)

								if v1164.Flags.Antis_EnableNotifications.CurrentValue then
									return lib:Notify({
										Title = "Anti infernal cry",
										Content = "Blocked infernal cry effect",
										Duration = 6,
										Image = "ban"
									})
								end

								return
							end

							if n130 < n2 then
								setthreadidentity(2)

								return v2689()
							end

							n39 = 48133990
							n5 = 290552396
							n41 = 154708399
							n40 += 1279
							n130 -= 38
							n2 = 462898880
							n4 -= 771
							n9 = 321704059
							upv154 = nil --[[ constant not decoded ]]
							-- (could not be recovered)
						end))
					end

					return v2677(p321, unpack(t81))
				end))
			end

			do
				Antis:CreateToggle({
					Name = "Anti invisible players",
					CurrentValue = false,
					Flag = "AntiInvisPlayers",
					Callback = v1179
				})

				local function v2690(p322)
					for _, descendant in pairs(p322:GetDescendants()) do
						local isBasePart = descendant:IsA("BasePart")
						local isDecal = descendant:IsA("Decal") or descendant:IsA("Texture")
						local isParticleEmitter = descendant:IsA("ParticleEmitter")
						local isTrail = descendant:IsA("Trail")

						if isBasePart or isDecal then
							local v2697 = isBasePart and "Color" or isDecal and "Color3"

							if descendant.Transparency < 1 and v2697 and descendant[v2697] then
								if isBasePart then
									descendant.CastShadow = true
								end

								if not descendant:FindFirstAncestorOfClass("Accessory") then
									local v2698 = descendant[v2697]
									local v2699 = (v2698.R + v2698.G + v2698.B) / 3
									local v2700 = 1 - (math.abs(v2698.R - v2699) + math.abs(v2698.G - v2699) + math.abs(v2698.B - v2699)) / 3
								end

								descendant.Transparency = 0
							end
						elseif isParticleEmitter then
							descendant.Transparency = NumberSequence.new(0)
						elseif isTrail then
							if descendant.Enabled == false then
								descendant.Enabled = true
							end
						end
					end

					if not v1164.Flags.Antis_EnableNotifications.CurrentValue then
						return
					end

					if n1 ~= 525279855 then
						lib:Notify({
							Title = "Anti invisible players",
							Content = string.format("Revealed %s (%s)", tostring(p322:GetAttribute("Username")), p322.Name),
							Image = "ghost"
						})

						return
					end

					n41 = 628380626
					n40 -= 1010
					n8 += 1700
					n39 -= 1953
					n7 += 1572
					n3 -= 926
					n1 = 749262109
					n6 += 774
					n5 = 56731947
					-- (could not be recovered)
				end
				local function v2701(player)
					local n131 = 241796422

					local function v2703(character)
						t24.Disconnectables[#t24.Disconnectables + 1] = character:GetAttributeChangedSignal("InvisibilityTransparency"):Connect(function()
							if not (player ~= LocalPlayer or v1164.Flags.AntiInvisSelf.CurrentValue) then
								return
							end

							if v1164.Flags.AntiInvisPlayers.CurrentValue and character:GetAttribute("InvisibilityTransparency") ~= nil then
								v2690(character)
							end

							return
							-- (could not be recovered)
						end)

						if v1164.Flags.AntiInvisPlayers.CurrentValue and character:GetAttribute("InvisibilityTransparency") ~= nil and (player ~= LocalPlayer or v1164.Flags.AntiInvisSelf.CurrentValue) then
							v2690(character)
						end
					end

					if n131 ~= n6 then
						if player.Character then
							v2703(player.Character)
						end

						t24.Disconnectables[#t24.Disconnectables + 1] = player.CharacterAdded:Connect(v2703)

						return
					end

					n131 -= 121
					n2 -= 1339
					n40 = 244476526
					n41 += 1160
					n39 -= 1866
					n1 = 567738053
					n6 = 477369303
					n3 = 602085604
					n7 -= 1762
					n5 = 146348061
					-- (could not be recovered)
				end

				for _, player in pairs(Players:GetPlayers()) do
					v2701(player)
				end

				t24.Disconnectables[#t24.Disconnectables + 1] = Players.PlayerAdded:Connect(v2701)
			end

			do
				local function v2706(p323)
					if not p323 then
						return
					end

					local n132 = 947905296

					if p323.Parent == Spectating then
						return
					end

					if p323.PrimaryPart then
						t24.Disconnectables[#t24.Disconnectables + 1] = p323.PrimaryPart.ChildAdded:Connect(function(child)
							if child:IsA("BodyPosition") then
								if child.MaxForce == Vector3.new(10000, 7000, 10000) and v1164.Flags.AntiNoliPull.CurrentValue and t24.MainKiller.Name == "Noli" then
									child:Destroy()

									if not v1164.Flags.Antis_EnableNotifications.CurrentValue then
										return
									end

									lib:Notify({
										Title = "Anti Void Star Pull",
										Content = "Deleted noli pull affect",
										Duration = 6,
										Image = "ban"
									})
								elseif child.D == 1250 and v1164.Flags.AntiVinePull.CurrentValue and t24.MainKiller.Name == "Azure" then
									child:Destroy()

									if not v1164.Flags.Antis_EnableNotifications.CurrentValue then
										return
									end

									lib:Notify({
										Title = "Anti Azure Vine Pull",
										Content = "Deleted vine pull affect",
										Duration = 6,
										Image = "ban"
									})
								end
							end
						end)

						local Position = p323.HumanoidRootPart.Position
						local now2 = tick()

						if n1 == n39 then
							n5 = 247284658
							n1 = 716437617
							n6 = 200651196
							n8 += 1493
							n4 = 361487323
							n2 -= 2031
							n132 = 461990842
							n39 += 165
							n41 = 531405500
							n40 = 66975183
							-- (could not be recovered)
						end

						task.spawn(function()
							while p323.Parent and task.wait(1) and p323:FindFirstChild("HumanoidRootPart") do
								if p323.HumanoidRootPart.Position ~= Position then
									now2 = tick()
									Position = p323.HumanoidRootPart.Position
								elseif tick() - now2 >= 55 and v1164.Flags.AntiKillAFK.CurrentValue then
									v137("youre gonna die of afk bubba")
									p323.Humanoid:MoveTo(p323.HumanoidRootPart.Position + Vector3.new(0, 0, 0.1))
									now2 = tick()
								end
							end

							if not (n39 < n132) then
								n41 -= 522
								n132 += 1506
								n1 = 549092338
								n39 -= 390
								n5 = 864550488
							end
						end)
					end

					createm1part(p323)
				end

				t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(character)
					v2706(character, true)

					return
					-- (could not be recovered)
				end)
				v2706(LocalPlayer.Character)
			end

			Antis:CreateSection("Antis Settings", "Left")
			Antis:CreateToggle({
				Name = "Notify on block",
				CurrentValue = true,
				Flag = "Antis_EnableNotifications",
				Callback = v1179,
				TextMode = true
			})
			Antis:CreateToggle({
				Name = "Apply anti invis to self",
				CurrentValue = false,
				Flag = "AntiInvisSelf",
				Callback = v1179,
				ToolTip = "When anti invisible players is on, this will make your character visible as well",
				TextMode = true
			})

			do
				local v2710 = true
				local u2711
				local u2712
				local u2713
				local u2714
				local connection2
				local n133 = 0
				local s15
				local n134 = 0
				local Folder
				local t82 = {}

				local function v2721()
					if Folder then
						Folder:Destroy()
						Folder = nil
					end

					table.clear(t82)

					if n7 > 171168302 then
						return
					end

					n40 = 863961804
					n7 = 20189440
					n2 = 964207231
					n8 += 472
					n41 -= 637
					n39 -= 1045
					n6 = 154982838
					n9 = 731030872
					n5 -= 1050
					-- (could not be recovered)
				end
				local function v2722(p324)
					local n135 = 711522492

					v2721()

					if not v1164.Flags.AI_Waypoints_Vis.CurrentValue then
						return
					end

					Folder = Instance.new("Folder")
					Folder.Name = "AIWaypoints"
					Folder.Parent = workspace.CurrentCamera

					for i, v in ipairs(p324) do
						local Part4 = Instance.new("Part")

						Part4.Shape = Enum.PartType.Ball
						Part4.Size = Vector3.new(0.9, 0.9, 0.9)
						Part4.Anchored = true
						Part4.CanCollide = false
						Part4.CanTouch = false
						Part4.CanQuery = false
						Part4.Material = Enum.Material.Neon

						if n8 ~= n135 then
							Part4.Color = v.Action == Enum.PathWaypointAction.Jump and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(0, 255, 120)
							Part4.Position = v.Position + Vector3.new(0, 0.5, 0)
							Part4.Parent = Folder
							t82[i] = Part4

							continue
						end

						n3 -= 1965
						n5 -= 1928
						n4 = 239375156
						n8 += 1971
						n40 -= 1766
						n6 = 982918878
						n9 = 74164672
						n39 = 558794792
						n41 = 811661519
						-- (could not be recovered)
					end
				end
				local function v2727(p325)
					local v2728 = t82[p325]

					if v2728 then
						v2728:Destroy()
						t82[p325] = nil
					end
				end
				local function v2729()
					n134 += 1

					if connection2 then
						connection2:Disconnect()
						connection2 = nil
					end

					u2714 = nil
					u2713 = nil
					v2721()

					local Character_3 = LocalPlayer.Character
					local Humanoid = Character_3 and Character_3:FindFirstChild("Humanoid")
					local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")

					if Humanoid and HumanoidRootPart then
						Humanoid:MoveTo(HumanoidRootPart.Position)
					end
				end
				local function v2733(p326, p327, p328, p329)
					for i = 2, #p326 do
						local v2735 = p326[i]

						p327:MoveTo(v2735.Position)

						local now2 = tick()
						local now3 = tick()
						local Position = p328.Position
						local exitTo

						while true do
							if p329 ~= n134 or u48 or p327.Health <= 0 then
								exitTo = 1

								break
							end

							local v2740 = p328.Position - v2735.Position

							if Vector3.new(v2740.X, 0, v2740.Z).Magnitude < 3.5 and math.abs(v2740.Y) < 5 then
								exitTo = 2

								break
							end

							local now4 = tick()

							if now4 - now3 >= 0.5 then
								if (p328.Position - Position).Magnitude < 0.5 then
									p327.Jump = true
									p327:MoveTo(v2735.Position)
								end

								Position = p328.Position
								now3 = now4
							end

							if not (now4 - now2 > 2.5) then
								task.wait()

								continue
							end

							break
						end

						if exitTo == 1 then
							return
						end

						if exitTo == 2 then
							v2727(i)

							continue
						end

						s15 = "Timeout"
						u2713 = nil
						n133 = 0

						if v2710 then
							v137("[AI] waypoint", i, "timed out")
						end

						return
					end

					if p329 == n134 then
						u2713 = nil
						u2714 = nil
						v2721()
					end
				end
				local function v2742(p330, p331)
					local Humanoid = p331:FindFirstChild("Humanoid")
					local HumanoidRootPart = p331:FindFirstChild("HumanoidRootPart")

					if not Humanoid or not HumanoidRootPart then
						return
					end

					if u2712 ~= p331 then
						v2729()
						u2711 = PathfindingService:CreatePath({
							AgentRadius = 2,
							AgentHeight = 5,
							AgentCanJump = false,
							AgentCanClimb = false,
							WaypointSpacing = 3
						})
						u2712 = p331
					end

					local now2 = tick()

					if now2 - n133 < 0.2 then
						return
					end

					if u2713 and (p330 - u2713).Magnitude < 3 and now2 - n133 < 2 then
						return
					end

					n133 = now2

					local ok, result = pcall(u2711.ComputeAsync, u2711, HumanoidRootPart.Position, p330)
					local n136 = 115218054
					local v2749, s16, v2751, v2752, v2753

					if ok and u2711.Status == Enum.PathStatus.Success then
						local GetWaypoints = u2711.GetWaypoints
						local v2756 = GetWaypoints
						local v2757 = GetWaypoints(u2711)

						if v2757 and #v2757 >= 2 then
							n134 += 1

							local v2758 = n134

							if connection2 then
								connection2:Disconnect()
							end

							connection2 = u2711.Blocked:Connect(function(p332)
								if v2758 == n134 then
									s15 = "Blocked"
									u2713 = nil
									n133 = 0

									if v2710 then
										v137("[AI] path blocked at", p332)
									end
								end

								if not (n136 < n3) then
									n4 = 539863960
									n8 = 868840461
									n3 = 185229503
									n136 = 485922121
									n6 = 519788425
									n5 = 424652116
									n39 = 901562311
								end
							end)
							u2713 = p330
							u2714 = v2757
							s15 = nil
							v2722(v2757)
							task.spawn(v2733, v2757, Humanoid, HumanoidRootPart, v2758)

							return
						end

						u2713 = nil

						local v2759 = ok

						if v2759 then
							v2759 = #(v2757 or {}) < 2
						end

						s15 = v2759 and u2711.Status == Enum.PathStatus.Success and "NoWaypoints" or "ComputationError"

						if v2710 then
							v2749 = v137
							s16 = "[AI] Run failed"
							v2751 = s15

							if ok then
								local Status = u2711.Status or result

								v2749(s16, v2751, Status)

								if s15 == "ComputationError" then
									v2752 = v1164.Flags.OnPathFailedAI.CurrentOption[1]

									if v2752 == "Reset character" and tick() - t24.RoundStart >= 10 then
										Humanoid.Health = 0
									elseif v2752 == "Walk in random direction" then
										v2753 = math.random() * math.pi * 2
										Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2753), 0, math.sin(v2753)) * 8)
									end
								else
									Humanoid:MoveTo(p330)
								end
							else
								v2749(s16, v2751, result)

								if s15 ~= "ComputationError" then
									Humanoid:MoveTo(p330)

									return
								end

								v2752 = v1164.Flags.OnPathFailedAI.CurrentOption[1]

								if v2752 == "Reset character" and tick() - t24.RoundStart >= 10 then
									Humanoid.Health = 0
								elseif v2752 == "Walk in random direction" then
									v2753 = math.random() * math.pi * 2
									Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2753), 0, math.sin(v2753)) * 8)
								end
							end
						else
							if s15 ~= "ComputationError" then
								Humanoid:MoveTo(p330)

								return
							end

							v2752 = v1164.Flags.OnPathFailedAI.CurrentOption[1]

							if v2752 == "Reset character" and tick() - t24.RoundStart >= 10 then
								Humanoid.Health = 0
							elseif v2752 == "Walk in random direction" then
								v2753 = math.random() * math.pi * 2
								Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2753), 0, math.sin(v2753)) * 8)
							end
						end

						return
					end

					u2713 = nil
					s15 = ok and #{} < 2 and u2711.Status == Enum.PathStatus.Success and "NoWaypoints" or "ComputationError"

					if v2710 then
						v2749 = v137
						s16 = "[AI] Run failed"
						v2751 = s15

						if ok then
							v2749(s16, v2751, u2711.Status or result)

							if s15 ~= "ComputationError" then
								Humanoid:MoveTo(p330)

								return
							end

							v2752 = v1164.Flags.OnPathFailedAI.CurrentOption[1]

							if v2752 == "Reset character" and tick() - t24.RoundStart >= 10 then
								Humanoid.Health = 0
							elseif v2752 == "Walk in random direction" then
								v2753 = math.random() * math.pi * 2
								Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2753), 0, math.sin(v2753)) * 8)
							end

							return
						end

						v2749(s16, v2751, result)
					end

					if s15 ~= "ComputationError" then
						Humanoid:MoveTo(p330)

						return
					end

					v2752 = v1164.Flags.OnPathFailedAI.CurrentOption[1]

					if n5 ~= n39 then
						if v2752 == "Reset character" and tick() - t24.RoundStart >= 10 then
							Humanoid.Health = 0
						elseif v2752 == "Walk in random direction" then
							v2753 = math.random() * math.pi * 2
							Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2753), 0, math.sin(v2753)) * 8)
						end

						return
					end

					n39 = 651098739
					n1 -= 1802
					n8 -= 1834
					n41 = 968568073
					n4 += 271
					n3 -= 1024
					n6 += 412
					n5 += 278
					n40 -= 482
					-- (could not be recovered)
				end

				autoplaymgr = function()
					Autoplay:CreateSection("Survivor AI")

					local n137 = 562319565

					Autoplay:CreateToggle({
						Name = "Autoplay survivor",
						CurrentValue = false,
						Flag = "AI_Survivor_Toggle",
						Callback = function(p333)
							if not p333 then
								if not IsKiller() then
									v2729()
								end
							end

							if n137 == 562319565 then
								return
							end

							n5 -= 1205
							n137 = 952337713
							n3 += 1971
							n2 = 1062830760
							n41 = 470846885
							-- (could not be recovered)
						end,
						ToolTip = "Does gens automatically and walks to random places when in range of killer. Don't expect to win by using this, its just something"
					})
					Autoplay:CreateSlider({
						Name = "Killer avoidance range",
						Range = {
							10,
							100
						},
						Increment = 1,
						Suffix = "",
						CurrentValue = 20,
						Flag = "AI_Survivor_KillerRange",
						Callback = v1179
					})
					Autoplay:CreateDropdown({
						Name = "Generator priority",
						Options = {
							"Lowest progress",
							"Highest progress",
							"Closest"
						},
						CurrentOption = { "Closest" },
						Flag = "GeneratorPriority",
						Callback = v1179
					})
					Autoplay:CreateDropdown({
						Name = "When to sprint",
						Options = {
							"Running from killer",
							"Always"
						},
						CurrentOption = { "Running from killer" },
						Flag = "WhenToSprint",
						Callback = v1179
					})
					Autoplay:CreateSection("Killer AI")
					Autoplay:CreateToggle({
						Name = "Autoplay killer",
						CurrentValue = false,
						Flag = "AI_Killer_Toggle",
						Callback = function(p334)
							if not p334 and IsKiller() then
								v2729()
							end

							return
						end,
						ToolTip = "Hunts survivors automatically and tries to kill them with M1"
					})
					Autoplay:CreateSection("Settings")
					Autoplay:CreateToggle({
						Name = "Show pathfinding waypoints",
						CurrentValue = true,
						Flag = "AI_Waypoints_Vis",
						Callback = function(p335)
							if not p335 then
								v2721()
							elseif u2714 then
								v2722(u2714)
							end

							return
							-- (could not be recovered)
						end
					})
					Autoplay:CreateToggle({
						Name = "Collect gears",
						CurrentValue = true,
						Flag = "AI_CollectGears",
						Callback = v1179
					})
					Autoplay:CreateDropdown({
						Name = "On failed path",
						Options = {
							"Hope for miracle (do nothing)",
							"Reset character",
							"Walk in random direction"
						},
						CurrentOption = { "Walk in random direction" },
						Flag = "OnPathFailedAI",
						Callback = v1179
					})

					local s17
					local u2763
					local n138 = 0

					if not u48 then
						repeat
							xpcall(function()
								local Character_3 = LocalPlayer.Character

								if Character_3 and Character_3.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue and tick() - t24.RoundStart >= 7 then
									local Humanoid = Character_3:FindFirstChild("Humanoid")

									if n2 == 249178404 then
										n137 = 104958039
										n5 += 1216
										n40 = 110626424
										n2 -= 1676
										n39 = 46590994
										-- (could not be recovered)
									end

									if not Humanoid or Humanoid.Health <= 0 then
										return v137("[AI] either youre dead, or your character doesnt exist")
									end

									local AI = t24.AI

									if u2763 and ((Character_3.HumanoidRootPart.Position - u2763).Magnitude <= 7 or n138 < tick()) then
										u2763 = nil
									end

									local s18 = "ClosestGenerator"

									if #t24.GearsDebris > 0 and AI.ClosestGear then
										s18 = "ClosestGear"
									end

									if u2763 or AI.KillerDist and AI.KillerDist <= v1164.Flags.AI_Survivor_KillerRange.CurrentValue then
										s18 = "FurthestSpawn"
									end

									local v2769 = AI[s18]

									if s18 == "FurthestSpawn" then
										if not u2763 then
											local v2770 = tick() + 12

											u2763 = v2769
											n138 = v2770
										end

										v2769 = u2763
									end

									if not v2769 then
										v2729()

										if s17 ~= "None" then
											s17 = "None"
											lib:Notify({
												Title = "Autoplay",
												Content = "No tasks detected",
												Duration = 3,
												Image = "bot"
											})
										end

										return
									end

									if s18 == "ClosestGear" and (Character_3.HumanoidRootPart.Position - v2769).Magnitude <= 5 then
										fireproximityprompt(AI.GearModel.ProximityPrompt)
									elseif s18 == "ClosestGenerator" and (Character_3.HumanoidRootPart.Position - v2769).Magnitude <= 4 then
										v2729()
										Humanoid:MoveTo(AI.GeneratorModel.Main.Position)
										task.wait(0.5)
										fireproximityprompt(AI.GeneratorModel.Main.Prompt)
										task.wait(0.3)

										repeat
											if GetGeneratorProgress(AI.GeneratorModel) >= 100 then
												v137("[AI] done generator")

												break
											end

											task.wait()
										until not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") or u48 or AI.KillerDist and AI.KillerDist <= v1164.Flags.AI_Survivor_KillerRange.CurrentValue

										s17 = nil

										return
									end

									if s18 ~= s17 then
										s17 = s18
										lib:Notify({
											Title = "Autoplay",
											Content = s18 == "FurthestSpawn" and "Running from the killer" or "Walking to a generator",
											Duration = s18 == "FurthestSpawn" and 8 or 6,
											Image = "bot",
											NoQueue = true
										})
									end

									if s18 == "FurthestSpawn" and not Sprinting.IsSprinting and Sprinting.Stamina >= 1 then
										Sprinting.IsSprinting = true
										Sprinting.__sprintedEvent:Fire(true)
									end

									v2742(v2769, Character_3)
								end
							end, function(p336)
								v137("[AI] autoplaymgr error:", tostring(p336))
							end)
							task.wait(0.1)
						until u48
					end

					v2729()
					u2711 = nil
					u2712 = nil
				end
				autoplaymgr2 = function()
					while not u48 do
						xpcall(function()
							local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart and LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue then
								local AI = t24.AI
								local Position = HumanoidRootPart.Position
								local MainKiller2 = t24.MainKiller

								if MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart") then
									AI.KillerDist = (MainKiller2.HumanoidRootPart.Position - Position).Magnitude
								else
									AI.KillerDist = 9e9
								end

								local function v2775()
									local v2776 = -math.huge
									local Position2
									local v2778 = GetGameMap()

									if v2778 then
										local v2779 = GetGameMap()
										local v2780 = v2779
										local FindFirstChild = v2779.FindFirstChild
										local v2782 = FindFirstChild
										local spawnPoints = FindFirstChild(v2780, "SpawnPoints")
										local Survivors4 = spawnPoints

										if Survivors4 then
											v2782 = spawnPoints
											Survivors4 = spawnPoints:FindFirstChild("Survivors")
										end

										v2778 = Survivors4

										if v2778 then
											for _, child in ipairs(v2778:GetChildren()) do
												local magnitude = (Position - child.Position).magnitude

												if v2776 <= magnitude then
													v2776 = magnitude
													Position2 = child.Position
												end
											end
										end

										return Position2
									else
										return Position2
									end
									-- (could not be recovered)
								end

								AI.FurthestSpawn = v2775()

								local function v2788()
									if (LocalPlayer:GetAttribute("Gears") or 0) >= 5 or not v1164.Flags.AI_CollectGears.CurrentValue then
										return
									end

									local Position2
									local n139 = 9e9

									for _, gearsDebri in ipairs(t24.GearsDebris) do
										if gearsDebri:FindFirstChild("Root") then
											local magnitude = (gearsDebri.Root.Position - Position).magnitude

											if magnitude <= n139 then
												n139 = magnitude
												Position2 = gearsDebri.Root.Position
												AI.GearModel = gearsDebri
											end
										end
									end

									local v2794 = t35_30_1[1]

									return Position2
									-- (could not be recovered)
								end

								AI.ClosestGear = v2788()

								local function v2795()
									local v2796 = v1164.Flags.GeneratorPriority.CurrentOption[1]
									local huge = math.huge
									local Position2
									local huge2 = v2796 == "Lowest progress" and math.huge or -math.huge

									for _, roundGenerator in ipairs(t24.RoundGenerators) do
										if roundGenerator:GetAttribute("GearMinigame") then
											if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
												continue
											end
										end

										if roundGenerator:FindFirstChild("Main") then
											if GetGameMap():GetAttribute("MapName") == "HorrorHotel" and roundGenerator.Main.CFrame == CFrame.new(2037.89233, 150.86322, 10120.5713, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) then
												continue
											end

											local Magnitude = roundGenerator:FindFirstChild("Positions") and roundGenerator.Positions:FindFirstChild("Center") and not v1416(roundGenerator, roundGenerator.Positions.Center.Position) and (roundGenerator.Positions.Center.Position - Position).Magnitude
											local v2803 = GetGeneratorProgress(roundGenerator)

											if (not t24.MainKiller or Magnitude and (t24.MainKiller.HumanoidRootPart.Position - roundGenerator.Positions.Center.Position).magnitude >= v1164.Flags.AI_Survivor_KillerRange.CurrentValue) and v2803 and v2803 < 100 then
												if v2796 ~= "Closest" then
													if v2796 ~= "Lowest progress" then
														if v2803 ~= huge2 then
															if huge2 <= v2803 then
																huge2 = v2803
																Position2 = roundGenerator.Positions.Center.Position
																AI.GeneratorModel = roundGenerator
															end
														elseif (roundGenerator.Positions.Center.Position - Position).magnitude < (Position2 - Position).magnitude then
															Position2 = roundGenerator.Positions.Center.Position
															AI.GeneratorModel = roundGenerator
														end
													elseif v2803 ~= huge2 then
														if v2803 <= huge2 then
															huge2 = v2803
															Position2 = roundGenerator.Positions.Center.Position
															AI.GeneratorModel = roundGenerator
														end
													elseif (roundGenerator.Positions.Center.Position - Position).magnitude < (Position2 - Position).magnitude then
														Position2 = roundGenerator.Positions.Center.Position
														AI.GeneratorModel = roundGenerator
													end
												elseif Magnitude and Magnitude <= huge then
													huge = Magnitude
													Position2 = roundGenerator.Positions.Center.Position
													AI.GeneratorModel = roundGenerator
												end
											end
										end
									end

									return Position2
								end

								AI.ClosestGenerator = v2795()
							end
						end, function(p337)
							v137("[AI] autoplaymgr2 error:", tostring(p337))

							return
						end)

						if n41 ~= 711369508 then
							task.wait(0.4)

							continue
						end

						n39 -= 1431
						n2 += 384
						n7 = 873225685
						n40 = 313027114
						n1 = 198800574
						n9 = 424024939
						n5 -= 559
						n41 += 1357
						n4 = 645931071
						-- (could not be recovered)
					end
				end
				autoplaymgr3 = function()
					local function v2804(p338)
						if typeof(p338) ~= "Instance" then
							return
						end

						if p338:IsA("Player") then
							p338 = p338.Character
						end

						if not p338 or not p338.Parent or p338 == LocalPlayer.Character then
							return
						end

						local Humanoid = p338:FindFirstChild("Humanoid")
						local HumanoidRootPart = p338:FindFirstChild("HumanoidRootPart")

						if Humanoid and HumanoidRootPart and Humanoid.Health > 0 then
							return p338, HumanoidRootPart
						end
					end
					local function v2807(p339, p340)
						local Survivors4 = t24.Survivors

						if not Survivors4 then
							return
						end

						local u2809
						local huge = math.huge

						local function v2811(p341)
							local v2812, v2813 = v2804(p341)

							if not v2812 then
								return
							end

							local Magnitude = (v2813.Position - p339.Position).Magnitude

							if Magnitude < huge then
								u2809 = v2812
								huge = Magnitude
							end
						end

						if typeof(Survivors4) == "Instance" then
							for _, child in ipairs(Survivors4:GetChildren()) do
								local v2817 = t18_88_1[1]

								v2811(child)

								continue
								-- (could not be recovered)
							end
						else
							for k, v in pairs(Survivors4) do
								local v2820 = v2811
								local v2821 = typeof(v) == "Instance" and v

								v2820(v2821 or k)
							end
						end

						local v2822, v2823 = v2804(p340)

						if v2822 and u2809 ~= v2822 and (v2823.Position - p339.Position).Magnitude <= huge + 8 then
							return v2822
						end

						return u2809
					end

					local u2824
					local u2825 = false
					local now2 = tick()
					local vector3 = Vector3.zero

					while not u48 do
						xpcall(function()
							local Character_3 = LocalPlayer.Character
							local Humanoid = Character_3 and Character_3:FindFirstChild("Humanoid")
							local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")

							if not v1164.Flags.AI_Killer_Toggle.CurrentValue or not IsKiller() or not Humanoid or not HumanoidRootPart or not (Humanoid.Health > 0) then
								if u2825 then
									u2825 = false
									u2824 = nil
									v2729()
								end

								return
							end

							u2824 = v2807(HumanoidRootPart, u2824)

							if not u2824 then
								if u2825 then
									u2825 = false
									v2729()
								end

								return
							end

							u2825 = true

							local HumanoidRootPart2 = u2824:FindFirstChild("HumanoidRootPart")
							local Magnitude = (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude
							local v2833 = GetMaxM1Reach()

							if v2833 and Magnitude <= v2833 and IsKiller() and HasAbilityReady(GetM1Name()) then
								module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
							end

							local now3 = tick()

							if now3 - now2 >= 0.5 then
								if (v2833 or 6) < Magnitude then
									if (HumanoidRootPart.Position - vector3).Magnitude < 0.5 then
										Humanoid.Jump = true
										u2713 = nil
										n133 = 0
									end
								end

								local Position = HumanoidRootPart.Position

								now2 = now3
								vector3 = Position
							end

							v2742(HumanoidRootPart2.Position, Character_3)

							return
							-- (could not be recovered)
						end, function(p342)
							local spilled = {}

							v137("[AI] autoplaymgr3 error:", tostring(p342))
						end)
						task.wait()
					end

					v2729()
				end
			end

			task.spawn(function()
				while not u48 do
					if LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1164.Flags.AI_Survivor_Toggle.CurrentValue and t24.GameState == 1 then
						local MainKiller2 = t24.MainKiller
						local HumanoidRootPart = MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							local v2839 = v1164.Flags.AI_Survivor_KillerRange.CurrentValue * 2

							Part3.Size = Vector3.new(3, v2839, v2839)
							Part3.CFrame = CFrame.new(HumanoidRootPart.Position) * CFrame.Angles(0, 0, math.rad(90))
						else
							Part3.CFrame = CFrame.new(0, -5000, 0) * CFrame.Angles(0, 0, math.rad(90))
						end

						local v2840 = v1164.Flags.WhenToSprint.CurrentOption[1]
						local v2841
						local v2842 = t24.AI.KillerDist and t24.AI.KillerDist <= v1164.Flags.AI_Survivor_KillerRange.CurrentValue
						local v2843

						if Sprinting.Stamina <= 1 then
							v2841 = true
						elseif v2840 == "Always" then
							v2843 = Sprinting.Stamina == Sprinting.MaxStamina
						else
							v2843 = v2842 and Sprinting.Stamina == Sprinting.MaxStamina
						end

						if v2843 and not Sprinting.IsSprinting then
							t24:Sprint(true)
						elseif v2841 then
							t24:Sprint(false)
						end
					else
						Part3.CFrame = CFrame.new(0, -5000, 0) * CFrame.Angles(0, 0, math.rad(90))
					end

					task.wait(0.2)
				end

				v138("ai loop unloaded")
				Part3:Destroy()
			end)
			task.spawn(autoplaymgr)
			task.spawn(autoplaymgr2)
			task.spawn(autoplaymgr3)
			v1196:CreateSection("GUI")

			do
				CATSAKEN_panic = function(p343)
					table.foreach(v1164.Flags, function(p344)
						local v2844 = v1164.Flags[p344]

						pcall(function()
							if v2844.__ISTOGGLE and v2844.CurrentValue then
								v2844:Set(false)
							end
						end)
						v2844.CurrentOption = p343 and {} or v2844.CurrentOption
						v2844.Set = p343 and v1179 or v2844.Set
					end)
				end
			end

			Unload = function()
				local n140 = 829313483
				local n141 = 1005162987

				if u48 then
					return
				end

				local n142 = 98103198

				u48 = true

				local n143 = 735230600

				v137("Destroying ..!")

				local n144 = 1071612072

				xpcall(function()
					obj.CatsakenTabStorage:Destroy()
				end, function(p345)
					v137("failed to destroy tabs:", tostring(p345))

					if n144 ~= 297028520 then
						return
					end

					n140 += 1870
					n142 -= 1034
					n4 = 508878936
					n141 -= 295
					n143 += 1953
					n144 = 715272156
					n40 += 500
					n7 += 1492
					n5 = 759062333
				end)
				xpcall(function()
					ScreenGui2:Destroy()
					ScreenGui3:Destroy()

					if n141 == 1005163881 then
						n144 = 807756375
						n141 -= 457
						n143 = 986323947
						n5 = 795824656
						n7 += 317
						n140 -= 2034
						n142 = 989719036
						n40 -= 1952
						n6 = 515061809
					end
				end, function(p346)
					if n9 == 263112959 then
						v137("failed to destroy esp gui:", tostring(p346))

						return
					end

					n9 -= 2043
					n144 = 771088942
					n140 = 714703247
					n4 += 1944
					n143 += 1920
					n5 -= 175
					n39 = 386608704
					n141 = 104998461
					n142 += 1998
					-- (could not be recovered)
				end)
				pcall(function()
					coroutine.close(obj.sigmataskspawn)
				end)

				if ReplicatedStorage:FindFirstChild("GearsHighlightStorage") then
					for _, child in pairs(ReplicatedStorage.GearsHighlightStorage:GetChildren()) do
						pcall(function()
							child.Parent = t24.GearHighlightsStore[child]

							if n40 == 1015842633 then
								t24.GearHighlightsStore[child] = nil
							else
								n141 += 1142
								n3 = 864953828
								n142 -= 666
								n40 = 894166752
								n144 += 259
								n5 -= 595
								n140 += 1255
								n6 = 684849278
								n143 += 675
							end
						end)
					end
				end

				table.clear(t24.GearHighlightsStore)
				t24.NetworkConnections.CreateProjectile.Callback = t24.OldProjectileCreate

				if n142 == n6 then
					n142 -= 1007
					n40 = 273854710
					n9 = 607076335
					n144 += 1126
					n6 -= 506
					n143 += 1974
					n141 += 886
					n41 = 494954959
					n39 = 1072538789
					n140 = 416844584
					n4 = 315024756
					n7 = 414007950
					n3 += 115
					n5 = 393566487
					-- (could not be recovered)
				end

				Main.Position = UDim2.new(0.5, 0, -0.018, 0)
				Main.ImageTransparency = 0
				Main.Title.TextTransparency = 0

				repeat
					task.wait()
				until u1738

				connection:Disconnect()
				pcall(obj.resetEditedValues)

				local v2852 = #t24.Disconnectables

				v138("Disconnecting", v2852, "connections from the script")

				for i = 1, v2852 do
					pcall(function()
						t24.Disconnectables[i]:Disconnect()

						if n140 == 829313483 then
							return
						end

						n141 += 685
						n142 += 492
						n39 = 213622572
						n5 += 1705
						n6 -= 1773
						n143 += 219
						n140 = 171082877
						n7 -= 958
						n144 -= 1438
						-- (could not be recovered)
					end)
				end

				local v2854 = #t15

				v138("Disconnecting", v2854, "connections from lunar")

				local n145

				for i = 1, v2854 do
					pcall(function()
						n145 = 440612359
						t15[i]:Disconnect()

						if n145 < n143 then
							return
						end

						n142 = 244775055
						n9 += 647
						n41 += 43
						n140 += 1927
						n141 += 1161
						n5 += 869
						n145 = 418770271
						n143 = 321713393
						n39 = 993306896
						n144 += 626

						local v2857 = table.pack(F_0())

						if not v2857[1] then
							local v2858 = v2857[3]
							-- (could not be recovered)
						end
						-- (could not be recovered)
					end)
				end

				if t24.MainKiller then
					pcall(function()
						local Abilities = t24.MainKiller.HumanoidRootPart.Abilities
						local v2860 = Abilities
						local Destroy = Abilities.Destroy
						local v2862 = Destroy

						Destroy(v2860)

						if n7 < n5 then
							return
						end

						n144 = 493716193
						n142 += 1843
						n141 -= 1343
						n7 += 1769
						n140 = 761719213
						n143 += 1073
						n39 += 601
						n5 -= 487
						n6 = 426804245
						n6[v2862] = nil
						-- (could not be recovered)
					end)
				end

				for i = 1, #t24.Survivors do
					pcall(function()
						if n143 ~= 735231200 then
							t24.Survivors[i].HumanoidRootPart.Abilities:Destroy()

							return
						end

						n143 = 946523879
						n140 -= 839
						n144 = 852704483
						n3 = 1009570980
						n142 = 47515884
						n5 -= 1660
						n9 -= 1530
						n141 += 1525
						n40 = 978477367
						-- (could not be recovered)
					end)
				end

				for i = 1, #t24.AzureDebris do
					pcall(function()
						t24.AzureDebris[i].RootPart.RANGEVIS:Destroy()

						if n142 < n141 then
							return
						end

						n9 += 1274
						n5 = 173453279
						n143 = 390572755
						n41 = 163076269
						n141 = 977111771
						n144 += 1467
						n140 = 1061577456
						n142 += 793
						n3 += 178
						-- (could not be recovered)
					end)
				end

				for i = 1, #t24.TaphDebris do
					pcall(function()
						t24.TaphDebris[i].SubspaceBox.RANGEVIS:Destroy()

						return
						-- (could not be recovered)
					end)
				end

				Part:Destroy()
				Part2:Destroy()
				lib:Destroy()
				_G.globaluilibrary = nil
				obj.catsakenexecuted = false
				Players:GetPlayers()
				pcall(function()
					local v2866, RagButton, v2868, setEnabled, MobileToggle, v2871, setEnabled2

					if obj.BlockButton then
						local BlockButton = obj.BlockButton
						local v2874 = BlockButton
						local setEnabled3 = BlockButton.setEnabled

						v2866 = setEnabled3
						setEnabled3(v2874, false)
						obj.BlockButton = nil

						if obj.RagButton then
							RagButton = obj.RagButton
							v2868 = RagButton
							setEnabled = RagButton.setEnabled
							v2866 = setEnabled
							setEnabled(v2868, false)
							obj.RagButton = nil

							if obj.MobileToggle then
								MobileToggle = obj.MobileToggle
								v2871 = MobileToggle
								setEnabled2 = MobileToggle.setEnabled
								v2866 = setEnabled2
								setEnabled2(v2871, false)
								obj.MobileToggle = nil

								if n141 ~= 1005162987 then
									n140 -= 1615
									n143 -= 119
									n5 -= 772
									n144 += 1673
									n41 -= 1878
									n141 = 796304936
									n4 = 1010951800
									n3 -= 1424
									n142 = 312579746
									n142[v2866] = nil
								end
							else
								if n141 ~= 1005162987 then
									n140 -= 1615
									n143 -= 119
									n5 -= 772
									n144 += 1673
									n41 -= 1878
									n141 = 796304936
									n4 = 1010951800
									n3 -= 1424
									n142 = 312579746
									n142[v2866] = nil
								end
							end
						elseif obj.MobileToggle then
							MobileToggle = obj.MobileToggle
							v2871 = MobileToggle
							setEnabled2 = MobileToggle.setEnabled
							v2866 = setEnabled2
							setEnabled2(v2871, false)
							obj.MobileToggle = nil

							if n141 ~= 1005162987 then
								n140 -= 1615
								n143 -= 119
								n5 -= 772
								n144 += 1673
								n41 -= 1878
								n141 = 796304936
								n4 = 1010951800
								n3 -= 1424
								n142 = 312579746
								n142[v2866] = nil
							end
						else
							if n141 ~= 1005162987 then
								n140 -= 1615
								n143 -= 119
								n5 -= 772
								n144 += 1673
								n41 -= 1878
								n141 = 796304936
								n4 = 1010951800
								n3 -= 1424
								n142 = 312579746
								n142[v2866] = nil
							end
						end
					elseif obj.RagButton then
						RagButton = obj.RagButton
						v2868 = RagButton
						setEnabled = RagButton.setEnabled
						v2866 = setEnabled
						setEnabled(v2868, false)
						obj.RagButton = nil

						if obj.MobileToggle then
							MobileToggle = obj.MobileToggle
							v2871 = MobileToggle
							setEnabled2 = MobileToggle.setEnabled
							v2866 = setEnabled2
							setEnabled2(v2871, false)
							obj.MobileToggle = nil

							if n141 ~= 1005162987 then
								n140 -= 1615
								n143 -= 119
								n5 -= 772
								n144 += 1673
								n41 -= 1878
								n141 = 796304936
								n4 = 1010951800
								n3 -= 1424
								n142 = 312579746
								n142[v2866] = nil
							end
						else
							if n141 ~= 1005162987 then
								n140 -= 1615
								n143 -= 119
								n5 -= 772
								n144 += 1673
								n41 -= 1878
								n141 = 796304936
								n4 = 1010951800
								n3 -= 1424
								n142 = 312579746
								n142[v2866] = nil
							end
						end
					elseif obj.MobileToggle then
						MobileToggle = obj.MobileToggle
						v2871 = MobileToggle
						setEnabled2 = MobileToggle.setEnabled
						v2866 = setEnabled2
						setEnabled2(v2871, false)
						obj.MobileToggle = nil

						if n141 ~= 1005162987 then
							n140 -= 1615
							n143 -= 119
							n5 -= 772
							n144 += 1673
							n41 -= 1878
							n141 = 796304936
							n4 = 1010951800
							n3 -= 1424
							n142 = 312579746
							n142[v2866] = nil
						end
					else
					end
				end)

				for k in pairs(t2) do
					pcall(v47, k)
				end

				table.foreach(t24, function(p347, p348)
					local _
					local state = 1
					local v2882, v2883, v2884, v2885, v2886, forIter, forState, forControl, v2890, J_0_, K_0_, v2893, v2894

					while true do
						if state == 1 then
							v2882 = p347
							v2883 = p348

							if tostring(v2882):find("EspAppliedTo") then
								state = 2
							else
								state = 6
							end
						elseif state == 2 then
							v138("clearing highlights for", v2882)
							v2884, v2885, v2886 = pairs(v2883)
							state = 3
						elseif state == 3 then
							forIter, forState, forControl = v2884, v2885, v2886

							if type(forIter) == 'table' then
								local forMeta = getmetatable(forIter)

								if type(forMeta) == 'table' and forMeta['__iter'] then
									forIter, forState, forControl = (forMeta['__iter'](forIter))
								else
									forIter, forState, forControl = next, forIter, nil
								end
							end

							state = 4
						elseif state == 4 then
							local v2896

							v2890, v2896 = (forIter(forState, forControl))

							if v2890 == nil then
								state = 5
							else
								forControl = v2890
								state = 23
							end
						elseif state == 5 then
							J_0_ = J_0
							K_0_ = K_0
							state = 6
						elseif state == 6 then
							if n140 == 829313483 then
								state = 7
							else
								state = 8
							end
						else
							if state == 7 then
								return
							end

							if state == 8 then
								n41 = 313744117
								n40 -= 1721
								n141 -= 204
								n6 += 531
								n143 = 979705029
								n140 -= 1694
								n144 += 615
								n5 = 1037013369
								n142 += 1020
								v2893 += K_0

								if K_0 <= 0 then
									state = 11
								else
									state = 9
								end
							elseif state == 9 then
								if v2893 <= J_0 then
									state = 10
								else
									state = 13
								end
							elseif state == 10 then
								state = 2
							elseif state == 11 then
								if v2893 >= J_0 then
									state = 12
								else
									state = 13
								end
							elseif state == 12 then
								state = 2
							elseif state == 14 then
								if n140 == 829313483 then
									state = 15
								else
									state = 16
								end
							else
								if state == 15 then
									return
								end

								if state == 16 then
									n41 = 313744117
									n40 -= 1721
									n141 -= 204
									n6 += 531
									n143 = 979705029
									n140 -= 1694
									n144 += 615
									n5 = 1037013369
									n142 += 1020
									v2894 += K_0_

									if K_0_ <= 0 then
										state = 19
									else
										state = 17
									end
								elseif state == 17 then
									if v2894 <= J_0_ then
										state = 18
									else
										state = 22
									end
								elseif state == 18 then
									state = 21
								elseif state == 19 then
									if v2894 >= J_0_ then
										state = 20
									else
										state = 22
									end
								elseif state == 20 then
									state = 21
								elseif state == 21 then
									v138("clearing highlights for", v2882)

									local _ = pairs(v2883)

									state = 3
								elseif state == 23 then
									if v2890:FindFirstChildOfClass("Highlight") then
										state = 24
									else
										state = 4
									end
								elseif state == 24 then
									v2890:FindFirstChildOfClass("Highlight"):Destroy()
									state = 4
								end
							end
						end
					end
				end)
				CATSAKEN_panic(true)
				walk_coroutine = walk_coroutine and coroutine.close(walk_coroutine) and nil
			end
			obj.CATSAKEN_UNLOAD = Unload

			do
				v1196:CreateButton({
					Name = "Unload",
					Callback = function()
						if n41 ~= n2 then
							Unload()

							return
						end

						n3 += 504
						n40 += 189
						n5 += 610
						n2 = 712480421
						n41 -= 165
						n9 = 449406927
						n8 -= 814
						n39 = 753064396
						n7 = 473667176
						-- (could not be recovered)
					end
				})
			end

			v1196:CreateButton({
				Name = "Reload (local)",
				Callback = function()
					Unload()
					__SCRIPT()
				end,
				ToolTip = "Unload and reloads the entire script functionality"
			})

			do
				v1196:CreateButton({
					Name = "Reload (github)",
					Callback = function()
						Unload()
						loadstring(safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/obfuscated-1448974601077002340.lua"))()

						return
					end,
					ToolTip = "Unload the script then executes the catsaken script from github"
				})
			end

			v1196:CreateButton({
				Name = (boolCatsakenOldui and "Disable" or "") .. " Old GUI",
				Callback = function()
					Unload()

					if boolCatsakenOldui then
						pcall(delfile, "BOOL_CATSAKEN_OLDUI")
					else
						writefile("BOOL_CATSAKEN_OLDUI", "")
					end

					task.wait(1)
					__SCRIPT()

					if n39 ~= 622647502 then
						return
					end

					n3 -= 1865
					n40 += 405
					n6 = 210409918
					n1 = 1042554669
					n5 -= 1929
					n7 = 511986381
					n8 = 499573101
					n39 += 1547
					n41 = 922320384
					-- (could not be recovered)
				end
			})

			do
				v1196:CreateButton({
					Name = "Clear all notifications",
					Callback = function()
						if n39 ~= 622647036 then
							lib:DeleteNotifications()

							return
						end

						n8 = 1033787200
						n2 = 1036898110
						n6 = 355617681
						n39 = 862514986
						n5 = 523409229
						n41 = 225300255
						n4 -= 1387
						n9 = 10720712
						n40 -= 811
						-- (could not be recovered)
					end,
					ToolTip = "Press this is the notifications are bugged and wont dissapear"
				})
			end

			GameStateChanged(lib.DeleteNotifications, lib.DeleteNotifications)

			do
				if not v133 and not boolCatsakenOldui then
					v1196:CreateToggle({
						Name = "Mobile toggle",
						CurrentValue = true,
						Flag = "MobileMenuToggle",
						Callback = function(p349)
							if obj.MobileToggle then
								obj.MobileToggle:setEnabled(p349)
							end

							if n41 ~= 711369573 then
								return
							end

							n3 -= 1340
							n9 += 21
							n1 += 116
							n39 -= 272
							n41 += 165
							n8 = 527903989
							n7 = 491102865
							n40 -= 1878
							n5 = 114417798
							-- (could not be recovered)
						end
					})
				end
			end

			do
				local u2900

				v1196:CreateDropdown({
					Name = "Notifications position",
					Options = {
						"Bottom",
						"Top"
					},
					CurrentOption = { "Bottom" },
					Flag = "NotificationLayout",
					Callback = function(p350, p351)
						pcall(function()
							u2900.Close()

							return
							-- (could not be recovered)
						end)
						lib:ChangeNotificationLayout(p350[1])

						if n40 == 1015842633 then
							if not p351 then
								u2900 = lib:Notify({
									Title = "Example",
									Content = "Changed the notification position to " .. p350[1],
									Duration = 6,
									Image = "info"
								})
							end

							return
						end

						n7 = 486518551
						n6 -= 967
						n41 += 621
						n4 += 595
						n5 -= 1251
						n8 = 1014909798
						n3 -= 616
						n40 = 104885404
						n39 -= 1683
						-- (could not be recovered)
					end
				})
			end

			do
				local function v2901(p352, p353)
					if obj.BlockToggle then
						obj.BlockButton:setImage(p352)
					end

					if obj.MobileToggle then
						obj.MobileToggle:setImage(p353 or p352)
					end

					return
					-- (could not be recovered)
				end
				local function v2902()
					v2901(getcustomasset("Catsaken/shield.png"), getcustomasset("Catsaken/app-window.png"))
				end

				v1196:CreateDropdown({
					Name = "Topbar mode",
					Options = {
						"Icon + Name",
						"Icon",
						"Name only"
					},
					CurrentOption = { "Icon + Name" },
					Flag = "TopbarMode",
					Callback = function(p354)
						repeat
							task.wait()
						until obj.BlockButton

						if p354[1] == "Icon" then
							if obj.MobileToggle then
								obj.MobileToggle:setLabel("")
							end

							if obj.BlockButton then
								obj.BlockButton:setLabel("")
							end

							v2902()
						elseif p354[1] == "Icon + Name" then
							if obj.MobileToggle then
								obj.MobileToggle:setLabel("Catsaken")
							end

							if obj.BlockButton then
								obj.BlockButton:setLabel("Block")
							end

							v2902()
						elseif p354[1] == "Name only" then
							if obj.MobileToggle then
								obj.MobileToggle:setLabel("Catsaken")
							end

							if obj.BlockButton then
								obj.BlockButton:setLabel("Block")
							end

							v2901("")
						end
					end
				})
			end

			if not boolCatsakenOldui then
				v1196:CreateToggle({
					Name = "SFX",
					Flag = "GUISFX",
					Callback = function(p355)
						u139 = not p355

						if n41 < n3 then
							return
						end

						n2 = 694440339
						n8 = 440842474
						n6 = 409302218
						n3 += 752
						n41 = 636381243
						n9 = 25182614
						n5 += 1356
						n39 -= 1963
						n40 = 983988786
						-- (could not be recovered)
					end,
					CurrentValue = true
				})
			end

			Miscallenous:CreateSection("Fake block")

			local Normal

			FakeBlockCallback = function()
				local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

				if not Humanoid then
					return
				end

				local Animation = Instance.new("Animation")

				Animation.AnimationId = Normal
				Humanoid:LoadAnimation(Animation):Play(0.175)
			end

			do
				setthreadidentity(2)

				local v2906 = Icon.new():setImage(getcustomasset("Catsaken/shield.png")):setLabel("Block"):setCaption("Fake block"):oneClick():bindEvent("deselected", FakeBlockCallback):setEnabled(false)

				obj.BlockButton = v2906
				setthreadidentity(8)
				t69 = {
					Normal = require(Survivors2.Guest1337.Config).Animations.Block
				}
				Normal = t69.Normal

				local t83 = { "Normal" }

				for _, v in Survivors.Guest1337:GetChildren() do
					if v:FindFirstChild("Config") then
						if (require(v.Config).Animations or {}).Block ~= nil then
							local Config12 = require(v.Config)
							local DisplayName = Config12.DisplayName

							table.insert(t83, DisplayName)
							t69[DisplayName] = Config12.Animations.Block
							task.spawn(function()
								ContentProvider:PreloadAsync({ Config12.Animations.Block })

								if 921011310 ~= n2 then
									return
								end

								n2 += 1710
								n40 = 874978999
								n3 = 967541631
								n39 = 476602770
								n8 -= 550
								n7 = 156511546
								n41 = 676840509
								n5 -= 1940
								n6 = 930377912
								-- (could not be recovered)
							end)
						end
					end
				end

				local function v2912(p356)
					local n146 = 0

					for _ in pairs(p356) do
						n146 += 1
					end

					return n146
				end

				v138("inserted", v2912(t69), " block animations")
				Miscallenous:CreateToggle({
					Name = "Fake block (animation)",
					CurrentValue = false,
					Flag = "FakeBlockUIToggle",
					Callback = function(p357)
						v2906:setEnabled(p357)

						if n1 ~= 664409211 then
							return
						end

						n8 = 285015517
						n39 = 279673751
						n41 = 554807128
						n3 = 898130245
						n9 -= 342
						n5 = 360932989
						n1 = 807066224
						n7 -= 332
						n40 += 29
						-- (could not be recovered)
					end
				})

				if not v133 then
					Miscallenous:CreateKeybind({
						Name = "Keybind",
						CurrentKeybind = "B",
						HoldToInteract = false,
						CallOnChange = false,
						Flag = "FakeBlockKeybind",
						Callback = function()
							FakeBlockCallback()

							return
							-- (could not be recovered)
						end
					})
				end

				Miscallenous:CreateDropdown({
					Name = "Block animation",
					Options = t83,
					CurrentOption = { "Normal" },
					Flag = "FakeBlockAnimation",
					Callback = function(p358)
						Normal = t69[p358[1]]

						if n1 == 525278510 then
							return
						end

						n2 -= 663
						n39 -= 1288
						n3 = 347960652
						n41 = 498032970
						n5 -= 1627
						n4 -= 256
						n1 = 338859832
						n40 += 1902
						n8 -= 1419
						-- (could not be recovered)
					end,
					Searchable = true
				})
			end

			Miscallenous:CreateToggle({
				Name = "Change block animation",
				CurrentValue = false,
				Flag = "BlockAnimationChanger",
				Callback = v1179
			})
			Miscallenous:CreateLabel("If you enable block animation changer <b>autoblock might not work properly</b> (fake block is fine)")

			do
				local Animation = Instance.new("Animation")
				local u2916
				local n147

				Track = function(p359, p360, p361, p362)
					n147 = 10161103

					local HumanoidRootPart

					if p359 then
						local v2919 = p359

						HumanoidRootPart = p359:WaitForChild("HumanoidRootPart", 7)

						if not HumanoidRootPart then
							if n39 ~= 622646895 then
								return
							end

							n41 = 20350191
							n6 -= 384
							n5 += 502
							n7 -= 1381
							n4 += 890
							n8 = 119312729
							n39 -= 1518
							n2 = 320090462
							n40 += 118
							n147 = 358401858
							n147[v2919] = nil --[[ constant not decoded ]]
							p359 = p359
							HumanoidRootPart = p362
							upv151 = nil --[[ constant not decoded ]]
						end
					else
						return
					end

					local Humanoid = HumanoidRootPart and p359:WaitForChild("Humanoid", 7)

					if not Humanoid then
						return
					end

					local Animator = Humanoid:WaitForChild("Animator", 5)

					if not Animator then
						return
					end

					local function v2922()
						do
							local AnimationPlayed = Animator.AnimationPlayed

							local function v2924(p363)
								if not TableFindThatWorks(t69, p363.Animation.AnimationId) then
									return
								end

								if not v1164.Flags.BlockAnimationChanger.CurrentValue then
									return
								end

								p363:Stop()

								local v2925 = Animation

								v2925.AnimationId = Normal

								local v2926 = Humanoid:LoadAnimation(v2925)

								u2916:Disconnect()
								v2926:Play()
								u2916 = v2922()
							end

							return AnimationPlayed:Connect(v2924)
						end
					end

					u2916 = v2922()
				end
			end

			t24.Disconnectables[#t24.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(character)
				if u48 then
					return
				end

				while true do
					task.wait()

					if character then
						if not character.Parent or character.Parent ~= Spectating then
							break
						end
					else
						break
					end
				end

				Track(character)

				if n8 ~= n41 then
					return
				end

				n41 = 624482129
				n4 -= 706
				n40 = 229922949
				n5 = 1006200790
				n7 -= 1277
				n39 = 155346916
				n8 = 42312474
				n2 -= 1615
				n3 = 757409350
				-- (could not be recovered)
			end)

			if LocalPlayer.Character then
				Track(LocalPlayer.Character)
			end

			Miscallenous:CreateSection("Fake die", "Right")

			do
				local u2927 = false

				RagdollEnable = function()
					u2927 = true

					local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

					if not Humanoid then
						return
					end

					Humanoid.PlatformStand = true
					Ragdolls.EnableRagdoll(LocalPlayer.Character)
				end
				RagdollDisable = function()
					u2927 = false

					local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

					if not Humanoid then
						return
					end

					Humanoid.PlatformStand = false
					Ragdolls.DisableRagdoll(LocalPlayer.Character)

					if n40 ~= 1015842799 then
						return
					end

					n8 = 190178134
					n41 -= 1816
					n3 = 356597590
					n1 -= 1880
					n40 -= 2011
					n4 += 265
					n5 = 994295221
					n2 -= 987
					n39 += 417
					-- (could not be recovered)
				end
				setthreadidentity(2)

				local v2930 = Icon.new():setLabel("Ragdoll"):setCaption("Fake die / Ragdoll"):bindEvent("selected", RagdollEnable):bindEvent("deselected", RagdollDisable):autoDeselect(false):setEnabled(false)

				obj.RagButton = v2930
				setthreadidentity(8)
				Miscallenous:CreateToggle({
					Name = "Ragdoll button (NOT FE)",
					CurrentValue = false,
					Flag = "RagdollButtonToggle",
					Callback = function(p364)
						v2930:setEnabled(p364)
					end
				})

				if not v133 then
					Miscallenous:CreateKeybind({
						Name = "Keybind",
						CurrentKeybind = "Z",
						HoldToInteract = false,
						CallOnChange = false,
						Flag = "RagdollKeybind",
						Callback = function()
							if u2927 then
								setthreadidentity(2)
								v2930:deselect()
								RagdollDisable()
								setthreadidentity(8)
							else
								setthreadidentity(2)
								v2930:select()

								if not (n6 < n3) then
									n6 += 1930
									n1 += 1476
									n4 -= 1634
									n39 += 1069
									n7 -= 115
									n3 = 71033880
									n41 = 75240421
									n5 = 474844842
									n40 = 732049168
									-- (could not be recovered)
								end

								RagdollEnable()
								setthreadidentity(8)
							end
						end
					})
				end
			end

			Miscallenous:CreateSection("Round Timer", "Right")
			Miscallenous:CreateSlider({
				Name = "Round timer X",
				Range = {
					-100,
					200
				},
				Increment = 1,
				Suffix = "%",
				CurrentValue = 50,
				Flag = "RoundTimerX",
				Callback = function(p365)
					Main.Position = UDim2.new(p365 / 100, Main.Position.X.Offset, Main.Position.Y.Scale, Main.Position.Y.Offset)
				end
			})

			do
				Miscallenous:CreateSlider({
					Name = "Round timer Y",
					Range = {
						-100,
						200
					},
					Increment = 1,
					Suffix = "%",
					CurrentValue = 0,
					Flag = "RoundTimerY",
					Callback = function(p366)
						Main.Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset, p366 / 100 - 0.018, Main.Position.Y.Offset)

						if n1 ~= 525279040 then
							return
						end

						n3 += 1522
						n5 -= 35
						n4 = 821822952
						n41 += 130
						n2 = 785547863
						n40 += 583
						n39 = 459576649
						n1 = 497534507
						n7 += 1407
						-- (could not be recovered)
					end
				})
			end

			Miscallenous:CreateToggle({
				Name = "Only show time",
				CurrentValue = false,
				Flag = "RoundTimerHideBG",
				Callback = function(p367)
					Main.ImageTransparency = p367 and 1 or 0
					Main.Title.TextTransparency = p367 and v1164.Flags.RoundTimerHideTitle.CurrentValue and 1 or 0
				end
			})
			Miscallenous:CreateToggle({
				Name = "└── Hide status",
				CurrentValue = false,
				Flag = "RoundTimerHideTitle",
				Callback = function(p368)
					if v1164.Flags.RoundTimerHideBG.CurrentValue then
						Main.Title.TextTransparency = p368 and 1 or 0
					end

					if n39 ~= n5 then
						return
					end

					n39 = 1018532346
					n5 = 974477569
					n40 -= 40
					n41 -= 1761
					n9 -= 434
					n2 = 828002670
					n3 += 1531
					n7 += 1633
					n8 += 785
					-- (could not be recovered)
				end
			})
			Miscallenous:CreateSection("Miscallenous", "Left")

			do
				local CATSAKEN_SBS = obj.CATSAKEN_SBS
				local CATSAKEN_SBS_DATA = obj.CATSAKEN_SBS_DATA
				local u2933

				Miscallenous:CreateToggle({
					Name = "Old forsaken menu",
					CurrentValue = false,
					Flag = "OldForskenMenu",
					Callback = function(p369, p370)
						if u48 then
							return
						end

						if p369 and obj.OFM_DISABLED then
							v1164.Flags.OldForskenMenu:Set(false)
						end

						if p369 and obj.OFM_ENABLED then
							return
						end

						if not p369 and not u2933 then
							v1164.Flags.OldForskenMenu:Set(true)
						end

						if p369 then
							setthreadidentity(8)
							obj.OFM_ENABLED = true

							if not p370 then
								lib:Notify({
									Title = "Catsaken",
									Content = "Loading old forsaken menu.. Do not disable the toggle until loaded"
								})
							end

							CATSAKEN_SBS_DATA = CATSAKEN_SBS_DATA or tostring(({ pcall(function()
								return http.request({
									Url = "https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/sidebarscript.lua",
									Method = "GET",
									Headers = {
										["content-type"] = "application/json"
									}
								}).Body
							end) })[2])

							if not CATSAKEN_SBS_DATA:find("--this watermark is used to confirm that the script by catsaken has been retrieved without failure") then
								obj.OFM_ENABLED = false

								return lib:Notify({
									Title = "Catsaken",
									Content = "Loading old forsaken menu.. Do not disable the toggle until loaded"
								}), v138("load err on sidebar:", CATSAKEN_SBS_DATA)
							end

							obj.CATSAKEN_SBS_DATA = CATSAKEN_SBS_DATA

							if not CATSAKEN_SBS then
								CATSAKEN_SBS = loadstring(CATSAKEN_SBS_DATA)()
								SidebarHandler = CATSAKEN_SBS
								obj.CATSAKEN_SBS = CATSAKEN_SBS
								CATSAKEN_SBS:Run()
							end
						end
					end
				})
				Miscallenous:CreateButton({
					Name = "Disable old forsaken (One-Time press)",
					ToolTip = "Old menu cannot be re-enabled without rejoining after being disabled",
					Callback = function()
						if OFM_DISABLED or not CATSAKEN_SBS then
							return
						end

						obj.OFM_DISABLED = true
						u2933 = true
						v1164.Flags.OldForskenMenu:Set(false)

						if n4 < n40 then
							CATSAKEN_SBS:Stop()

							return
						end

						n4 -= 962
						n8 = 199082243
						n39 = 155110367
						n41 -= 1997
						n6 = 815280455
						n2 = 300711040
						n40 += 332
						n3 -= 516
						n5 += 948
						-- (could not be recovered)
					end
				})
			end

			Miscallenous:CreateToggle({
				Name = "Anti detect spectate",
				CurrentValue = false,
				Flag = "AntiDetectSpectate",
				Callback = function(p371)
					if p371 then
						module:FireServerConnection("SetSpectateTarget", "REMOTE_EVENT")
					end
				end,
				ToolTip = "Prevent hackers with a spectate detector (like catsaken) from seeing you are spectating them"
			})
			Miscallenous:CreateButton({
				Name = utf8.char(9888) .. " PANIC " .. utf8.char(9888),
				ToolTip = "Will disable ALL your features immediately after pressing!",
				Callback = function()
					local n148 = 694261689

					xpcall(CATSAKEN_panic, function(p372)
						v137("error in PANIC:", tostring(p372))

						if n148 ~= n41 then
							return
						end

						n8 = 528702488
						n5 = 207772873
						n3 = 863768925
						n2 += 1580
						n40 -= 1216
						n148 -= 1522
						n41 += 356
						-- (could not be recovered)
					end)
				end
			})
			Miscallenous:CreateSection("Streamer mode", "Right")
			Miscallenous:CreateInput({
				Name = "Icon (FILE NAME ONLY)",
				CurrentValue = "Catsaken/catsaken_mesh.png",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "NameHiderIcon",
				Callback = v1179
			})
			Miscallenous:CreateInput({
				Name = "Name",
				CurrentValue = "Catsaken Protection",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "NameHiderText",
				Callback = v1179
			})

			local CurrentValue = v1164.Flags.NameHiderText.CurrentValue or "Catsaken Protection"

			Miscallenous:CreateToggle({
				Name = "Name hider (client)",
				CurrentValue = true,
				Flag = "NameHider",
				Callback = function(p373)
					if p373 then
						CurrentValue = v1164.Flags.NameHiderText.CurrentValue
					end

					local Name = game.Players.LocalPlayer.Name

					local function v2937(p374)
						if not p374:IsA("TextLabel") and not p374:IsA("TextButton") and not p374:IsA("TextBox") then
							if p374.Name ~= "PlayerIcon" then
								if p374.Name == "Player" and p374:IsA("ImageLabel") then
									if p373 then
										p374.Image = getcustomasset(v1164.Flags.NameHiderIcon.CurrentValue)
									else
										p374.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420"
									end
								end
							elseif p373 then
								p374.Image = getcustomasset(v1164.Flags.NameHiderIcon.CurrentValue)
							else
								p374.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420"
							end
						elseif p373 then
							p374.Text = p374.Text:gsub(Name, CurrentValue)
						else
							p374.Text = p374.Text:gsub(CurrentValue, Name)
						end
					end

					for _, descendant in pairs(PlayerListHolder:GetDescendants()) do
						v2937(descendant)
					end

					for _, descendant in pairs(PlayerInfo:GetDescendants()) do
						v2937(descendant)
					end

					if TemporaryUI:FindFirstChild(LocalPlayer.Name) then
						for _, descendant in pairs(TemporaryUI[LocalPlayer.Name]:GetDescendants()) do
							v2937(descendant)
						end
					end
				end,
				ToolTip = "If you are recording a video/clip, enable this so people do not see your name"
			})
			Miscallenous:CreateLabel("Re-Enable after changing setting")
			task.spawn(function()
				if boolCatsakenOldui then
					lib:LoadConfiguration()

					while not u48 do
						local json = HttpService:JSONEncode(v1164.Flags)

						task.wait(1)

						if u48 then
							return
						end

						local json2 = HttpService:JSONEncode(v1164.Flags)

						if json2 ~= json then
							v137("AutoSaving ...")
							writefile(txt, json2)
						end
					end
				else
					local exitTo

					while true do
						if not u48 then
							local json = HttpService:JSONEncode(v1164.Flags)

							task.wait(1)

							if u48 then
								break
							end

							if HttpService:JSONEncode(v1164.Flags) ~= json then
								v137("AutoSaving ...")

								local data_ = HttpService:JSONDecode(readfile("catsakenconfigs.json"))
								local v2949 = deepcopy(data_)

								v2949[txt] = fixcolorpickers(deepcopy(v1164.Flags))
								writefile("catsakenconfigs.json", HttpService:JSONEncode(v2949))
							end

							continue
						end

						exitTo = 1

						break
					end

					if exitTo ~= 1 then
						return
					end
				end

				return
				-- (could not be recovered)
			end)

			do
				local n149
				local n150

				cfgmanager = function()
					local n151 = 545467581

					n149 = 35821264

					local n152 = 4834050

					n150 = 946637714

					if not isfile("catsakenautoload.txt") then
						writefile("catsakenautoload.txt", txt)
					end

					local data_

					local function v2955()
						if n9 < n150 then
							data_ = HttpService:JSONDecode(readfile("catsakenconfigs.json"))

							return
						end

						n151 = 677823853
						n152 -= 1209
						n41 = 677719057
						n9 = 1010481998
						n149 = 76908683
						n5 += 1028
						n150 = 258483478
						n2 = 945301266
						-- (could not be recovered)
					end
					local function v2956(p375)
						for _, v in pairs(p375) do
							if typeof(v) == "table" and v.Color then
								v.Color = formatclr(v.Color)
							end
						end

						if n150 ~= 946638603 then
							return p375
						end

						n2 = 1008065737
						n150 = 564859985
						n9 = 93680387
						n39 -= 270
						n149 -= 727
						n151 -= 611
						n152 -= 849
						n5 = 938542948
					end

					v2955()
					Configs:CreateSection("Configurations")

					local txt2 = isfile("catsakentemploadconfig.txt") and readfile("catsakentemploadconfig.txt")

					txt2 = txt2 or readfile("catsakenautoload.txt")

					local s19 = "NewConfig"

					local function v2961()
						local t84 = {}

						if n150 < 984012372 then
							for k in pairs(data_) do
								t84[#t84 + 1] = k
							end

							return t84
						end

						n152 = 123268244
						n1 -= 167
						n151 = 958878236
						n149 = 606509767
						n5 = 977741295
						n41 += 401
						n39 = 879352029
						n150 = 721823691
						-- (could not be recovered)
					end

					local v2964 = Configs:CreateDropdown({
						Name = "Selected Config",
						Options = v2961(),
						CurrentOption = { txt2 },
						Flag = "currentcfgselect",
						Callback = function(p376)
							txt2 = p376[1]

							if n152 == 986291671 then
								n5 = 85281833
								n39 = 1009044560
								n9 -= 2047
								n41 -= 815
								n152 -= 1968
								n150 += 526
								n151 = 42769742
								n2 = 1020547635
							end
						end
					})

					Configs:CreateButton({
						Name = "Overwrite Selected",
						Callback = function()
							v1164.Flags.currentcfgname = {
								CurrentValue = ""
							}
							v1164.Flags.currentcfgselect = {
								CurrentOption = { txt2 }
							}

							local v2965 = deepcopy(data_)

							v2965[txt2] = v2956(deepcopy(v1164.Flags))
							data_ = v2965
							writefile("catsakenconfigs.json", HttpService:JSONEncode(v2965))
							lib:Notify({
								Title = "Done",
								Content = "Config saved.",
								Duration = 15,
								Image = "scroll"
							})

							return
							-- (could not be recovered)
						end
					})
					Configs:CreateButton({
						Name = "Set Selected As Autoload",
						Callback = function()
							writefile("catsakenautoload.txt", txt2)
							lib:Notify({
								Title = "Done",
								Content = "Config set to autoload.",
								Duration = 15,
								Image = "scroll"
							})
						end
					})

					local n153

					Configs:CreateInput({
						Name = "Config Name",
						CurrentValue = s19,
						PlaceholderText = "Text",
						RemoveTextAfterFocusLost = false,
						Flag = "currentcfgname",
						DontSave = true,
						Callback = function(p377)
							n153 = 530651920

							if n152 ~= n153 then
								s19 = p377 .. ".json"

								return
							end

							n153 += 850
							n1 += 1658
							n40 -= 740
							n8 -= 1494
							n152 += 1565
							n151 += 1422
							n39 = 556410392
							n2 -= 1081
							n5 -= 1888
							-- (could not be recovered)
						end
					})
					Configs:CreateButton({
						Name = "Save Config",
						Callback = function()
							local v2967 = deepcopy(data_)

							if v2967[s19] then
								return lib:Notify({
									Title = "Fail",
									Content = "Config already exists. Refresh list, then overwrite it.",
									Duration = 15,
									Image = "scroll"
								})
							end

							v1164.Flags.currentcfgname = {
								CurrentValue = ""
							}
							v1164.Flags.currentcfgselect = {
								CurrentOption = { s19 }
							}
							v2967[s19] = v2956(deepcopy(v1164.Flags))
							data_ = v2967
							writefile("catsakenconfigs.json", HttpService:JSONEncode(v2967))
							lib:Notify({
								Title = "Done",
								Content = "Config saved.",
								Duration = 15,
								Image = "scroll"
							})
						end
					})
					Configs:CreateButton({
						Name = "Delete Selected",
						Callback = function()
							if txt2 == "catsaken-default-" .. LocalPlayer.Name .. ".json" then
								return lib:Notify({
									Title = "Error",
									Content = "You cannot delete the default config for an account.",
									Duration = 15,
									Image = "scroll"
								})
							end

							local v2968 = deepcopy(HttpService:JSONDecode(readfile("catsakenconfigs.json")))

							v2968[txt2] = nil
							data_ = v2968
							writefile("catsakenconfigs.json", HttpService:JSONEncode(data_))

							local n154 = 1026328912

							lib:Notify({
								Title = "Done",
								Content = "Config deleted.",
								Duration = 15,
								Image = "scroll"
							})

							if n151 < n154 then
								return
							end

							n152 = 1013645629
							n5 -= 1762
							n149 -= 1810
							n3 += 1676
							n8 += 192
							n1 = 339482623
							n39 += 606
							n151 += 308
							-- (could not be recovered)
						end
					})
					Configs:CreateButton({
						Name = "Load Selected",
						Callback = function()
							writefile("catsakentemploadconfig.txt", txt2)
							Unload()
							task.wait(0.5)

							if n2 < n3 then
								__SCRIPT()

								return
							end

							n5 += 587
							n2 -= 1295
							n40 = 249156027
							n151 = 225418903
							n39 += 525
							n1 -= 1796
							n152 = 48824700
							n3 -= 1774

							return table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 259)
						end
					})
					Configs:CreateButton({
						Name = "Refresh List",
						Callback = function()
							local spilled = {}

							v2955()

							do
								local function v2971()
									local t85 = {}
									local v2973, v2974, v2975 = pairs(data_)
									local v2976 = geniter(v2973, v2974, v2975)

									for k in v2973, v2974, v2975 do
										while true do
											t85[#t85 + 1] = k

											local v2978 = table.pack(v2976())

											if not v2978[1] then
												break
											end

											k = v2978[2]
										end

										break
									end

									return t85
									-- (could not be recovered)
								end

								v2964:Refresh(v2971())
							end
						end
					})

					local n155

					if identifyexecutor() == "Delta" or pos2 then
						if n149 == 35822143 then
							n149 = 807666420
							n3 += 1868
							n39 = 414943807
							n9 += 1122
							n41 = 657551007
							n8 += 377
							n152 += 1031
							n40 = 873335154
							n151 = 397972210
							n1 = 650326735
							n5 = 725947487
							n2 += 1468
							n150 = 774319731
							-- (could not be recovered)
						end

						Configs:CreateButton({
							Name = "Share Current Settings",
							Callback = function()
								obj.MobileToggle:deselect()
								loadstring(safehttpget("https://raw.githubusercontent.com/jeevacation780/repository-for-kings/refs/heads/main/config.lua"))()
							end
						})
						Configs:CreateButton({
							Name = "Search For Configs",
							Callback = function()
								local v2980

								while true do
									local v2981

									n155 = 648102522
									obj.MobileToggle:deselect()

									if n151 < n155 then
										loadstring(safehttpget("https://raw.githubusercontent.com/jeevacation780/repository-for-kings/refs/heads/main/search.lua"))()

										return
									end

									n151 = 625952029
									n155 = 855735647
									n1 = 682071133
									n152 = 16721235
									n39 = 672329585
									n150 = 1055476397
									n2 = 467505151
									n5 += 793
									n40 -= 1098
									v2980 += K_0

									if K_0 <= 0 then
										if not (v2980 >= J_0) then
											break
										end
									elseif not (v2980 <= J_0) then
										break
									end

									v2981[20] = 59
								end
								-- (could not be recovered)
							end
						})
					end

					Configs:CreateSection("Export/Import")
					Configs:CreateLabel("Export current settings to a Base64 file, then be able to load/share it for others to import and show in their configs list as specified name.")
					Configs:CreateDivider()
					Configs:CreateInput({
						Name = "Name to export as",
						CurrentValue = "",
						PlaceholderText = "Text",
						RemoveTextAfterFocusLost = false,
						Flag = "cfgexportname",
						DontSave = true,
						Callback = v1179
					})
					Configs:CreateButton({
						Name = "Export as Base64 and copy",
						Callback = function()
							local v2982 = deepcopy(v1164.Flags)

							v2982.__CONFIG_FLAG_RAYFIELD__ = boolCatsakenOldui
							v2982.__META_NAME__ = v1164.Flags.cfgexportname.CurrentValue
							v2982.currentcfgname = {
								CurrentValue = ""
							}
							v2982.currentcfgselect = {
								CurrentOption = { v2982.__META_NAME__ }
							}

							for _, v in pairs(v2982) do
								if typeof(v) == "table" then
									v.__ISTOGGLE = nil
								end
							end

							local json = HttpService:JSONEncode(v2982)

							setclipboard(base64.encode(json))
							lib:Notify({
								Title = "Done",
								Content = "Copied " .. string.len(json) .. " characters.",
								Duration = 10,
								Image = "copy"
							})

							return
							-- (could not be recovered)
						end
					})
					Configs:CreateDivider()
					Configs:CreateInput({
						Name = "Enter Base64 content",
						CurrentValue = "",
						PlaceholderText = "Text",
						RemoveTextAfterFocusLost = false,
						Flag = "cfgimporttext",
						DontSave = true,
						Callback = v1179
					})
					Configs:CreateButton({
						Name = "Import",
						Callback = function()
							if n40 == 1015842633 then
								xpcall(function()
									local v2986 = deepcopy(HttpService:JSONDecode(readfile("catsakenconfigs.json")))
									local data_2 = HttpService:JSONDecode(base64.decode(v1164.Flags.cfgimporttext.CurrentValue))
									local __CONFIG_FLAG_RAYFIELD__ = data_2.__CONFIG_FLAG_RAYFIELD__
									local __META_NAME__ = data_2.__META_NAME__

									if __CONFIG_FLAG_RAYFIELD__ == nil or __META_NAME__ == nil then
										return lib:Notify({
											Title = "Fail",
											Content = "Config does not contain the required flags.",
											Duration = 10,
											Image = "ban"
										})
									end

									if __CONFIG_FLAG_RAYFIELD__ and not boolCatsakenOldui then
										return lib:Notify({
											Title = "Fail",
											Content = "This config only works for rayfield. Enable old gui in miscallenous",
											Duration = 10,
											Image = "ban"
										})
									end

									v2986[__META_NAME__] = data_2
									data_ = v2986
									writefile("catsakenconfigs.json", HttpService:JSONEncode(data_))
									lib:Notify({
										Title = "Done",
										Content = "Imported \"" .. __META_NAME__ .. "\".",
										Duration = 10,
										Image = "scroll"
									})
								end, function(p378)
									v137("the error:", p378)
									lib:Notify({
										Title = "Error",
										Content = "Error when importing.",
										Duration = 10,
										Image = "ban"
									})

									return
								end)

								return
							end

							n150 += 224
							n8 += 1339
							n151 = 1032006219
							n9 = 59799766
							n39 += 798
							n40 = 976486662
							n152 = 316533054
							n5 = 117158094
							-- (could not be recovered)
						end
					})
				end
			end

			do
				pcall(function()
					if isfile("catsakentemploadconfig.txt") then
						lib:Notify({
							Title = "Catsaken",
							Content = "Loading the config \"" .. readfile("catsakentemploadconfig.txt") .. "\""
						})
					end

					pcall(delfile, "catsakentemploadconfig.txt")
				end)
			end

			if boolCatsakenOldui then
				Configs:CreateLabel("You cannot create multiple configs on rayfield.")
			else
				cfgmanager()
				v138("[Catsaken] config manager initialized")
			end

			local v2990

			v2990 = hookmetamethod(game, "__namecall", function(x, ...)
				if u48 then
					return v2990(x, ...)
				end

				local n = { ... }

				if (typeof(x) == "Instance") then
					if (x == Network.RemoteEvent) then
						local B = ({ ... })[2]

						if type(B) == "table" and typeof(B[1]) == "buffer" then
							if buffer.tostring(B[1]):find("PlasmaBeam") then
								WaitAndReset("DusekkarActive")
							elseif buffer.tostring(B[1]):find("Nova") then
								WaitAndReset("NoliActive")
							elseif buffer.tostring(B[1]):find("CorruptNature") then
								WaitAndReset("CoolkidActive")
							end
						end

						return v2990(x, unpack(n))
					elseif (x == LocalPlayer and getnamecallmethod() == "GetAttribute" and n[1] == "Device" and v1164.Flags.DeviceSpoofer.CurrentValue) then
						return v1164.Flags.ClientDeviceSpooferValue.CurrentOption[1]
					elseif (x == RunService and getnamecallmethod() == "BindToRenderStep" and n[1] == "Sk8") then
						if v1164.Flags.Sk8Autofarm.CurrentValue then
							while t24.GameState == 1 do
								v138("tricking")
								module:FireServerConnection(LocalPlayer.Name .. "SkateTrick", "REMOTE_EVENT")
								task.wait(Config.Sk8TrickCooldown + .05)
							end

							return v2990(x, unpack(n))
						end

						local Y = require(Modules.Utilities.Util)
						local q = require(LocalPlayer.PlayerScripts.PlayerModule.ControlModule)
						local B = n[3]
						local g = debug.getupvalue(B, 5)

						function CATSAKEN_NO_SK8_FUNC_ERROR()
						end

						local H = debug.info(g or NO_SK8_FUNC_ERROR, "n")

						if H ~= "stopSkating" then
							v137("upvalue 5 of", tostring(g), "was not stopSkating, instead " .. tostring(H))

							return v2990(x, unpack(n))
						end

						local H = clonefunction(g)
						local g
						local R = v1164.Flags.Sk8Forever.CurrentValue
						local m = v1164.Flags.Sk8ForeverMode.CurrentOption[1]

						if R then
							t24._SprintDuringSk8 = true
						end

						local b = true

						debug.setupvalue(B, 5, function(...)
							local c = v1164.Flags.Sk8AntiCrash.CurrentValue

							R = v1164.Flags.Sk8Forever.CurrentValue

							if not R then
								g = false
							end

							if ((Sprinting.Stamina <= (Sprinting.MinStamina or 0) and not g) or not c) then
								t24._SprintDuringSk8 = nil
								b = false

								return H(...)
							end

							return
						end)

						if R and m ~= "Freeze stamina while skating" then
							debug.setupvalue(B, 4, { __sprintedEvent = { Fire = v1179 }, Stamina = math.huge, MinStamina = -math.huge })
							g = true
							v138("Patched the 4th upvalue")
						elseif R then
							local a = Sprinting.Stamina

							task.spawn(function()
								while b and task.wait() do
									Sprinting.Stamina = a
								end
							end)
							g = true
						end

						function isheldtrickbutton()
							local a = debug.getupvalue(B, 32)

							if type(a) == "boolean" then
								return a
							end

							local a = GetService("UserInputService")

							return a:IsKeyDown(Enum.KeyCode.Space) or a:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonX)
						end

						local a = false

						n[3] = function(I)
							local r = nil
							local d = LocalPlayer.Character
							local g = d and d.PrimaryPart

							if v1164.Flags.Sk8Freewalk.CurrentValue then
								local H = Y:GetActor(LocalPlayer)
								local X = H and H.HeldAbilities.Sk8
								local R = debug.getupvalue(B, 4)
								local m = g and H and Y:IsAlive(d) and not g.Anchored and not d:GetAttribute("Ragdolling") and R.Stamina > (R.MinStamina or 0)

								if m and not X and not isheldtrickbutton() and q:GetMoveVector().Magnitude < 0.001 then
									a = true

									return
								end

								if a and not X then
									debug.setupvalue(B, 13, os.clock())
								end

								a = false
							end

							local a = Behavior2:FindFirstChild("Highlight") and Behavior2.Highlight.Adornee == d

							if v1164.Flags.Sk8TrickAnywhere.CurrentValue and g and isheldtrickbutton() and not a then
								local a = g.AssemblyLinearVelocity
								local Y = Vector3.new(a.X, 0, a.Z)
								local a = g.CFrame.LookVector
								local X = Y.Magnitude > 0.1 and Y.Unit or Vector3.new(a.X, 0, a.Z).Unit

								r = X:Cross(Vector3.yAxis).Unit
								debug.setupvalue(B, 27, r)
								debug.setupvalue(B, 26, os.clock())
							end

							B(I)

							if r and debug.getupvalue(B, 27) == r then
								local a = Behavior2:FindFirstChild("Highlight")

								if a then
									a.Adornee = nil
								end

								debug.setupvalue(B, 27, false)
							end
						end
					elseif (x == ContextActionService and getnamecallmethod() == "BindActionAtPriority" and v1164.Flags.UnlimitedRunning.CurrentValue and GetInfStamMethod() ~= "Disable stamina loss") then
						setthreadidentity(2)

						local a, Y, s, W = ...

						if a == "Sprinting" then
							local I = { select(5, ...) }

							return v2990(x, a, function(a, X, A)
								setthreadidentity(2)

								if X == Enum.UserInputState.Begin and canstartsprintzero() then
									t24:Sprint(true)

									return
								end

								return Y(a, X, A)
							end, s, W, unpack(I))
						end
					end
				end

				return v2990(x, unpack(n))
			end)
			v138("[metahooks] __namecall hook initialized")
			u1070 = true

			if not boolCatsakenOldui then
				v1164:SelectTab(1)
			end

			lib:Notify({
				Title = "Loaded",
				Content = "Loaded in " .. string.format("%.1fs", tick() - now),
				Duration = 4,
				Image = "loader-circle"
			})
			obj.ErrLogConnection:Disconnect()
			ins_custom_files = function(p379, p380)
				local n156 = 305049192

				if not isfolder("Catsaken/Music") then
					makefolder("Catsaken/Music")
				end

				for _, v in ipairs(listfiles("Catsaken/Music")) do
					if v:sub(-4) == ".mp3" or v:sub(-4) == ".ogg" then
						p379.Names[#p379.Names + 1] = v
						p379.Data[v] = p380 and getcustomasset(v) or readfile(v)
					end
				end

				if n9 < n156 then
					return
				end

				n41 += 1595
				n9 = 576214370
				n5 = 901435985
				n6 -= 1044
				n2 = 164806938
				n39 -= 28
				n4 += 1029
				n40 += 1157
				n1 = 238934047
				-- (could not be recovered)
			end
			Audio:CreateSection("Audio")
			Audio:CreateLabel("You can also put files into the Catsaken/Music folder and they will show in dropdowns")

			local n157

			do
				local n158
				local n159

				Audio:CreateSection("Last Man Standing")

				local downloading = Audio:CreateLabel("DOWNLOADING")

				if not isfile("LMS_DOWNLOAD_TOGGLE") then
					v138("making lms file thing or something")
					writefile("LMS_DOWNLOAD_TOGGLE", "1")
				end

				local v3033 = readfile("LMS_DOWNLOAD_TOGGLE") == "0"
				local t86 = {
					Names = { "Custom" },
					Data = {}
				}

				ins_custom_files(t86)

				local v3035 = false

				if not v3033 then
					local ok, result = pcall(function()
						return safehttpget("https://api.github.com/repos/aibabylaugh/catsaken/contents/lms")
						-- (could not be recovered)
					end)

					if ok and result and typeof(result) == "string" then
						local ok2, result2 = xpcall(function()
							if n8 < n9 then
								return HttpService:JSONDecode(result)
							end

							n7 += 966
							n40 = 553319102
							n2 = 1000618644
							n5 -= 736
							n9 += 1585
							n4 = 881652450
							n41 -= 1158
							n39 += 381
							n8 = 295379878
							-- (could not be recovered)
						end, function(p381)
							v137("lms json decode failed:", tostring(p381))
						end)

						if ok2 and typeof(result2) == "table" then
							local n160 = 0
							local n161 = 0

							for _, v in result2, nil, nil do
								pcall(function()
									n158 = 906870694

									local v3044 = v.name:sub(1, -5)
									local v3045 = ("Catsaken/%*"):format(v3044)
									local v3046

									if isfile(v3045) then
										local readfile_ = readfile
										local v3048 = ("Catsaken/%*"):format(v3044)

										v3046 = readfile_(v3048)
									else
										v3046 = safehttpget(v.download_url)

										if v3046 and typeof(v3046) == "string" then
											local v3049 = string.byte(data, 1)
											local v3050 = string.byte(data, 2)

											if v3049 and v3050 and (string.sub(data, 1, 3) == "ID3" or v3049 == 255 and v3050 >= 224) then
												writefile(("Catsaken/%*"):format(v3044), v3046)
											else
												v137("lms music is corrupted!")
											end
										else
											v137("lms music download_url failed")
										end

										task.wait(0.5)
									end

									if not v3046 then
										n161 += 1

										return
									end

									t86.Data[v3044] = v3046
									table.insert(t86.Names, v3044)

									if n158 ~= n2 then
										return
									end

									n7 = 45687951
									n6 += 190
									n5 = 344415212
									n39 = 864781843
									n4 -= 696
									n158 += 925
									n40 += 588
									n41 = 47887567
									n2 += 301
									n3 = 593327529
									-- (could not be recovered)
								end)
								n160 += 1
								downloading:Set("DOWNLOADING " .. n160 .. "/" .. #result2 .. (n161 > 0 and "(" .. n161 .. " failed)" or ""))
							end

							downloading:Set("Downloaded " .. #result2 .. " LMS files\nMost of these LMS arent official, they're just presets")
						else
							v3035 = true
							downloading:Set("Lms failed to download (json error)")
						end
					else
						v3035 = true
						downloading:Set("Lms failed to download (http error)")
					end
				end

				local Selectedlms = isfile("Catsaken/Selectedlms") and readfile("Catsaken/Selectedlms") or "None"
				local Selectedchase = isfile("Catsaken/Selectedchase") and readfile("Catsaken/Selectedchase") or "None"
				local SelectedLobbyMusic = isfile("Catsaken/SelectedLobbyMusic") and readfile("Catsaken/SelectedLobbyMusic") or "None"

				Changechasetheme = function()
					local v3054

					for _, v in pairs(t24.ChaseThemesRaw) do
						v3054 = workspace.Themes:FindFirstChild(v)

						if v3054 then
							t24.CurrentChaseTheme = v3054

							break
						end
					end

					if Selectedchase == "None" then
						return
					end

					if not v3054 then
						return
					end

					local CurrentValue2 = v1164.Flags.CustomChaseID.CurrentValue
					local CurrentValue3 = v1164.Flags.CustomChaseFile.CurrentValue
					local soundId

					if CurrentValue2 ~= "" and Selectedchase == "Custom" then
						if tonumber(CurrentValue2) then
							if n40 == n6 then
								n8 = 1022492065
								n5 = 649263925
								n39 -= 1169
								n3 = 125250790
								n7 = 451278956
								n1 = 657626274
								n40 += 1731
								n41 += 1616
								n6 -= 1254
								-- (could not be recovered)
							end

							soundId = "rbxassetid://" .. CurrentValue2
						else
							soundId = CurrentValue2
						end
					elseif CurrentValue3 ~= "" and Selectedchase == "Custom" and isfile(CurrentValue3) then
						soundId = getcustomasset(CurrentValue3)
					elseif Selectedchase ~= "Custom" then
						soundId = Selectedchase
					end

					if soundId then
						v3054.SoundId = soundId
					end
				end
				Changelobbymusic = function()
					if SelectedLobbyMusic == "None" then
						return
					end

					local u3060

					local function v3061(p382)
						local now2 = tick()

						while tick() - now2 <= 5 do
							do
								if u3060 then
									return u3060
								end

								local v3063 = workspace.Themes:FindFirstChild(p382)

								if v3063 then
									return v3063
								end

								task.wait()

								continue
							end
							-- (could not be recovered)
						end

						return v137("WaitForChild: did not find", p382)
					end

					task.spawn(function()
						u3060 = v3061("spectreOutside", 5)

						if n7 ~= 420338653 then
							return
						end

						n39 = 596633107
						n1 += 1165
						n5 = 984179750
						n7 -= 1573
						n8 -= 1631
						-- (could not be recovered)
					end)
					task.spawn(function()
						u3060 = v3061("deathLobby", 5)

						return
						-- (could not be recovered)
					end)

					while not u3060 do
						task.wait()
					end

					t24.CurrentLobbyMusic = u3060

					local CurrentValue2 = v1164.Flags.CustomLobbyID.CurrentValue
					local CurrentValue3 = v1164.Flags.CustomLobbyFile.CurrentValue
					local soundId

					if CurrentValue2 ~= "" and SelectedLobbyMusic == "Custom" then
						if tonumber(CurrentValue2) then
							soundId = "rbxassetid://" .. CurrentValue2
						else
							soundId = CurrentValue2
						end
					elseif CurrentValue3 ~= "" and SelectedLobbyMusic == "Custom" then
						soundId = getcustomasset(CurrentValue3)
					elseif SelectedLobbyMusic ~= "Custom" then
						local getcustomasset_ = getcustomasset
						local v3068 = ("Catsaken/%*"):format(SelectedLobbyMusic)

						soundId = getcustomasset_(v3068)
					end

					if not u3060:GetAttribute("RealId") then
						if n8 == n1 then
							n41 -= 338
							n2 = 223590589
							n39 = 42196495
							n3 -= 1184
							n5 = 1022189897
							n40 -= 385
							n7 += 1373
							n1 = 980472263
							n8 -= 1278
						else
							u3060:SetAttribute("RealId", u3060.SoundId)
						end

						u3060:GetPropertyChangedSignal("SoundId"):Connect(function()
							if soundId and v1164.Flags.LobbyMusicChanger.CurrentValue then
								u3060.TimePosition = 0
								u3060.SoundId = soundId
							end

							return
							-- (could not be recovered)
						end)
					end

					if soundId then
						u3060.TimePosition = 0
						u3060.SoundId = soundId
					end
				end

				if not v3035 then
					Changelms = function()
						if Selectedlms == "None" then
							return
						end

						local LastSurvivor = workspace.Themes:WaitForChild("LastSurvivor", 5)

						if not LastSurvivor then
							return
						end

						t24.CurrentLms = LastSurvivor

						if not LastSurvivor:GetAttribute("RealId") then
							LastSurvivor:SetAttribute("RealId", LastSurvivor.SoundId)
						end

						local CurrentValue2 = v1164.Flags.CustomLMSID.CurrentValue
						local CurrentValue3 = v1164.Flags.CustomLMSFile.CurrentValue
						local soundId

						if CurrentValue2 ~= "" and Selectedlms == "Custom" then
							if tonumber(CurrentValue2) then
								soundId = "rbxassetid://" .. CurrentValue2
							else
								soundId = CurrentValue2
							end
						elseif CurrentValue3 ~= "" and Selectedlms == "Custom" then
							soundId = getcustomasset(CurrentValue3)
						elseif Selectedlms ~= "Custom" then
							local getcustomasset_ = getcustomasset
							local v3074 = ("Catsaken/%*"):format(Selectedlms)

							soundId = getcustomasset_(v3074)
						end

						if soundId then
							LastSurvivor.SoundId = soundId
						end
					end

					if not v3033 then
						Audio:CreateDropdown({
							Name = "LMS theme",
							Options = t86.Names,
							CurrentOption = { Selectedlms },
							Flag = "LMSSelectedTheme",
							Callback = function(p383)
								repeat
									task.wait()
								until v1164.Flags.LastManStandingChanger ~= nil

								local v3075 = p383[1]

								writefile("Catsaken/Selectedlms", v3075)
								Selectedlms = v3075

								local ok = v3075 == "Custom"
								local v3077

								if not ok then
									v3077 = t86.Data[v3075]
									ok = not v3077
								end

								if ok then
									if v1164.Flags.LastManStandingChanger.CurrentValue then
										Changelms()
									end

									return
								else
									local isfile_ = isfile
									local v3079 = ("Catsaken/%*"):format(v3075)

									if not isfile_(v3079) then
										v137("writing lms")
										writefile(("Catsaken/%*"):format(v3075), v3077)
									end

									if v1164.Flags.LastManStandingChanger.CurrentValue then
										Changelms()
									end

									return
								end
								-- (could not be recovered)
							end,
							Searchable = true
						})
						Audio:CreateInput({
							Name = "Custom LMS ID",
							CurrentValue = isfile("Catsaken/CustomLMSID") and readfile("Catsaken/CustomLMSID") or "",
							PlaceholderText = "Leave empty for none",
							RemoveTextAfterFocusLost = false,
							Flag = "CustomLMSID",
							Callback = function(p384)
								if n4 == 944310039 then
									writefile("Catsaken/CustomLMSID", p384)
									Changelms()

									return
								end

								n2 -= 309
								n6 = 947603164
								n40 = 263305153
								n5 = 808736775
								n9 = 996739909
								n39 = 75477601
								n41 = 494328381
								n4 -= 660
								n1 = 855643143
								-- (could not be recovered)
							end
						})
						Audio:CreateInput({
							Name = "Custom LMS File",
							CurrentValue = isfile("Catsaken/CustomLMSFile") and readfile("Catsaken/CustomLMSFile") or "",
							PlaceholderText = "Leave empty for none",
							RemoveTextAfterFocusLost = false,
							Flag = "CustomLMSFile",
							Callback = function(p385, p386)
								writefile("Catsaken/CustomLMSFile", p385)

								if p385 == "" then
									return
								end

								if not isfile(p385) then
									return lib:Notify({
										Title = "Incorrect file (lms changer)",
										Content = "\"" .. p385 .. "\" is not an existing file",
										Duration = 8,
										Image = "ban"
									})
								end

								if not p386 then
									lib:Notify({
										Title = "Found file",
										Content = "File located in workspace. Please make sure to change the selected lms theme to Custom",
										Duration = 8,
										Image = "check"
									})
								end

								Changelms()

								return
								-- (could not be recovered)
							end
						})
						Audio:CreateToggle({
							Name = "Change LMS",
							CurrentValue = isfile("Catsaken/LmsChangerEnabled"),
							Flag = "LastManStandingChanger",
							Callback = function(p387)
								if p387 then
									task.spawn(function()
										local spilled = {}

										writefile("Catsaken/LmsChangerEnabled", "")
									end)
									Changelms()
								else
									pcall(delfile, "Catsaken/LmsChangerEnabled")

									if t24.CurrentLms then
										t24.CurrentLms.SoundId = t24.CurrentLms:GetAttribute("RealId")
									end
								end
							end
						})
					end

					Audio:CreateButton({
						Name = ("[%s LMS Downloads]"):format(v3033 and "Enable" or "Disable"),
						Callback = function()
							local s20 = "LMS_DOWNLOAD_TOGGLE"
							local v3082 = v3033

							writefile(s20, v3082 and "1" or "0")
						end
					})
				end

				if v3033 then
					downloading:Set("Downloads are disabled")
				end

				Audio:CreateSection("Guest 1337", "Right")

				local s21 = ""
				local s22 = ""
				local s23 = ""
				local s24 = ""

				Audio:CreateInput({
					Name = "Block Success | ID",
					CurrentValue = "",
					PlaceholderText = "Number/Text",
					RemoveTextAfterFocusLost = false,
					Flag = "BlockSuccessID",
					Callback = function(p388)
						if p388 == "" then
							s22 = ""

							return
						end

						if n8 == 69057442 then
							n8 = 185985425
							n41 -= 121
							n6 = 55737132
							n1 += 1945
							n4 -= 1463
							n40 = 931531912
							n2 -= 1063
							n5 -= 818
							n39 = 755239250
							-- (could not be recovered)
						end

						if tonumber(p388) then
							s22 = "rbxassetid://" .. p388
							pcall(function()
								ContentProvider:PreloadAsync({ audiochanger_Block })

								return
								-- (could not be recovered)
							end)

							return
						end

						if p388:find("rbxassetid://") or p388:find("http://www.roblox.com/asset/") then
							s22 = p388
							pcall(function()
								local t87 = { audiochanger_Block }
								local v3088 = t87

								ContentProvider:PreloadAsync(t87)

								return
								-- (could not be recovered)
							end)
						else
							s22 = ""
						end
					end
				})
				Audio:CreateInput({
					Name = "Block Success | File",
					CurrentValue = "",
					PlaceholderText = "Text",
					RemoveTextAfterFocusLost = false,
					Flag = "BlockSuccessFile",
					Callback = function(p389, p390)
						if p389 == "" then
							s21 = ""

							return
						end

						if not isfile(p389) then
							s21 = ""

							return lib:Notify({
								Title = "Incorrect file (audio changer)",
								Content = "\"" .. p389 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						if not p390 then
							lib:Notify({
								Title = "Found file",
								Content = "File located in workspace.",
								Duration = 8,
								Image = "check"
							})
						end

						s21 = getcustomasset(p389)
						pcall(function()
							ContentProvider:PreloadAsync({ s21 })

							return
						end)

						return
						-- (could not be recovered)
					end
				})
				Audio:CreateInput({
					Name = "Parry | ID",
					CurrentValue = "",
					PlaceholderText = "Number/Text",
					RemoveTextAfterFocusLost = false,
					Flag = "ParryFile",
					Callback = function(p391)
						if p391 == "" then
							s24 = ""

							return
						end

						if tonumber(p391) then
							s24 = "rbxassetid://" .. p391
							pcall(function()
								ContentProvider:PreloadAsync({ s24 })

								return
								-- (could not be recovered)
							end)

							return
						end

						if p391:find("rbxassetid://") or p391:find("http://www.roblox.com/asset/") then
							s24 = p391
							pcall(function()
								ContentProvider:PreloadAsync({ audiochanger_Block })

								if n9 == 263112959 then
									return
								end

								n9 = 376515683
								n5 = 845275844
								n2 = 190270931
								n40 -= 1560
								n39 = 163745356
								n41 += 138
								n4 += 855

								return table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil ~= nil --[[ constant not decoded ]], nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 384)
							end)
						else
							s24 = ""
						end
					end
				})
				Audio:CreateInput({
					Name = "Parry | File",
					CurrentValue = "",
					PlaceholderText = "Text",
					RemoveTextAfterFocusLost = false,
					Flag = "ParryID",
					Callback = function(p392, p393)
						if p392 == "" then
							s23 = ""

							return
						end

						if not isfile(p392) then
							s23 = ""

							return lib:Notify({
								Title = "Incorrect file (audio changer)",
								Content = "\"" .. p392 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						if not p393 then
							lib:Notify({
								Title = "Found file",
								Content = "File located in workspace.",
								Duration = 8,
								Image = "check"
							})
						end

						s23 = getcustomasset(p392)

						if n5 ~= 850992279 then
							pcall(function()
								ContentProvider:PreloadAsync({ s23 })

								return
								-- (could not be recovered)
							end)

							return
						end

						n6 += 1604
						n40 = 337038339
						n1 += 1859
						n5 += 1748
						n3 -= 1002
						n7 = 948674840
						n41 = 661858963
						n4 = 706177257
						n39 += 710
						-- (could not be recovered)
					end
				})

				local s25 = ""
				local s26 = ""

				Audio:CreateInput({
					Name = "Punch | ID",
					CurrentValue = "",
					PlaceholderText = "Number/Text",
					RemoveTextAfterFocusLost = false,
					Flag = "PunchID",
					Callback = function(p394)
						if p394 == "" then
							s26 = ""

							return
						end

						if tonumber(p394) then
							s26 = "rbxassetid://" .. p394
							pcall(function()
								local v3091
								local v3092
								local v3093

								if n41 == 711369103 then
									ContentProvider:PreloadAsync({ s26 })

									return
								end

								n5 -= 2006
								n39 = 103604841
								n1 -= 862
								n41 += 1288
								n6 = 793500234
								n4 = 13165568

								return v3091, v3092, v3093, nil
							end)

							return
						end

						if p394:find("rbxassetid://") or p394:find("http://www.roblox.com/asset/") then
							s26 = p394
							pcall(function()
								ContentProvider:PreloadAsync({ s26 })
							end)
						else
							s26 = ""
						end
					end
				})
				Audio:CreateInput({
					Name = "Punch | File",
					CurrentValue = "",
					PlaceholderText = "Text",
					RemoveTextAfterFocusLost = false,
					Flag = "PunchFile",
					Callback = function(p395, p396)
						if p395 == "" then
							s25 = ""

							return
						end

						if not isfile(p395) then
							s25 = ""

							return lib:Notify({
								Title = "Incorrect file (audio changer)",
								Content = "\"" .. p395 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						if not p396 then
							lib:Notify({
								Title = "Found file",
								Content = "File located in workspace.",
								Duration = 8,
								Image = "check"
							})
						end

						s25 = getcustomasset(p395)

						local n162 = 960281852

						pcall(function()
							if n2 ~= n162 then
								ContentProvider:PreloadAsync({ s25 })

								return
							end

							n2 -= 2038
							n5 += 1643
							n3 = 1067387695
							n7 -= 81
							n162 += 313
							n40 = 19362118
							-- (could not be recovered)
						end)

						return
						-- (could not be recovered)
					end
				})
				Audio:CreateToggle({
					Name = "Silence rage SFX",
					CurrentValue = false,
					Flag = "SilenceRageSFX",
					TextMode = true,
					Callback = v1179
				})
				Audio:CreateSection("Chase Themes", "Left")

				local t88 = {
					Names = { "Custom" },
					Data = {}
				}

				ins_custom_files(t88, true)

				for _, v in pairs(t24.ChaseThemesCategorized) do
					table.insert(t88.Names, v.Name)
					t88.Data[v.Name] = v.Asset
				end

				Audio:CreateDropdown({
					Name = "Chase Theme",
					Options = t88.Names,
					CurrentOption = { Selectedchase },
					Flag = "ChaseSelectedTheme",
					Callback = function(p397)
						repeat
							task.wait()
						until v1164.Flags.ChaseChanger ~= nil

						local v3098 = p397[1]

						if v3098 == "Custom" then
							Selectedchase = v3098
						else
							Selectedchase = t88.Data[v3098]
						end

						if v1164.Flags.ChaseChanger.CurrentValue then
							Changechasetheme()
						end

						if n39 > 148570331 then
							return
						end

						n41 = 392013804
						n40 = 285618381
						n1 = 493230721
						n4 = 861483886
						n8 = 844615572
						n2 -= 922
						n39 = 309645545
						n6 = 900743945
						n5 = 490948166
					end,
					Searchable = true
				})
				Audio:CreateToggle({
					Name = "Change chase theme",
					CurrentValue = isfile("Catsaken/ChaseChangerEnabled"),
					Flag = "ChaseChanger",
					Callback = function(p398)
						if p398 then
							task.spawn(function()
								writefile("Catsaken/ChaseChangerEnabled", "")

								return
							end)
							Changechasetheme()
						else
							pcall(delfile, "Catsaken/ChaseChangerEnabled")

							if t24.CurrentChaseTheme then
								t24.CurrentChaseTheme.SoundId = t24.CurrentChaseTheme.Name
							end
						end
					end
				})
				Audio:CreateInput({
					Name = "Custom Chase ID",
					CurrentValue = isfile("Catsaken/CustomChaseID") and readfile("Catsaken/CustomChaseID") or "",
					PlaceholderText = "Leave empty for none",
					RemoveTextAfterFocusLost = false,
					Flag = "CustomChaseID",
					Callback = function(p399)
						writefile("Catsaken/CustomChaseID", p399)
						Changechasetheme()

						return
						-- (could not be recovered)
					end
				})
				Audio:CreateInput({
					Name = "Custom Chase File",
					CurrentValue = isfile("Catsaken/CustomChaseFile") and readfile("Catsaken/CustomChaseFile") or "",
					PlaceholderText = "Leave empty for none",
					RemoveTextAfterFocusLost = false,
					Flag = "CustomChaseFile",
					Callback = function(p400, p401)
						writefile("Catsaken/CustomChaseFile", p400)

						if p400 == "" then
							return
						end

						if isfile(p400) then
							if not p401 then
								lib:Notify({
									Title = "Found file",
									Content = "File located in workspace. Please make sure to change the selected chase theme to Custom",
									Duration = 8,
									Image = "check"
								})
								Changechasetheme()
							end

							return
						end

						if n9 < n39 then
							return lib:Notify({
								Title = "Incorrect file (chase changer)",
								Content = "\"" .. p400 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						n40 = 1046440803
						n41 = 629208647
						n8 = 9230149
						n1 += 1401
						n5 -= 1154
						n39 = 883947048
						n7 = 458904805
						n4 += 256
						n9 = 197811695
						-- (could not be recovered)
					end
				})
				Audio:CreateSection("Lobby Music", "Left")

				local downloading2 = Audio:CreateLabel("DOWNLOADING")

				if not isfile("LOBBY_DOWNLOAD_TOGGLE") then
					writefile("LOBBY_DOWNLOAD_TOGGLE", "1")
				end

				local v3100 = readfile("LOBBY_DOWNLOAD_TOGGLE") == "0"
				local t89 = {
					Names = { "Custom" },
					Data = {}
				}

				ins_custom_files(t89)

				local v3102 = false

				if not v3100 then
					local ok, result = pcall(function()
						return safehttpget("https://api.github.com/repos/aibabylaugh/catsaken/contents/lobby")
					end)

					if ok and result then
						local ok2, result2 = xpcall(function()
							if n6 < n41 then
								return HttpService:JSONDecode(result)
							end

							n6 = 29119547
							n3 += 646
							n40 -= 682
							n41 += 1392
							n5 -= 931
							n7 = 617299899
							n39 += 289
							n8 = 496161394
							n1 -= 943
							-- (could not be recovered)
						end, function(p402)
							v137("lobby json decode failed:", tostring(p402))

							return
							-- (could not be recovered)
						end)

						if ok2 and typeof(result2) == "table" then
							local n163 = 0

							for _, v in result2, nil, nil do
								pcall(function()
									local v3110 = v.name:sub(1, -5)
									local n164 = 959665175
									local v3112 = ("Catsaken/%*"):format(v3110)
									local v3113

									if isfile(v3112) then
										local readfile_ = readfile
										local v3115 = ("Catsaken/%*"):format(v3110)

										v3113 = readfile_(v3115)
									else
										v3113 = safehttpget(v.download_url)

										if v3113 and typeof(v3113) == "string" then
											local v3116 = string.byte(data, 1)
											local v3117 = string.byte(data, 2)

											if v3116 and v3117 and (string.sub(data, 1, 3) == "ID3" or v3116 == 255 and v3117 >= 224) then
												writefile(("Catsaken/%*"):format(v3110), v3113)
											else
												v137("lobby music is corrupted!")
											end
										else
											v137("lobby music download_url failed")
										end

										task.wait(0.5)
									end

									if not v3113 then
										return
									end

									t89.Data[v3110] = v3113

									if n5 ~= n164 then
										table.insert(t89.Names, v3110)

										return
									end

									n9 += 197
									n8 += 355
									n39 = 1062037916
									n2 -= 1280
									n41 += 1031
									n3 = 377258309
									n40 = 953835899
									n1 = 808573863
									n5 -= 265
								end)
								n163 += 1
								downloading2:Set("DOWNLOADING " .. n163 .. "/" .. #result2)
							end

							downloading2:Set("Downloaded " .. #result2 .. " lobby music files")
						else
							v3102 = true
							downloading2:Set("Lobby music failed to download (json error)")
						end
					else
						v3102 = true
						downloading2:Set("Lobby music failed to download (http error)")
					end
				end

				if not v3100 and not v3102 then
					Audio:CreateDropdown({
						Name = "Lobby music theme",
						Options = t89.Names,
						CurrentOption = { SelectedLobbyMusic },
						Flag = "LobbyMusicSelectedTheme",
						Callback = function(p403)
							repeat
								task.wait()
							until v1164.Flags.LastManStandingChanger ~= nil

							local v3118 = p403[1]

							writefile("Catsaken/Selectedlobbymusic", v3118)
							SelectedLobbyMusic = v3118

							local n165 = 421501489

							if v3118 ~= "Custom" then
								local v3120 = t89.Data[v3118]

								if v3120 then
									local isfile_ = isfile
									local v3122 = ("Catsaken/%*"):format(v3118)

									if not isfile_(v3122) then
										if n165 == n6 then
											n41 = 97531695
											n39 += 1397
											n7 = 912019001
											n40 = 514482272
											n2 = 362259982
											n4 -= 388
											n8 = 905385023
											n5 = 261288919
											n6 += 1351
											-- (could not be recovered)
										end

										v137("writing lobby music")
										writefile(("Catsaken/%*"):format(v3118), v3120)
									end
								end
							end

							if v1164.Flags.LobbyMusicChanger.CurrentValue then
								Changelobbymusic()
							end
						end,
						Searchable = true
					})
					Audio:CreateInput({
						Name = "Custom Lobby Music ID",
						CurrentValue = isfile("Catsaken/CustomLobbyID") and readfile("Catsaken/CustomLobbyID") or "",
						PlaceholderText = "Leave empty for none",
						RemoveTextAfterFocusLost = false,
						Flag = "CustomLobbyID",
						Callback = function(p404)
							writefile("Catsaken/CustomLobbyID", p404)
							Changelobbymusic()

							return
							-- (could not be recovered)
						end
					})
					Audio:CreateInput({
						Name = "Custom Lobby Music File",
						CurrentValue = isfile("Catsaken/CustomLobbyFile") and readfile("Catsaken/CustomLobbyFile") or "",
						PlaceholderText = "Leave empty for none",
						RemoveTextAfterFocusLost = false,
						Flag = "CustomLobbyFile",
						Callback = function(p405, p406)
							n159 = 876323936
							writefile("Catsaken/CustomLobbyFile", p405)

							if p405 == "" then
								return
							end

							if not isfile(p405) then
								return lib:Notify({
									Title = "Incorrect file (lobby music changer)",
									Content = "\"" .. p405 .. "\" is not an existing file",
									Duration = 8,
									Image = "ban"
								})
							end

							if not p406 then
								lib:Notify({
									Title = "Found file",
									Content = "File located in workspace. Please make sure to change the selected lobby music to Custom",
									Duration = 8,
									Image = "check"
								})
							end

							Changelobbymusic()

							if n2 ~= n159 then
								return
							end

							n7 += 1123
							n8 = 40282028
							n1 += 1552
							n40 -= 1804
							n2 = 137160153
							n41 = 190992111
							n5 += 1680
							n159 += 2024
							n39 += 100
							n3 += 1990
							-- (could not be recovered)
						end
					})
					Audio:CreateToggle({
						Name = "Change Lobby Music",
						CurrentValue = isfile("Catsaken/LobbyMusicChanger"),
						Flag = "LobbyMusicChanger",
						Callback = function(p407)
							n157 = 311148725

							if p407 then
								task.spawn(function()
									if n5 ~= n4 then
										writefile("Catsaken/LobbyMusicChanger", "")

										return
									end

									n41 -= 1754
									n40 = 589718288
									n4 = 148313695
									n5 = 443331583
									n157 = 546599483
									n2 += 525
									-- (could not be recovered)
								end)
								Changelobbymusic()
							else
								task.spawn(function()
									if n7 ~= 420340173 then
										pcall(delfile, "Catsaken/LobbyMusicChanger")

										return
									end

									n157 -= 610
									n4 += 1858
									n5 += 518
									n39 += 1320
									n7 = 1039972801
									n40 = 1019711172
									-- (could not be recovered)
								end)

								if n41 == n157 then
									n5 += 2016
									n4 = 620960338
									n3 = 851917259
									n2 = 560044388
									n157 -= 134
									n40 -= 594
									n6 = 830659928
									n39 -= 311
									n7 = 399326974
									n41 += 1008
									upv229 = nil --[[ constant not decoded ]]
								elseif t24.CurrentLobbyMusic then
									t24.CurrentLobbyMusic.SoundId = t24.CurrentLobbyMusic:GetAttribute("RealId")
								end
							end
						end
					})
				end

				Audio:CreateButton({
					Name = ("[%s Lobby Music Downloads]"):format(v3100 and "Enable" or "Disable"),
					Callback = function()
						writefile("LOBBY_DOWNLOAD_TOGGLE", v3100 and "1" or "0")

						if n39 == 622648349 then
							n8 -= 1336
							n41 += 384
							n2 -= 607
							n6 = 20126425
							n4 += 1694
							n3 -= 1110
							n40 += 1485
							n5 = 122379423
							n39 += 1336
						end
					end
				})

				if v3100 then
					downloading2:Set("Downloads are disabled")
				end
			end

			track_sounds = function(x)
				if u48 then
					return
				end

				xpcall(function()
					if not x.Parent then
						return
					end

					if not x.Parent.Parent then
						return
					end

					local a = x.Parent.Parent.Name == "Guest1337" and x.Parent.Parent:GetAttribute("SkinName")

					if a == "" then
						a = nil
					end

					local r = require(Survivors2.Guest1337.Config)
					local X = a and require(Survivors.Guest1337[a].Config) or r
					local a = LocalPlayer.Character

					if x:IsA("Sound") then
						if x.Name == "rbxassetid://109931874166612" and v1164.Flags.SilenceRageSFX.CurrentValue then
							x:Destroy()
						end

						if x.Name == ((X.Sounds and X.Sounds.BlockSuccess) and X.Sounds.BlockSuccess or r.Sounds.BlockSuccess) then
							local a = false

							if audiochanger_Block_Id and audiochanger_Block_Id ~= "" then
								a = true
								InterceptAudio(x, audiochanger_Block_Id)
							end

							if audiochanger_Block_File and audiochanger_Block_File ~= "" and not a then
								InterceptAudio(x, audiochanger_Block_File)
							end
						end

						if x.SoundId == ((X.Sounds and X.Sounds.Parry) and X.Sounds.Parry or r.Sounds.Parry) then
							local a = false

							if audiochanger_Parry_Id and audiochanger_Parry_Id ~= "" then
								a = true
								InterceptAudio(x, audiochanger_Parry_Id)
							end

							if audiochanger_Parry_File and audiochanger_Parry_File ~= "" and not a then
								InterceptAudio(x, audiochanger_Parry_File)
							end
						end

						if x.SoundId == ((X.Sounds and X.Sounds.Punch) and X.Sounds.Punch or r.Sounds.Punch) then
							local a = false

							if audiochanger_Punch_Id and audiochanger_Punch_Id ~= "" then
								a = true
								InterceptAudio(x, audiochanger_Punch_Id)
							end

							if audiochanger_Punch_File and audiochanger_Punch_File ~= "" and not a then
								InterceptAudio(x, audiochanger_Punch_File)
							end
						end

						local a = t24.MainKiller

						if a and x.Parent.Parent == a and not IsKiller() then
							if LocalPlayer.Character.Name == "007n7" and v1164.Flags.AutoCloneToggle.CurrentValue and table.find(t24.Metas.SoundMetas.AutoCloneSounds, x.SoundId) then
								local Y = t24.Metas.AttackIdToName[x.SoundId]

								if not Y then
									return v137("[auto clone] attack name nil")
								end

								local X = Instance.new("Part")

								X.Parent = workspace
								X.Anchored = true
								X.CanCollide = false
								X.Transparency = 0.5
								X.Color = Color3.fromRGB(255, 0, 0)
								X.Material = Enum.Material.Air

								local r = tick()

								while x.IsPlaying and tick() - r <= t24.HitboxesDuration do
									if HasAbilityReady("Clone") then
										local r = a.HumanoidRootPart
										local q = LocalPlayer.Character.HumanoidRootPart
										local B = (q.Position - r.Position).Magnitude
										local e = v1164.Flags.NGAutoBlockHitboxCheck.CurrentValue

										if (e or B <= v1164.Flags.RagingPaceRange.CurrentValue) and (B <= 5 or not v1164.Flags.RagingPaceFaceCheck.CurrentValue or IsFacing2(q, r, 0.707, 1)) and (not e or (function()
											local r = t24.Metas.HitboxSizesMeta[a.Name .. Y] or t24.AttackHitboxes[a.Name]

											if not r.fake then
												local Y = (v1164.Flags.QueryAutoblock.CurrentValue and a.QueryHitbox or a.HumanoidRootPart).CFrame
												local q = Y:ToWorldSpace(CFrame.new(-r.offset))
												local q = LocalPlayer.Character.HumanoidRootPart
												local B = v1164.Flags.QueryAutoblock.CurrentValue and LocalPlayer.Character.QueryHitbox or q
												local e = r.size + ((q.Size / 2) * (q.AssemblyLinearVelocity.magnitude / 10))

												X.Size = e
												X.CFrame = Y + (Y.LookVector * (e.Z / 2))

												return arePartsTouching(X, B)
											end
										end)()) then
											if v1164.Flags.AutoBlockMS.CurrentValue > 0 then
												task.wait(v1164.Flags.AutoBlockMS.CurrentValue)
											end

											Clone()
										end
									end

									RunService.RenderStepped:Wait()
								end

								X:Destroy()
							elseif table.find(t24.Metas.SoundMetas.AutoblockSounds, x.SoundId) and v1164.Flags.AutoBlockToggle.CurrentValue and LocalPlayer.Character.Name == "Guest1337" then
								local Y = a.HumanoidRootPart
								local W = LocalPlayer.Character.HumanoidRootPart
								local X = (W.Position - Y.Position).Magnitude
								local Y = tick()

								while x.IsPlaying and tick() - Y <= t24.HitboxesDuration do
									if (HasAbilityReady("Block")) then
										if Counter(a, W, track, tick()) then
											break
										end

										task.wait()
									end

									RunService.RenderStepped:Wait()
								end
							end
						end
					end
				end, function(x)
					v137("error in sound tracker:", tostring(x))
				end)
			end
			t24.Disconnectables[#t24.Disconnectables + 1] = workspace.Players.DescendantAdded:Connect(track_sounds)
			t24.Disconnectables[#t24.Disconnectables + 1] = workspace.Themes.ChildAdded:Connect(function(child)
				if child.Name == "LastSurvivor" and v1164.Flags.LastManStandingChanger.CurrentValue then
					t24.CurrentLms = child
					Changelms()
				end

				if (child.Name == "spectreOutside" or child.Name == "deathLobby") and v1164.Flags.LobbyMusicChanger.CurrentValue then
					t24.CurrentLobbyMusic = child
					Changelobbymusic()
				end

				if table.find(t24.ChaseThemesRaw, child.Name) and v1164.Flags.ChaseChanger.CurrentValue then
					if not (n1 < n41) then
						n6 = 841591295
						n40 = 458070281
						n2 = 696051925
						n41 = 295237523
						n7 -= 749
						n5 = 554054253
						n1 += 1336
						n39 -= 478
						n9 = 731522205
						-- (could not be recovered)
					end

					Changechasetheme()
				end
			end)
		end, function(p408)
			v137("The traceback:\n" .. debug.traceback() .. "The error:\n" .. tostring(p408))

			if u1072 then
				obj.LOADING_ERROR = true

				if n3 == n6 then
					n6 -= 1475
					n8 += 884
					n2 = 135135587
					n9 += 808
					n5 = 852792254
					n7 = 1055964984
					n1 += 1225
					n3 = 616310388
					n4 = 914890335
					-- (could not be recovered)
				end

				u1072("Error occured! Please report in discord.\n(say /console or press F9)")
				u1072 = function()
				end
			end
		end)
	end
end

local ErrLogConnection = obj.ErrLogConnection

if ErrLogConnection then
	ErrLogConnection:Disconnect()
	obj.ErrLogConnection = nil
end

obj.ErrLogConnection = GetService("LogService").MessageOut:Connect(function(p409, p410)
	if p410 == Enum.MessageType.MessageError and p409:find("__SCRIPT") then
		warn("The error:\n" .. tostring(p409))

		if CHANGELOADSTATE then
			obj.LOADING_ERROR = true
			CHANGELOADSTATE("Error occured! Please report in discord.\n(say /console or press F9)")
			CHANGELOADSTATE = function()
			end
		end
	end
end)
__SCRIPT()
