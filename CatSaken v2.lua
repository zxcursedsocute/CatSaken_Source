--[[
               __                  __                  
  ____ _____ _/  |_  ___________  |  | __ ____   ____  
_/ ___\\__  \\   __\/  ___/\__  \ |  |/ // __ \ /    \ 
\  \___ / __ \|  |  \___ \  / __ \|    <\  ___/|   |  \
 \___  >____  /__| /____  >(____  /__|_ \\___  >___|  /
     \/     \/          \/      \/     \/    \/     \/ 
]]

-- fixed invis enjoy + Improved rayfield UI
if (getgenv()).executed then 
    return (getgenv()).Rayfield:Notify({
        Title = "Catsaken",
        Content = "Already loaded! Trying to reload? Press the button in Miscellaneous",
        Duration = 5
    })
end

(getgenv()).executed = true 
local l = {}
(getgenv()).OldHF = (getgenv()).OldHF or hookfunction 

hookfunction = newcclosure(function(V, e)
    table.insert(l, V)
    return (getgenv()).OldHF(V, e)
end)

local V = getrenv()
hookfunction(V.debug.traceback, newcclosure(function(l, ...)
    return "UIStroke is not a valid member of DataModel \"autistic\"\n        Stack Begin\n        Script 'LocalScript' Line 9125 - function IsPlayerKiller\n        Script 'LocalScript' Line 4790\n        Stack End"
end))

local e = false 
local X = game:GetService("LogService")
local C = game:GetService("ContentProvider")
local d = game:GetService("RunService")
local I = game:GetService("HttpService")
local J = game:GetService("Players")
local F = game:GetService("ReplicatedStorage")
local j = game:GetService("Stats")
local i = game:GetService("TweenService")
local f = game:GetService("VirtualInputManager")

local Y = J.LocalPlayer 
local B = require(F.Systems.Character.Game.Sprinting)
local E = require(F.Modules.Misc.FlowGameManager.FlowGame)
local K = (require(F.Systems.Player.Miscellaneous.GetPlayerMousePosition)).GetMousePos 
local h = require(F.Systems.Character.QualityOfLife.DirectionalSpeed)
local c = require(F.Assets.Survivors.Dusekkar.Behavior)
local z = require(F.Systems.Player.Game.SmoothShiftLock)
local s = require(F.Systems.Player.UI.SidebarHandler)
local q = require(F.Assets.Survivors.Veeronica.Config)
local U = require(F.Systems.Player.Game.CharacterReplication)
local O = require(F.Modules.Icon)
local N = require(F.Modules.Ragdolls)
local S = require(F.Modules.StatusEffects.Slowness)
local x = require(F.Modules.StatusEffects.SurvivorExclusive.Subspaced)
local w = require(F.Modules.StatusEffects.Blindness)
local W = require(F.Modules.StatusEffects.KillerExclusive.Glitched)
local G = require(F.Modules.StatusEffects.Slateskin)
local A = require(F.Modules.StatusEffects.Nausea)
local y = require(F.Modules.StatusEffects.Stunned)
local n = F.Assets.Survivors.Veeronica.Behavior 
local b = (F:WaitForChild("Modules")):WaitForChild("Network")

local r = debug.getupvalue((require(b)).FireSignal, 4)
local P = (Y:WaitForChild("PlayerData")):WaitForChild("Settings")
local Q = Y.PlayerGui.TemporaryUI 
local T = Q:FindFirstChild("PlayerInfo")
local Z = workspace.CurrentCamera 
local o = workspace.Players 
local D = o.Survivors 
local a = o.Killers 
local k = o.Spectating 

local u = _G.RealDevice or Y:GetAttribute("Device")
_G.RealDevice = u 
local t = task.wait 
local M = {}
local p = ((identifyexecutor()):lower()):find("velocity")
local R = Instance.new("ScreenGui", p and game:GetService("CoreGui") or gethui())
local H = warn 

local L = (loadstring(game:HttpGet("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/drawing.lua")))()

local function v(...)
    return H("[Catsaken]", ...)
end 

local m = (loadstring(game:HttpGet("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/rayfield.lua")))()
local g = nil 

if not isfolder("Catsaken") then 
    makefolder("Catsaken")
end 

if not isfile("Catsaken/Image") then 
    local l = game:HttpGet("https://github.com/aibabylaugh/catsaken/raw/refs/heads/main/catsaken.png")
    writefile("Catsaken/Image", l)
end 

local lg = m:CreateWindow({
    Name = "Catsaken Remastered",
    Icon = getcustomasset("Catsaken/Image"),
    LoadingTitle = "Catsaken Remastered",
    LoadingSubtitle = "V1",
    ShowText = "catsaken",
    Theme = "AmberGlow",
    ToggleUIKeybind = "K",
    DisableRayfieldPrompts = true,
    DisableBuildWarnings = true,
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
    SizeSettings = {750, 480}
})

if p then 
    m:Notify({
        Title = "Dear velocity user",
        Content = "Your executor is very unstable. Script may crash randomly or if certain features are enabled",
        Duration = 30,
        Image = "bug"
    })
end 

local function Vg(l, V)
    local e = require(l)
    if not e.Animations then 
        return v("Module \"" .. (tostring(l.Parent) .. "\" does not have Animations"))
    end 
    if not e.Animations[V] then 
        return v(V .. " is not an existing attack")
    end 
    return e.Animations[V]
end 

local eg = function() end 

local Xg = lg:CreateTab("Generators", "battery-charging")
local Cg = lg:CreateTab("ESP", "scan-eye")
local dg = lg:CreateTab("Stamina", "footprints")
local Ig = lg:CreateTab("Aimbot", "crosshair")
local Jg = lg:CreateTab("Hitboxes", "sword")
local Fg = lg:CreateTab("Convenience", "leaf")
local jg = lg:CreateTab("Auto Block", "shield")
local ig = lg:CreateTab("Player", "user")
local fg = lg:CreateTab("Map", "map")
local Yg = lg:CreateTab("Antis", "ban")
local Bg = lg:CreateTab("Miscellaneous", "dices")

local Eg = F.Assets.Skins.Killers 
local Kg = Eg 
local hg = F.Assets.Killers 
local cg = {
    GameState = 0,
    RoundGenerators = {},
    Killers = {},
    Survivors = {},
    Items = {},
    Gingerbread = {},
    TaphDebris = {},
    BuildermanDebris = {},
    DoeDebris = {},
    AttackAnimations = {},
    M1Animations = {},
    BlockMeta = {},
    RoundStart = 0
}

Y.PlayerGui.TemporaryUI.ChildAdded:Connect(function(l)
    if l.Name == "PlayerInfo" then 
        T = l 
    end 
end)

local function zg(l)
    if not l then return end 
    if table.find(cg.AttackAnimations, l) then return end 
    table.insert(cg.AttackAnimations, l)
end 

local function sg(l, V, e, X)
    local C = {"Slash", "Behead", "GashingWoundStart", "SlashAir", "Stab", "Bite", "Attack"}
    
    if not cg.BlockMeta[l] then 
        cg.BlockMeta[l] = {}
    end 
    
    for V, d in V do 
        for l, V in (e or Eg)[l]:GetChildren() do 
            local e = false 
            repeat 
                if not V:FindFirstChild("Config") then 
                    e = true 
                    break 
                end 
                local l = Vg(V.Config, d)
                if l then 
                    cg.BlockMeta[l] = d 
                    if table.find(C, d) then 
                        table.insert(cg.M1Animations, l)
                    end 
                end 
                zg(l)
                e = true 
            until true 
            if not e then break end 
        end 
        
        local I = Vg((X or hg)[l].Config, d)
        if I then 
            if table.find(C, d) then 
                table.insert(cg.M1Animations, I)
            end 
            cg.BlockMeta[I] = d 
        end 
        zg(I)
    end 
end 

sg("Slasher", {"Slash", "Behead", "GashingWoundStart"})
sg("1x1x1x1", {"Slash", "Entanglement", "MassInfection"})
sg("Nosferatu", {"Slash", "SlashAir"})
sg("Noli", {"Stab"})
sg("JohnDoe", {"Slash"})

for l, V in Eg.Sixer:GetChildren() do 
    local e = false 
    repeat 
        if not V:FindFirstChild("Config") then 
            e = true 
            break 
        end 
        local l = Vg(V.Config, "Slash")
        if l then 
            if l.Slash then 
                table.insert(cg.M1Animations, l.Slash)
                table.insert(cg.M1Animations, l.Bite)
                zg(l.Slash)
                zg(l.Bite)
            end 
        end 
        e = true 
    until true 
    if not e then break end 
end 

local qg = (Vg(hg.Sixer.Config, "Slash")).Slash 
local Ug = (Vg(hg.Sixer.Config, "Slash")).Bite 
table.insert(cg.M1Animations, qg)
table.insert(cg.M1Animations, Ug)
zg(qg)
zg(Ug)
sg("c00lkidd", {"Attack", "CorruptNature"})

local Og = F.Assets.Skins.Survivors 
local Ng = F.Assets.Survivors 
sg("Shedletsky", {"Slash"}, Og, Ng)

local Sg = {
    EspAppliedToGenerators = {},
    EspAppliedToItems = {},
    EspAppliedToGingerbread = {},
    EspAppliedToTaphDebris = {},
    EspAppliedToBuildermanDebris = {},
    EspAppliedToDoeDebris = {},
    ConstantImages = {},
    DusekkarActive = false,
    NoliActive = false,
    CoolkidActive = false,
    CurrentPuzzle = nil,
    UsingWalkspeedOverride = false,
    WalkspeedOverrideAnimations = {},
    WalkspeedOverrideEndedAnims = {}
}

do 
    local l = Sg.WalkspeedOverrideAnimations 
    local V = Sg.WalkspeedOverrideEndedAnims 
    table.insert(l, (require(hg.c00lkidd.Config)).Animations.WalkspeedOverrideStart)
    
    for e, X in Kg.c00lkidd:GetChildren() do 
        local C = false 
        repeat 
            if not X:FindFirstChild("Config") then 
                C = true 
                break 
            end 
            local e = require(X:FindFirstChild("Config"))
            if not e.Animations then 
                C = true 
                break 
            end 
            if not e.Animations.WalkspeedOverrideStart then 
                C = true 
                break 
            end 
            if not e.Animations.WalkspeedOverrideHit then 
                C = true 
                break 
            end 
            if not e.Animations.WalkspeedOverrideMiss then 
                C = true 
                break 
            end 
            if not table.find(l, e.Animations.WalkspeedOverrideStart) then 
                table.insert(l, e.Animations.WalkspeedOverrideStart)
            end 
            if not table.find(V, e.Animations.WalkspeedOverrideHit) then 
                table.insert(V, e.Animations.WalkspeedOverrideHit)
            end 
            if not table.find(V, e.Animations.WalkspeedOverrideMiss) then 
                table.insert(V, e.Animations.WalkspeedOverrideMiss)
            end 
            C = true 
        until true 
        if not C then break end 
    end 
    
    task.spawn(function()
        while t() do 
            if not a:FindFirstChild("c00lkidd") then 
                Sg.UsingWalkspeedOverride = false 
            end 
        end 
    end)
end 

table.foreach(Sg.WalkspeedOverrideAnimations, print)
table.foreach(Sg.WalkspeedOverrideEndedAnims, v)
for l, V in cg.M1Animations do 
    print("m1", l, V)
end 

local function xg()
    if not Y.PlayerGui:FindFirstChild("KillerIntroUI") then return false end 
    return #Y.PlayerGui.KillerIntroUI:GetChildren() == 0 
end 

local function wg(l, V)
    D.ChildAdded:Connect(function(V)
        if l and V:GetAttribute("Username") == Y.Name then 
            l()
        end 
    end)
    a.ChildAdded:Connect(function(V)
        if l and V:GetAttribute("Username") == Y.Name then 
            l()
        end 
    end)
    k.ChildAdded:Connect(function(l)
        if V and l.Name == Y.Name then 
            V()
        end 
    end)
end 

wg(function()
    v("in round")
    cg.RoundStart = tick()
    cg.GameState = 1 
end, function()
    v("spectating")
    cg.GameState = 0 
end)

if k:FindFirstChild(Y.Name) then 
    cg.GameState = 0 
else 
    cg.GameState = 1 
end 

local function Wg(l, V)
    Sg[l] = true 
    task.spawn(function()
        t(V or 3)
        Sg[l] = false 
    end)
end 

local Gg 
Gg = hookmetamethod(game, "__namecall", function(l, ...)
    if e then return Gg(l, ...) end 
    if typeof(l) == "Instance" and tostring(l) == "RemoteEvent" then 
        local l = ({...})[2]
        if type(l) == "table" and typeof(l[1]) == "buffer" then 
            if (buffer.tostring(l[1])):find("PlasmaBeam") then 
                Wg("DusekkarActive")
            elseif (buffer.tostring(l[1])):find("Nova") then 
                Wg("NoliActive")
            elseif (buffer.tostring(l[1])):find("CorruptNature") then 
                Wg("CoolkidActive")
            end 
        end 
    end 
    return Gg(l, ...)
end)

local function Ag(l)
    local V = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
    if not V then return end 
    local e, X 
    for l, C in cg.RoundGenerators do 
        if C:FindFirstChild("Positions") and (C.Positions:FindFirstChild("Center") and (C.Positions.Center.Position - V.Position).Magnitude <= 7) then 
            e = C 
            X = l 
            break 
        end 
    end 
    if l then 
        return X 
    else 
        return e 
    end 
end 

local function yg(l)
    local V = {}
    for l, e in cg.Survivors do table.insert(V, e) end 
    for l, e in cg.Killers do table.insert(V, e) end 
    for V, e in V do 
        local X = false 
        repeat 
            local V = e:FindFirstChild("HumanoidRootPart")
            if not V then X = true break end 
            if e:GetAttribute("Username") == Y.Name then X = true break end 
            if l:FindFirstChild("Positions") and (l.Positions:FindFirstChild("Center") and (l.Positions.Center.Position - V.Position).Magnitude <= 40) then 
                return true 
            end 
            X = true 
        until true 
        if not X then break end 
    end 
    return false 
end 

local function ng()
    return workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
end 

local function bg()
    return (ng()):GetChildren()
end 

local function rg(l)
    for V = 1, 2, 1 do 
        f:SendKeyEvent(V < 2, l, false, game)
        t()
    end 
end 

local function Pg(l)
    local V = l == "Killer" and "Killers" or l == "Survivor" and "Survivors"
    if #cg[V] == 0 then return nil end 
    local e = 1/0 
    local X 
    for l, V in cg[V] do 
        local C = false 
        repeat 
            local l = V:FindFirstChild("HumanoidRootPart")
            if not l then C = true break end 
            if u ~= "PC" then 
                local d, I = Z:WorldToViewportPoint(l.Position)
                if not I then C = true break end 
                local J = Z.ViewportSize / 2 
                local F = (Vector2.new(d.X, d.Y) - J).Magnitude 
                if F < e then 
                    e = F 
                    X = V 
                end 
            else 
                local d = Y:GetMouse()
                local I, J = Z:WorldToViewportPoint(l.Position)
                if not J then C = true break end 
                local F = Vector2.new(d.X, d.Y)
                local j = Vector2.new(I.X, I.Y)
                local i = (F - j).Magnitude 
                if i < e then 
                    e = i 
                    X = V 
                end 
            end 
            C = true 
        until true 
        if not C then break end 
    end 
    return X 
end 

local function Qg(l)
    local V = {}
    for e, X in cg.Survivors do 
        if Y.Character and (Y.Character:FindFirstChild("HumanoidRootPart") and (X:FindFirstChild("HumanoidRootPart") and X ~= Y.Character)) then 
            local e = (Y.Character.HumanoidRootPart.Position - X.HumanoidRootPart.Position).Magnitude 
            if e <= l then 
                table.insert(V, {Distance = e, Player = X})
            end 
        end 
    end 
    table.sort(V, function(l, V) return l.Distance < V.Distance end)
    return V[1] and V[1].Player 
end 

local function Tg(l)
    local V = {}
    for e, X in cg.Killers do 
        if Y.Character and (Y.Character:FindFirstChild("HumanoidRootPart") and (X:FindFirstChild("HumanoidRootPart") and X ~= Y.Character)) then 
            local e = (Y.Character.HumanoidRootPart.Position - X.HumanoidRootPart.Position).Magnitude 
            if e <= l then 
                table.insert(V, {Distance = e, Player = X})
            end 
        end 
    end 
    table.sort(V, function(l, V) return l.Distance < V.Distance end)
    return V[1] and V[1].Player 
end 

local function Zg(l)
    return l.HumanoidRootPart.Position + l.Humanoid.MoveDirection * (l.HumanoidRootPart.Velocity / 20)
end 

local function og()
    local l 
    for V, e in cg.Killers do 
        if e:GetAttribute("Username") then 
            l = e:GetAttribute("Username")
            break 
        end 
    end 
    return l 
end 

local function Dg()
    if not Y.Character then return end 
    if not Y.Character.Parent then return end 
    return Y.Character.Parent == a 
end 

local function ag(l)
    return Y.PlayerGui.MainUI:FindFirstChild("AbilityContainer") and Y.PlayerGui.MainUI.AbilityContainer:FindFirstChild(l)
end 

local function kg(l)
    if not ag(l) then return false end 
    return (ag(l)).CooldownTime.Text == ""
end 

local function ug()
    if not z.Enabled then 
        z:ToggleShiftLock()
    end 
end 

local function tg(l, V, e)
    local X = tick()
    local C = z.Enabled 
    while t() and tick() - X <= 6 do 
        if l and (l.Parent and V()) then 
            ug()
            Z.CFrame = e and e() or CFrame.new(Z.CFrame.Position, l.HumanoidRootPart.CFrame.Position)
        else 
            if not C then z:ToggleShiftLock() end 
            break 
        end 
    end 
end 

local function Mg(l)
    for V, e in pairs(Y.PlayerGui.Notis:GetChildren()) do 
        if string.find(e.Text:lower(), l) then return true end 
    end 
end 

local function pg(l, V)
    if M[l] then return end 
    local e = Instance.new("ImageLabel", R)
    e.Image = V 
    e.BackgroundTransparency = 1 
    e.BorderSizePixel = 0 
    M[l] = e 
    local X 
    X = d.RenderStepped:Connect(function()
        if not l.Parent or not l.Parent:FindFirstChild(l.Name) then 
            return X:Disconnect(), e:Destroy()
        end 
        local V, C = Z:WorldToViewportPoint(l.Position)
        local d = V - Z:WorldToViewportPoint(l.Position + Vector3.new(0, 3, 0))
        e.Visible = C 
        e.Position = UDim2.new(0, V.X, 0, V.Y)
        e.Size = UDim2.new(0, d.Y, 0, d.Y)
    end)
    Sg.ConstantImages[e] = {Connection = X, Handle = l}
end 

R.IgnoreGuiInset = true 
local Rg 
task.spawn(function()
    while t(.3) do 
        if ng() then 
            for l, V in a:GetChildren() do 
                if not table.find(cg.Killers, V) then table.insert(cg.Killers, V) end 
            end 
            for l, V in D:GetChildren() do 
                if not table.find(cg.Survivors, V) then table.insert(cg.Survivors, V) end 
            end 
            for l, V in cg.Items do 
                if V.Parent and (V.Parent.Parent == D or V.Parent.Name == "Backpack") or not V.Parent then 
                    table.remove(cg.Items, l)
                end 
            end 
            for l, V in bg() do 
                if V.Name == "Generator" and not table.find(cg.RoundGenerators, V) then 
                    table.insert(cg.RoundGenerators, V)
                elseif V:IsA("Tool") and not table.find(cg.Items, V) then 
                    table.insert(cg.Items, V)
                end 
            end 
            for l, V in workspace:GetChildren() do 
                if V:IsA("Tool") and not table.find(cg.Items, V) then 
                    table.insert(cg.Items, V)
                end 
            end 
            for l, V in workspace.Map.Ingame:GetChildren() do 
                if (string.find(V.Name, "TaphTripwire") or V.Name == "SubspaceTripmine") and not table.find(cg.TaphDebris, V) then 
                    table.insert(cg.TaphDebris, V)
                elseif (V.Name == "BuildermanSentry" or V.Name == "BuildermanDispenser") and not table.find(cg.BuildermanDebris, V) then 
                    table.insert(cg.BuildermanDebris, V)
                elseif (V.Name:sub(-7) == "Shadows" and V.Name:sub(1, -8) == og()) and not table.find(cg.DoeDebris, V) then 
                    table.insert(cg.DoeDebris, V)
                end 
            end 
            if workspace.Map.Ingame:FindFirstChild("CurrencyLocations") then 
                for l, V in workspace.Map.Ingame.CurrencyLocations:GetChildren() do 
                    if (V:FindFirstChildWhichIsA("Part")).Position.Y > 0 and not table.find(cg.Gingerbread, V) then 
                        table.insert(cg.Gingerbread, V)
                    else 
                        if table.find(cg.Gingerbread, V) and V[string.format("%sExp", tostring(V))].Transparency == 1 then 
                            table.remove(cg.Gingerbread, l)
                        end 
                    end 
                end 
            end 
        else 
            cg.RoundGenerators = {}
            cg.Killers = {}
            cg.Survivors = {}
            cg.Items = {}
            cg.Gingerbread = {}
            cg.TaphDebris = {}
            cg.BuildermanDebris = {}
            cg.DoeDebris = {}
        end 
        Rg = true 
    end 
end)

repeat t() until Rg 

Xg:CreateSection("Generators");
(getgenv()).Rayfield = m 

function IsNeighbour(l, V, e, X)
    return e == l - 1 and X == V or e == l + 1 and X == V or e == l and X == V - 1 or e == l and X == V + 1 
end 

function Key(l)
    return l.row .. ("-" .. l.col)
end 

function OrderPath(l, V)
    if not l or #l == 0 then return l end 
    local e = V and V[1] or l[1]
    local X = {}
    for l, V in l do 
        X[Key(V)] = {row = V.row, col = V.col}
    end 
    local C = {}
    local d = {row = e.row, col = e.col}
    table.insert(C, d)
    X[Key(d)] = nil 
    while next(X) do 
        local l = false 
        for V, e in X do 
            if IsNeighbour(d.row, d.col, e.row, e.col) then 
                table.insert(C, e)
                X[V] = nil 
                d = e 
                l = true 
                break 
            end 
        end 
        if not l then break end 
    end 
    return C 
end 

function AutoGenerator(l, V)
    for e = 1, #l.Solution, 1 do 
        local X = l.Solution[e]
        local C = l.targetPairs[e]
        local d = OrderPath(X, C)
        l.paths[e] = {}
        for X, C in d do 
            if not V then 
                if not m.Flags.AutoCompleteGenerators.CurrentValue then return end 
            end 
            table.insert(l.paths[e], {row = C.row, col = C.col})
            l:updateGui()
            if m.Flags.LegitPuzzles.CurrentValue and (Ag() and yg(Ag())) then 
                task.wait(m.Flags.GeneratorLegitPuzzleDelay.CurrentValue)
            else 
                task.wait(m.Flags.GeneratorPuzzleDelay.CurrentValue)
            end 
        end 
        l:checkForWin()
    end 
end 

function DrawSolutions(l)
    local V = l.gridFrame 
    local e = Instance.new("Frame", V.Parent)
    e.ZIndex = 6 
    e.BackgroundTransparency = 1 
    e.Size = V.Size 
    e.Position = V.Position 
    e.AnchorPoint = Vector2.new(.5, .5)
    e.Position = UDim2.fromScale(.5, .5)
    for V = 1, #l.Solution, 1 do 
        local X = l.Solution[V]
        local C = l.targetPairs[V]
        local d = OrderPath(X, C)
        for X, C in d do 
            local d = Instance.new("Frame", e)
            d.BorderSizePixel = 0 
            d.BackgroundTransparency = .7 
            d.Size = UDim2.fromScale(.167, .167)
            d.ZIndex = 7 
            local I = l.colors[V]
            d.BackgroundColor3 = Color3.new(I.R / 1.2, I.G / 1.2, I.B / 1.2)
            d.Position = UDim2.fromScale(.167 * (C.col - 1), .167 * (C.row - 1))
        end 
        l:checkForWin()
    end 
end 

local Hg 
Hg = hookfunction(E.new, newcclosure(function(...)
    local l = Hg(...)
    Sg.CurrentPuzzle = l 
    if m.Flags.GeneratorHelper.CurrentValue then 
        local V, e = pcall(DrawSolutions, l)
        if not V then 
            v("Failed to draw puzzle - " .. tostring(e))
        end 
    end 
    if m.Flags.AutoCompleteGenerators.CurrentValue then 
        task.spawn(function()
            local V = tick()
            local e, X = pcall(AutoGenerator, l)
            if not e then 
                v("Failed to complete generator - " .. tostring(X))
            end 
            local C = math.round((tick() - V) * 100) / 100 
            setthreadidentity(8)
            m:Notify({
                Title = "Auto complete generator",
                Content = string.format("flow game completed in %ss", tostring(C)),
                Duration = 2,
                Image = "puzzle"
            })
            setthreadidentity(2)
        end)
    end 
    return l 
end))

task.spawn(function()
    while t(.1) do 
        for l, V in cg.RoundGenerators do 
            local e = false 
            repeat 
                local l = V:FindFirstChild("Main") and V.Main:FindFirstChild("Prompt")
                if not l then e = true break end 
                if m.Flags.InstantlyEnterGenerator and m.Flags.InstantlyEnterGenerator.CurrentValue then 
                    l.HoldDuration = 0 
                else 
                    l.HoldDuration = .25 
                end 
                e = true 
            until true 
            if not e then break end 
        end 
    end 
end)

local Lg = false 
local function vg()
    if cg.GameState ~= 1 then return end 
    if not xg() then 
        repeat 
            v("waiting for load")
            t(1)
        until xg()
    end 
    if Lg then return end 
    if Dg() then return end 
    Lg = true 
    pcall(function()
        for l, V in cg.RoundGenerators do 
            local e = false 
            repeat 
                if not (Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")) then 
                    e = true 
                    break 
                end 
                local function l(l)
                    for V, e in cg.Survivors do 
                        if e:FindFirstChild("HumanoidRootPart") and ((e.HumanoidRootPart.Position - l).Magnitude <= 6 and e ~= Y) then 
                            return true 
                        end 
                    end 
                    return false 
                end 
                t(.3)
                if not V:FindFirstChild("Progress") then e = true break end 
                if V.Progress.Value == 100 then e = true break end 
                local X = V:FindFirstChild("Main") and V.Main:FindFirstChild("Prompt")
                if not X then e = true break end 
                
                local C = tick()
                local d, I, J = l(V.Positions.Center.Position), l(V.Positions.Right.Position), l(V.Positions.Left.Position)
                
                if d and (I and J) then e = true break end 
                
                if not d then 
                    Y.Character.HumanoidRootPart.CFrame = V.Positions.Center.CFrame 
                elseif not I then 
                    Y.Character.HumanoidRootPart.CFrame = V.Positions.Right.CFrame 
                else 
                    Y.Character.HumanoidRootPart.CFrame = V.Positions.Left.CFrame 
                end 
                
                repeat 
                    fireproximityprompt(X)
                    t(.5)
                until tick() - C >= 7 or Y.PlayerGui:FindFirstChild("PuzzleUI")
                
                if tick() - C >= 7 then 
                    v("timed out waiting for response")
                    e = true 
                    break 
                end 
                
                task.spawn(function()
                    local l 
                    while t() and (V:FindFirstChild("Progress") and (V.Progress.Value ~= 100 and Y.PlayerGui:FindFirstChild("PuzzleUI"))) do 
                        local V = false 
                        repeat 
                            if Sg.CurrentPuzzle == l then V = true break end 
                            l = Sg.CurrentPuzzle 
                            if not m.Flags.AutoCompleteGenerators.CurrentValue then 
                                local l, V = pcall(AutoGenerator, Sg.CurrentPuzzle, true)
                                if not l then 
                                    v("Failed to complete generator (all) - " .. tostring(V))
                                end 
                            end 
                            V = true 
                        until true 
                        if not V then break end 
                    end 
                end)
                
                repeat t() until not V:FindFirstChild("Progress") or V.Progress.Value == 100 or not Y.PlayerGui:FindFirstChild("PuzzleUI")
                e = true 
            until true 
            if not e then break end 
        end 
    end)
    Lg = false 
    m:Notify({
        Title = "Complete every generator",
        Content = "All generators have been checked",
        Duration = 6
    })
end 

Xg:CreateToggle({
    Name = "Autofarm generators",
    CurrentValue = false,
    Flag = "AutoGeneratorFarm",
    Callback = function(l)
        if l then vg() end 
    end
})

wg(function()
    local l = tick()
    repeat t() until tick() - l >= 10 or #cg.RoundGenerators == 5 
    if tick() - l >= 10 then 
        return v("timed out waiting for generators")
    end 
    if m.Flags.AutoGeneratorFarm.CurrentValue then 
        v("doing autofarm generators")
        vg()
    end 
end)

Xg:CreateToggle({Name = "Auto complete generator", CurrentValue = false, Flag = "AutoCompleteGenerators", Callback = eg})
Xg:CreateToggle({Name = "Generator helper", CurrentValue = false, Flag = "GeneratorHelper", Callback = eg})
Xg:CreateToggle({Name = "Instantly enter generator", CurrentValue = false, Flag = "InstantlyEnterGenerator", Callback = eg})
Xg:CreateButton({
    Name = "Complete current generator",
    Callback = function()
        if Y.PlayerGui:FindFirstChild("PuzzleUI") then 
            task.spawn(function()
                local l = Ag()
                if not l then return end 
                local V 
                while t() and (l:FindFirstChild("Progress") and (l.Progress.Value ~= 100 and Y.PlayerGui:FindFirstChild("PuzzleUI"))) do 
                    local l = false 
                    repeat 
                        if Sg.CurrentPuzzle == V then l = true break end 
                        V = Sg.CurrentPuzzle 
                        if not m.Flags.AutoCompleteGenerators.CurrentValue then 
                            local l, V = pcall(AutoGenerator, Sg.CurrentPuzzle, true)
                            if not l then 
                                v("Failed to complete generator (ccg) - " .. tostring(V))
                            end 
                        end 
                        l = true 
                    until true 
                    if not l then break end 
                end 
            end)
        else 
            v("no puzzle ui")
        end 
    end
})

Xg:CreateButton({Name = "Complete every generator", Callback = function() vg() end})
Xg:CreateSection("Teleports")
local mg 
local gg = Xg:CreateDropdown({
    Name = "Select generator",
    Options = {"1", "2", "3", "4", "5"},
    CurrentOption = "1",
    Flag = "GeneratorSelected",
    Callback = function(l)
        mg = tonumber(l[1]:sub(1, 1))
    end
})

Xg:CreateButton({
    Name = "Teleport to generator",
    Callback = function()
        if cg.RoundGenerators[mg] and (Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")) then 
            Y.Character.HumanoidRootPart.CFrame = cg.RoundGenerators[mg].Positions.Center.CFrame 
        end 
    end
})

task.spawn(function()
    while t(.2) do 
        local l = {"1", "2", "3", "4", "5"}
        for V, e in cg.RoundGenerators do 
            if e:FindFirstChild("Progress") then 
                l[V] = string.format("%s (%s%%)", tostring(V), tostring(e.Progress.Value))
            end 
        end 
        for l, V in l do 
            gg.__DropdownOptions[l].Title.Text = V 
        end 
        local V = Ag(true)
        if not V then 
            gg:SetTitle("Select generator")
        else 
            gg:SetTitle(string.format("Select generator (you are at #%s)", tostring(V)))
        end 
    end 
end)

Xg:CreateSection("Generator Settings")
Xg:CreateSlider({Name = "Puzzle Speed", Range = {.04, 1}, Increment = .01, Suffix = "s", CurrentValue = .08, Flag = "GeneratorPuzzleDelay", Callback = eg})
Xg:CreateToggle({Name = "Use legit delay when players are nearby", CurrentValue = false, Flag = "LegitPuzzles", Callback = eg})
Xg:CreateSlider({Name = "(Legit) Puzzle Speed", Range = {.1, 2}, Increment = .01, Suffix = "s", CurrentValue = .08, Flag = "GeneratorLegitPuzzleDelay", Callback = eg})

local function lb(l, V, e, X, C)
    v(string.format("adding box esp to %s", tostring(l)))
    local I = L.new("Square")
    I.Visible = false 
    I.ZIndex = 2 
    I.Filled = false 
    
    local F = L.new("Square")
    F.Visible = false 
    F.Filled = false 
    F.Color = Color3.new(0, 0, 0)
    F.Thickness = 2 
    
    local j = L.new("Square")
    j.Visible = false 
    j.Filled = false 
    j.Color = Color3.new(0, 0, 0)
    j.Thickness = 2 
    
    local i = L.new("Square")
    i.Visible = false 
    i.Color = Color3.new(0, 1, 0)
    i.ZIndex = 2 
    i.Filled = false 
    
    local f = L.new("Text")
    f.Visible = false 
    f.Color = Color3.new(1, 1, 1)
    f.Outline = true 
    f.Center = true 
    f.Font = 2 
    
    local function Y(l, V)
        local e = math.clamp(l / V, 0, 1)
        return Color3.new(1 - e, e, 0)
    end 
    
    local B 
    B = d.RenderStepped:Connect(function()
        F.Visible = I.Visible 
        if not X then i.Visible = false end 
        
        if l and (l.Parent and (l:FindFirstChild("HumanoidRootPart") and (l:FindFirstChild("Head") and (l:FindFirstChild("Humanoid") and l.Humanoid.Health > 0)))) then 
            local d = l.HumanoidRootPart 
            local B, E = Z:WorldToViewportPoint(d.Position)
            local K = Z:WorldToViewportPoint(l.Head.Position + Vector3.new(0, .5, 0))
            local h = Z:WorldToViewportPoint(l.Head.Position - Vector3.new(0, 3, 0))
            
            if E and m.Flags[e].CurrentValue then 
                I.Visible = true 
                if X then 
                    j.Visible = true 
                    i.Visible = true 
                end 
                if C then 
                    f.Visible = true 
                    f.Text = (function()
                        local V = J:GetPlayerFromCharacter(l)
                        if not V then return "" end 
                        local e = ""
                        local X = V.Backpack 
                        if X:FindFirstChild("BloxyCola") and not X:FindFirstChild("Medkit") then 
                            e = "Bloxy Cola"
                        elseif X:FindFirstChild("Medkit") and not X:FindFirstChild("BloxyCola") then 
                            e = "Medkit"
                        elseif X:FindFirstChild("BloxyCola") and X:FindFirstChild("Medkit") then 
                            e = "Medkit & Bloxy Cola"
                        end 
                        return e 
                    end)()
                end 
            else 
                I.Visible = false 
                j.Visible = false 
                i.Visible = false 
                f.Visible = false 
                return 
            end 
            
            local c = l.HumanoidRootPart 
            local z = l.Humanoid 
            local s = Z:WorldToViewportPoint(c.Position)
            local q = Z:WorldToViewportPoint((CFrame.lookAlong(c.Position, Z.CFrame.LookVector) * CFrame.new(2, z.HipHeight, 0)).p)
            local U = Z:WorldToViewportPoint((CFrame.lookAlong(c.Position, Z.CFrame.LookVector) * CFrame.new(-2, -z.HipHeight - 1, 0)).p)
            
            local O, N = q.X - U.X, q.Y - U.Y 
            local S, x = s.X - O / 1.5, s.Y - N / 1.5 
            
            I.Position = Vector2.new(S + O / 2, x - N)
            I.Size = Vector2.new(O / 2, N * 4.5)
            I.Color = m.Flags[V].Color 
            
            F.Size = I.Size 
            F.Position = I.Position 
            
            i.Position = I.Position - Vector2.new(6, 0)
            i.Size = Vector2.new(0, I.Size.Y / (l.Humanoid.MaxHealth / l.Humanoid.Health))
            i.Color = Y(l.Humanoid.Health, l.Humanoid.MaxHealth)
            
            j.Size = Vector2.new(i.Size.X, I.Size.Y)
            j.Position = i.Position 
            
            f.Position = I.Position + Vector2.new(I.Size.X / 2, 0)
            local w = Z:WorldToViewportPoint(l.HumanoidRootPart.Position + Vector3.new(0, .5, 0))
            local W = Z:WorldToViewportPoint(l.HumanoidRootPart.Position + Vector3.new(0, -0.5, 0))
            f.Size = (W - w).Magnitude 
            f.Position = Vector2.new(f.Position.X, I.Position.Y + 13)
        else 
            if not l.Parent then 
                v("destroying esp - no parent")
                B:Disconnect()
                I:Destroy()
                F:Destroy()
                j:Destroy()
                i:Destroy()
                f:Destroy()
            end 
            I.Visible = false 
            j.Visible = false 
            i.Visible = false 
            f.Visible = false 
        end 
    end)
end 

local function Vb(l, V, e)
    v(string.format("adding chams to %s", tostring(l)))
    local X = Instance.new("Highlight")
    X.Parent = l 
    X.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
    local C 
    d.RenderStepped:Connect(function()
        local d = m.Flags[V].Color 
        local I, J, F = d:ToHSV()
        F = F + (1 - F) * .5 
        J = J * .5 
        X.OutlineColor = Color3.fromHSV(I, J, F)
        X.FillColor = m.Flags[V].Color 
        if e and (l.Parent and (l:FindFirstChild("Progress") and (l.Progress.Value == 100 and not C))) then 
            pg(l.Positions.Center, "rbxassetid://115758393579036")
            C = true 
        end 
    end)
end 

Cg:CreateSection("Esp Toggles")
Cg:CreateToggle({Name = "Generator Esp", CurrentValue = false, Flag = "GeneratorEsp", Callback = eg})
Cg:CreateToggle({Name = "Killer Esp", CurrentValue = false, Flag = "KillerEsp", Callback = eg})
Cg:CreateToggle({Name = "Survivor Esp", CurrentValue = false, Flag = "SurvivorEsp", Callback = eg})
Cg:CreateToggle({Name = "Item Esp", CurrentValue = false, Flag = "ItemEsp", Callback = eg})
Cg:CreateToggle({Name = "Gingerbread Esp", CurrentValue = false, Flag = "GingerbreadEsp", Callback = eg})
Cg:CreateToggle({Name = "Zombie/Minion Esp", CurrentValue = false, Flag = "EntityEsp", Callback = eg})
Cg:CreateToggle({Name = "Taph Esp", CurrentValue = false, Flag = "TaphEsp", Callback = eg})
Cg:CreateToggle({Name = "Builderman Esp", CurrentValue = false, Flag = "BuildermanEsp", Callback = eg})
Cg:CreateToggle({Name = "John Doe Esp", CurrentValue = false, Flag = "JohnDoeEsp", Callback = eg})

Cg:CreateSection("Esp Colors")
Cg:CreateColorPicker({Name = "Generator Color", Color = Color3.fromRGB(221, 51, 255), Flag = "GeneratorEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Killer Color", Color = Color3.fromRGB(255, 0, 0), Flag = "KillerEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Survivor Color", Color = Color3.fromRGB(0, 0, 255), Flag = "SurvivorEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Item Color", Color = Color3.fromRGB(0, 255, 255), Flag = "ItemEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Gingerbread Color", Color = Color3.fromRGB(255, 50, 204), Flag = "GingerbreadEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Zombie/Minion Color", Color = Color3.fromRGB(255, 159, 0), Flag = "EntityEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Taph Color", Color = Color3.fromRGB(75, 255, 145), Flag = "TaphEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "Builderman Color", Color = Color3.fromRGB(157, 255, 0), Flag = "BuildermanEspColor", Callback = eg})
Cg:CreateColorPicker({Name = "John Doe Color", Color = Color3.fromRGB(0, 0, 0), Flag = "JohnDoeEspColor", Callback = eg})

for l, V in cg.Killers do 
    local e = false 
    repeat 
        if V:GetAttribute("Username") == Y.Name then e = true break end 
        lb(V, "KillerEspColor", "KillerEsp")
        e = true 
    until true 
    if not e then break end 
end 

a.ChildAdded:Connect(function(l)
    if l:GetAttribute("Username") == Y.Name then return end 
    lb(l, "KillerEspColor", "KillerEsp")
end)

for l, V in cg.Survivors do 
    local e = false 
    repeat 
        if V:GetAttribute("Username") == Y.Name then e = true break end 
        lb(V, "SurvivorEspColor", "SurvivorEsp", true, true)
        e = true 
    until true 
    if not e then break end 
end 

D.ChildAdded:Connect(function(l)
    if l:GetAttribute("Username") == Y.Name then return end 
    lb(l, "SurvivorEspColor", "SurvivorEsp", true, true)
end)

for l, V in workspace.Map.Ingame:GetChildren() do 
    local e = false 
    repeat 
        if V.Name ~= "PizzaDeliveryRig" and V.Name ~= "1x1x1x1Zombie" then e = true break end 
        lb(V, "EntityEspColor", "EntityEsp")
        e = true 
    until true 
    if not e then break end 
end 

workspace.Map.Ingame.ChildAdded:Connect(function(l)
    if l.Name ~= "PizzaDeliveryRig" and l.Name ~= "1x1x1x1Zombie" then return end 
    lb(l, "EntityEspColor", "EntityEsp")
end)

task.spawn(function()
    while t(.1) do 
        local l = Sg.EspAppliedToGenerators 
        for V, X in cg.RoundGenerators do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.GeneratorEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    for l, V in Sg.ConstantImages do 
                        local e = X.Positions.Center 
                        if V.Handle == e then 
                            V.Connection:Disconnect()
                            l:Destroy()
                            Sg.ConstantImages[l], M[e] = nil, nil 
                        end 
                    end 
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "GeneratorEspColor", true)
                C = true 
            until true 
            if not C then break end 
        end 
        
        l = Sg.EspAppliedToItems 
        for V, X in cg.Items do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.ItemEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "ItemEspColor")
                C = true 
            until true 
            if not C then break end 
        end 
        
        l = Sg.EspAppliedToGingerbread 
        for V, X in cg.Gingerbread do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.GingerbreadEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "GingerbreadEspColor")
                C = true 
            until true 
            if not C then break end 
        end 
        
        l = Sg.EspAppliedToTaphDebris 
        for V, X in cg.TaphDebris do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.TaphEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    if not Dg() then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "TaphEspColor", false)
                C = true 
            until true 
            if not C then break end 
        end 
        
        l = Sg.EspAppliedToBuildermanDebris 
        for V, X in cg.BuildermanDebris do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.BuildermanEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    if not Dg() then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "BuildermanEspColor", false)
                C = true 
            until true 
            if not C then break end 
        end 
        
        l = Sg.EspAppliedToDoeDebris 
        for V, X in cg.DoeDebris do 
            local C = false 
            repeat 
                if e then return end 
                if not m.Flags.JohnDoeEsp.CurrentValue then 
                    if not X:FindFirstChildOfClass("Highlight") then C = true break end 
                    (X:FindFirstChildOfClass("Highlight")):Destroy()
                    l[X] = false 
                    C = true break 
                end 
                if l[X] then C = true break end 
                l[X] = true 
                Vb(X, "JohnDoeEspColor", false)
                C = true 
            until true 
            if not C then break end 
        end 
    end 
end)

dg:CreateSection("Infinite Stamina")
local function eb()
    if cg.GameState ~= 1 then return end 
    B.__staminaChangedEvent:Fire()
end 

local Xb = {
    MaxStamina = tostring(B.MaxStamina),
    StaminaLoss = tostring(B.StaminaLoss),
    StaminaGain = tostring(B.StaminaGain)
}

dg:CreateToggle({
    Name = "Infinite Stamina",
    CurrentValue = false,
    Flag = "UnlimitedRunning",
    Callback = function()
        task.spawn(function()
            while t() do 
                if not m.Flags.UnlimitedRunning.CurrentValue then 
                    return 
                elseif B.Stamina < B.MaxStamina then 
                    B.Stamina = B.MaxStamina 
                    eb()
                end 
            end 
        end)
    end
})

dg:CreateSection("The 3 options under will not work if infinite stamina is on.")
dg:CreateInput({Name = "Max Stamina", CurrentValue = Xb.MaxStamina, PlaceholderText = "Number", RemoveTextAfterFocusLost = false, Flag = "StaminaOptions_MaxStamina", Callback = function(l)
    if not tonumber(l) then return m:Notify({Title = "Please enter a number", Content = "to change your max stamina", Duration = 6.5}) end 
    Xb.MaxStamina = l 
end})
dg:CreateInput({Name = "Stamina Loss", CurrentValue = Xb.StaminaLoss, PlaceholderText = "Number", RemoveTextAfterFocusLost = false, Flag = "StaminaOptions_StaminaLoss", Callback = function(l)
    if not tonumber(l) then return m:Notify({Title = "Please enter a number", Content = "to change your stamina loss", Duration = 6.5}) end 
    Xb.StaminaLoss = l 
end})
dg:CreateInput({Name = "Stamina Gain", CurrentValue = Xb.StaminaGain, PlaceholderText = "Number", RemoveTextAfterFocusLost = false, Flag = "StaminaOptions_StaminaGain", Callback = function(l)
    if not tonumber(l) then return m:Notify({Title = "Please enter a number", Content = "to change your stamina gain", Duration = 6.5}) end 
    Xb.StaminaGain = l 
end})

task.spawn(function()
    while t() do 
        for l, V in Xb do 
            if B[l] ~= tonumber(V) then 
                B[l] = tonumber(V)
                eb()
            end 
        end 
    end 
end)

local Cb = {}
local db = {}

Ig:CreateSection("Silent Aim allows you to hit your target without aiming at them")
Ig:CreateToggle({Name = "Enable silent aim", CurrentValue = false, Flag = "SilentAimToggle", Callback = eg})
Ig:CreateDropdown({
    Name = "Ability to use silent aim",
    Options = {"Plasma beam", "Void Star", "Corrupt Nature"},
    CurrentOption = {},
    MultipleOptions = true,
    Flag = "SilentAimValues",
    Callback = function(l)
        Cb = {}
        for l, V in l do Cb[V] = true end 
    end
})
Ig:CreateToggle({Name = "Dusekkar target survivor", CurrentValue = false, Flag = "DusekkarSurvivor", Callback = eg})

local Ib 
Ib = hookfunction(K, newcclosure(function(...)
    local l = Pg("Killer")
    local V = Pg("Survivor")
    if Sg.DusekkarActive and m.Flags.SilentAimToggle.CurrentValue then 
        if Cb["Plasma beam"] then 
            if m.Flags.DusekkarSurvivor.CurrentValue and V then 
                return Zg(V)
            elseif l then 
                return Zg(l)
            end 
        end 
    elseif Sg.NoliActive and m.Flags.SilentAimToggle.CurrentValue then 
        if Cb["Void Star"] and V then 
            return V["Left Leg"].Position 
        end 
    elseif Sg.CoolkidActive and m.Flags.SilentAimToggle.CurrentValue then 
        if Cb["Corrupt Nature"] and V then 
            return Zg(V)
        end 
    end 
    return Ib(...)
end))

Ig:CreateSection("Aimbot")
Ig:CreateToggle({Name = "Enable aimbots", CurrentValue = false, Flag = "AimbotToggle", Callback = eg})
Ig:CreateDropdown({
    Name = "Ability to use aimbot",
    Options = {"Entanglement", "Mass Infection", "Throw Pizza", "Blood Hook"},
    CurrentOption = {},
    MultipleOptions = true,
    Flag = "AimbotValues",
    Callback = function(l)
        db = {}
        for l, V in l do db[V] = true end 
    end
})

local function Jb()
    return Y.Character and (Y.Character:FindFirstChild("SpeedMultipliers") and (Y.Character:FindFirstChild("SpeedMultipliers")):FindFirstChild("MassInfection"))
end 

local function Fb()
    return Y.Character and (Y.Character:FindFirstChild("SpeedMultipliers") and (Y.Character:FindFirstChild("SpeedMultipliers")):FindFirstChild("Entanglement"))
end 

local function jb()
    return Y.Character and (Y.Character:FindFirstChild("Pizza") and (Y.Character:FindFirstChild("Pizza")).Transparency == 0)
end 

b.RemoteEvent.OnClientEvent:Connect(function(...)
    local l = {...}
    if l[1] == "UseActorAbility" then 
        local V = l[2]
        if type(V) == "table" and typeof(V[1]) == "buffer" then 
            if not m.Flags.AimbotToggle.CurrentValue then return end 
            local l = Qg(130)
            local e = Qg(25)
            local X = Qg(95)
            if not l or not e or not X then return end 
            
            if (buffer.tostring(V[1])):find("MassInfection") and db["Mass Infection"] then 
                tg(l, Jb)
            elseif (buffer.tostring(V[1])):find("Entanglement") and db.Entanglement then 
                tg(l, Fb)
            elseif (buffer.tostring(V[1])):find("Uppercut") and db["Blood Hook"] then 
                local l = tick()
                tg(X, function() return tick() - l <= 2 and (Y.Character and Y.Character.Parent == a) end)
            elseif (buffer.tostring(V[1])):find("ThrowPizza") and db["Throw Pizza"] then 
                tg(e, jb, function()
                    local V = Y.Character.HumanoidRootPart 
                    local e = l.HumanoidRootPart 
                    local X = V.CFrame * Vector3.new(-1, 0, 0)
                    local C = (e.Position - X).Unit 
                    return CFrame.lookAt(Z.CFrame.Position, Z.CFrame.Position + C)
                end)
            end 
        end 
    end 
end)

Jg:CreateSection("Hitbox Expander")
Jg:CreateToggle({Name = "Enable hitbox expander", CurrentValue = false, Flag = "HitboxExpander", Callback = eg})
Jg:CreateSlider({Name = "Range", Range = {30, 200}, Increment = 1, Suffix = "", CurrentValue = 60, Flag = "HitboxExpanderRange", Callback = eg})

Jg:CreateSection("Hitbox Visualiser")
Jg:CreateLabel("To show hitboxes, enable from ingame settings\nThe higher the transparency is, the less visible it is")
Jg:CreateToggle({Name = "Enable visualiser modifications", CurrentValue = false, Flag = "HitboxModifications", Callback = eg})

local ib = {}
for l, V in Enum.Material:GetEnumItems() do 
    ib[l] = ((tostring(V)):split("."))[3]
end 
table.sort(ib)

Jg:CreateDropdown({Name = "Material", Options = ib, CurrentOption = {"Plastic"}, MultipleOptions = false, Flag = "HitboxMaterialValue", Callback = eg})
Jg:CreateColorPicker({Name = "Hitbox color", Color = Color3.new(1, .25, .25), Flag = "HitboxColor", Callback = eg})
Jg:CreateColorPicker({Name = "Hitbox color (Hit)", Color = Color3.new(.5, 1, .5), Flag = "HitboxHitColor", Callback = eg})
Jg:CreateSlider({Name = "Hitbox transparency", Range = {0, 1}, Increment = .02, Suffix = "", CurrentValue = 1, Flag = "HitboxTransparency", Callback = eg})
Jg:CreateSlider({Name = "Hitbox transparency (Hit)", Range = {0, 1}, Increment = .02, Suffix = "", CurrentValue = 1, Flag = "HitboxHitTransparency", Callback = eg})

workspace.Hitboxes.ChildAdded:Connect(function(l)
    if not m.Flags.HitboxModifications.CurrentValue then return end 
    local V = Enum.Material[m.Flags.HitboxMaterialValue.CurrentOption[1]]
    local e = l.Color 
    while l.Parent and t() do 
        l.Material = V 
        if e.R ~= 1 then 
            l.Color = m.Flags.HitboxHitColor.Color 
            l.Transparency = m.Flags.HitboxHitTransparency.CurrentValue 
        else 
            l.Color = m.Flags.HitboxColor.Color 
            l.Transparency = m.Flags.HitboxTransparency.CurrentValue 
        end 
    end 
end)

task.spawn(function()
    local l = game:GetService("RunService")
    local V = Random.new()
    local e = Y.Character or Y.CharacterAdded:Wait()
    local X = e:WaitForChild("Humanoid")
    local C = e:WaitForChild("HumanoidRootPart")
    
    Y.CharacterAdded:Connect(function(l)
        e = l 
        X = l:WaitForChild("Humanoid")
        C = l:WaitForChild("HumanoidRootPart")
    end)
    
    while t() do 
        if m.Flags.HitboxExpander.CurrentValue and C then 
            local d = false 
            for l, V in ipairs(X:GetPlayingAnimationTracks()) do 
                if table.find(cg.AttackAnimations, V.Animation.AnimationId) and V.TimePosition / V.Length < .75 then 
                    d = true 
                    break 
                end 
            end 
            
            if d then 
                local X 
                local d = m.Flags.HitboxExpanderRange.CurrentValue 
                local function I(l)
                    for l, V in ipairs(l) do 
                        if V ~= e and (V:FindFirstChild("HumanoidRootPart") and (V:FindFirstChild("Humanoid") and (V:FindFirstChild("Humanoid")).Health > 0)) then 
                            local l = (V.HumanoidRootPart.Position - C.Position).Magnitude 
                            if l < d then 
                                d = l 
                                X = V 
                            end 
                        end 
                    end 
                end 
                
                I(workspace.Players:GetDescendants())
                local J = workspace:FindFirstChild("Map", true) and workspace.Map:FindFirstChild("NPCs", true)
                if J then I(J:GetChildren()) end 
                
                if X then 
                    local e = tonumber(j.PerformanceStats.Ping:GetValue()) / 1000 
                    local d = Vector3.new(V:NextNumber(-1.5, 1.5), 0, V:NextNumber(-1.5, 1.5))
                    local I = (X.HumanoidRootPart.Position + d) + X.HumanoidRootPart.Velocity * (e * 1.25)
                    local J = (I - C.Position) / (e * 2)
                    local F = C.Velocity 
                    C.Velocity = J 
                    l.RenderStepped:Wait()
                    C.Velocity = F 
                end 
            end 
        end 
    end 
end)

Fg:CreateSection("Convenient features")
Fg:CreateToggle({
    Name = "Disable directional speed",
    CurrentValue = false,
    Flag = "DisableDirectionalSpeed",
    Callback = function(l)
        if l then h:Destroy() else h:Start() end 
    end
})

Fg:CreateToggle({
    Name = "Disable directional movement",
    CurrentValue = false,
    Flag = "DisableDirectionalMovement",
    Callback = function(l)
        if l then 
            task.spawn(function()
                while t() do 
                    if Y.Character and m.Flags.DisableDirectionalMovement.CurrentValue then 
                        Y.Character:SetAttribute("DirectionalMovementDisabled", true)
                    end 
                end 
            end)
        elseif not l and Y.Character then 
            Y.Character:SetAttribute("DirectionalMovementDisabled", false)
        end 
    end
})

Fg:CreateToggle({Name = "Anti dusekkar protection break", CurrentValue = false, Flag = "ProtectionBreak", Callback = eg})
Fg:CreateToggle({
    Name = "Speed boost",
    CurrentValue = false,
    Flag = "SmallSpeedBoost",
    Callback = function()
        task.spawn(function()
            while t() and m.Flags.SmallSpeedBoost.CurrentValue do 
                local l = Y.Character 
                local V = l and (l:FindFirstChild("HumanoidRootPart") and l:FindFirstChild("Humanoid"))
                if cg.GameState == 1 and (V and l.HumanoidRootPart.Velocity.Magnitude > 1) then 
                    l:TranslateBy((V.MoveDirection * 10) * d.RenderStepped:Wait())
                end 
            end 
        end)
    end
})

Fg:CreateToggle({
    Name = "Auto back to lobby",
    CurrentValue = false,
    Flag = "AutoLobby",
    Callback = function()
        task.spawn(function()
            while t() and m.Flags.AutoLobby.CurrentValue do 
                local l = Y.PlayerGui:FindFirstChild("EndScreen") and (Y.PlayerGui.EndScreen:FindFirstChild("Main") and Y.PlayerGui.EndScreen.Main:FindFirstChild("Return"))
                if l then firesignal(l.MouseButton1Click) end 
            end 
        end)
    end
})

Fg:CreateToggle({
    Name = "Always show sidebar",
    CurrentValue = false,
    Flag = "SidebarVisibility",
    Callback = function(l)
        task.spawn(function()
            if cg.GameState == 1 and l == false then 
                if T then T.Position = UDim2.new(0, 20, 1, -20) end 
                return s:ToggleSidebarButtons(false)
            end 
            while t() and m.Flags.SidebarVisibility.CurrentValue do 
                if s.MenusHidden then 
                    if T then T.Position = UDim2.new(0, 100, 1, -20) end 
                    s:ToggleSidebarButtons(true)
                end 
            end 
        end)
    end
})

local fb = debug.getupvalue(c.Created, 3)
local Yb 
Yb = hookfunction(fb, newcclosure(function(l, V, e)
    if not m.Flags.ProtectionBreak.CurrentValue then 
        return Yb(l, V, e)
    end 
    return Yb(l, 9000000000)
end))

jg:CreateSection("Auto Block")
local Bb = {}
local Eb = {}
local function Kb(l)
    local V = Instance.new("MeshPart")
    V.MeshId = "rbxassetid://3726303797"
    V.Color = Color3.fromHSV(1, 1, 1)
    V.CanCollide = false 
    V.Anchored = true 
    V.Material = Enum.Material.Neon 
    V.Parent = workspace.CurrentCamera 
    table.insert(Bb, V)
    Eb[l] = V 
    
    while t() do 
        if not (l and l.Parent) then break end 
        if Dg() then break end 
        if cg.GameState == 1 and l:FindFirstChild("HumanoidRootPart") then 
            V.Position = l.HumanoidRootPart.Position + l.HumanoidRootPart.CFrame.LookVector * 6 
            V.Size = Vector3.new(m.Flags.AutoBlockRange.CurrentValue * .4, .01, m.Flags.AutoBlockRange.CurrentValue * .4)
        end 
    end 
    v("removing visualiser", cg.GameState, l, l.Parent, l:FindFirstChild("HumanoidRootPart"), Dg())
end 

local function hb(l)
    if l and m.Flags.RangeVisualiser.CurrentValue then 
        for l, V in cg.Killers do Kb(V) end 
    else 
        for l, V in Bb do 
            V:Destroy()
            Bb[l] = nil 
        end 
    end 
end 

jg:CreateToggle({Name = "Auto Block", CurrentValue = false, Flag = "AutoBlockToggle", Callback = hb})
jg:CreateToggle({Name = "Auto clone 007n7", CurrentValue = false, Flag = "AutoCloneToggle", Callback = eg})
jg:CreateLabel("If your ping is high this will NOT WORK!")
local cb = jg:CreateLabel("Your ping is 0ms")

task.spawn(function()
    while t() do 
        cb:Set(string.format("Your ping is %s", tostring(j.PerformanceStats.Ping:GetValue())))
    end 
end)

jg:CreateSection("Settings")
jg:CreateToggle({Name = "HDT/Hitbox Dragging Tech", CurrentValue = false, Flag = "AutoBlockHTD", Callback = eg})
jg:CreateToggle({Name = "Face check", CurrentValue = false, Flag = "AutoBlockFacecheck", Callback = eg})
jg:CreateToggle({Name = "Auto punch", CurrentValue = false, Flag = "AutoBlockPunch", Callback = eg})
jg:CreateSlider({Name = "Detection range", Range = {8, 20}, Increment = 1, Suffix = "", CurrentValue = 15, Flag = "AutoBlockRange", Callback = eg})
jg:CreateToggle({Name = "Detection visualiser", CurrentValue = false, Flag = "RangeVisualiser", Callback = hb})
jg:CreateSlider({Name = "Wait delay before blocking", Range = {0, 100}, Increment = 1, Suffix = "ms", CurrentValue = 0, Flag = "AutoBlockMS", Callback = eg})

task.spawn(function()
    while t(.3) do 
        if m.Flags.AutoBlockHTD.CurrentValue and not P.Advanced.ShowHitboxes.Value then 
            m:Notify({
                Title = "Auto Block",
                Content = "'Show Hitboxes' from the ingame settings Must be enabled for HTD. It has been turned on automatically",
                Duration = 7,
                Image = "cog"
            })
            b.RemoteEvent:FireServer("UpdateSettings", r({P.Advanced.ShowHitboxes, true}))
        end 
    end 
end)

local function zb(l, V)
    local e = (l.Position - V.Position).Unit 
    local X = V.CFrame.LookVector:Dot(e)
    return X > -0.3 
end 

local function sb()
    b.RemoteEvent:FireServer("UseActorAbility", r({"Block"}))
end 

local function qb()
    b.RemoteEvent:FireServer("UseActorAbility", r({"Punch"}))
end 

local function Ub()
    b.RemoteEvent:FireServer("UseActorAbility", r({"Clone"}))
end 

local function Ob(l)
    local V 
    for e, X in cg.BlockMeta do 
        if e == l then V = X end 
    end 
    if V == "Entanglement" then 
        return .4 
    elseif V == "MassInfection" then 
        return .7 
    elseif V == "Behead" or V == "GashingWoundStart" then 
        return .21 
    end 
    return 0 
end 

local function Nb(l, V, e, X, C)
    local d = (Y.Character.HumanoidRootPart.Position - V.Position).magnitude 
    if m.Flags.AutoBlockFacecheck.CurrentValue and (not zb(Y.Character.HumanoidRootPart, V) and d >= 3.2) then 
        return 
    end 
    if not C then 
        m:Notify({Title = "Auto Block", Content = "Hit detected", Duration = 5, Image = "shield"})
    end 
    
    local I = tick()
    task.spawn(function()
        tg(l, function()
            if ag("Punch") and (Mg("blocked an attack") and (m.Flags.AutoBlockPunch.CurrentValue and not X)) then 
                if Mg("parried killer") then 
                    m:Notify({Title = "Auto punch", Content = "Punched killer", Duration = 5, Image = tonumber("121907925719454")})
                    return false 
                end 
                if tick() - I >= 3.5 then return false end 
                qb()
                return true 
            end 
            return tick() - I <= 2 or Mg("blocked an attack")
        end)
    end)
    
    local J = tick()
    task.spawn(function()
        while t() and tick() - J < 3 do 
            if Mg("blocked an attack") then 
                m:Notify({Title = "Auto Block", Content = "Blocked successfully", Duration = 5, Image = "shield"})
                return 
            end 
        end 
    end)
    
    local F = e and Ob(e.Animation.AnimationId) or 0 
    local j = e and m.Flags.AutoBlockMS.CurrentValue / 1000 or 0 
    t(j + F)
    sb()
end 

workspace.Hitboxes.ChildAdded:Connect(function(l)
    if not m.Flags.AutoBlockHTD.CurrentValue or not m.Flags.AutoBlockToggle.CurrentValue or not kg("Block") then return end 
    local V = 0 
    local e = tick()
    local X = Y:GetNetworkPing() * 1000 
    
    while t() and (l.Parent and V <= .39 - X) do 
        X = Y:GetNetworkPing() * 1000 
        V = tick() - e 
        local C = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
        if not C then break end 
        local d = workspace:GetPartsInPart(l)
        local I = table.find(d, C)
        
        if I then 
            local V = Tg(m.Flags.AutoBlockRange.CurrentValue)
            if V and l.Name:sub(1, -7) == V:GetAttribute("Username") then 
                Nb(V, C, nil, false, true)
            end 
        end 
    end 
end)

local Sb = false 
local function xb(l, V)
    for l, e in l do 
        if e == V then return true end 
    end 
    return false 
end 

local function wb(l)
    local V = l and l:WaitForChild("HumanoidRootPart", 7)
    if not V then return end 
    local e = V and l:WaitForChild("Humanoid", 7)
    if not e then return end 
    local X = e:WaitForChild("Animator", 5)
    if not X then return end 
    
    X.AnimationPlayed:Connect(function(l)
        if table.find(Sg.WalkspeedOverrideAnimations, l.Animation.AnimationId) then 
            Sg.UsingWalkspeedOverride = true 
            v("walkspeed override detected")
        end 
        if table.find(Sg.WalkspeedOverrideEndedAnims, l.Animation.AnimationId) then 
            Sg.UsingWalkspeedOverride = false 
            v("ws stopped")
        end 
        if not table.find(cg.AttackAnimations, l.Animation.AnimationId) then return end 
        
        local e = Tg(m.Flags.AutoBlockRange.CurrentValue)
        local X = Tg(17)
        local function C()
            local l = 0 
            for V, e in workspace.Hitboxes:GetChildren() do 
                if e.Name:sub(1, -7) == X:GetAttribute("Username") then 
                    l += 1 
                end 
            end 
            return l 
        end 
        
        task.spawn(function()
            if table.find(cg.M1Animations, l.Animation.AnimationId) and X ~= nil then 
                v("detected m1")
                Sb = true 
                while C() > 0 do t() end 
                t(.4 + Ob(l.Animation.AnimationId))
                Sb = false 
            end 
        end)
        
        if e ~= nil then 
            if kg("Block") and (not Dg() and m.Flags.AutoBlockToggle.CurrentValue) then 
                Nb(e, V, l)
            elseif kg("Clone") and m.Flags.AutoCloneToggle.CurrentValue then 
                Ub()
                m:Notify({Title = "Auto Clone", Content = "Detected hit and cloned", Duration = 5, Image = "copy"})
            end 
        end 
    end)
end 

for l, V in cg.Killers do 
    if m.Flags.AutoBlockToggle.CurrentValue and (m.Flags.RangeVisualiser.CurrentValue and not Eb[V]) then 
        task.spawn(Kb, V)
    end 
    wb(V)
end 

a.ChildAdded:Connect(function(l)
    if m.Flags.AutoBlockToggle.CurrentValue and (m.Flags.RangeVisualiser.CurrentValue and not Eb[l]) then 
        task.spawn(Kb, l)
    end 
    wb(l)
end)

a.ChildRemoved:Connect(function(l)
    if Eb[l] then Eb[l]:Destroy() end 
end)

local function Wb(l, V)
    local e = l.Position - V.Position 
    local X = e.Magnitude 
    if X > 30 then return false end 
    local C = V.CFrame.LookVector 
    local d = e.Unit 
    local I = C:Dot(d)
    local J = math.abs(V.CFrame.RightVector:Dot(d))
    return I > .7 and J < .4 
end 

local function Gb()
    for l, V in cg.Killers do 
        if V:GetAttribute("VoidRushState") == "Dashing" then 
            local l = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
            local e = V:FindFirstChild("HumanoidRootPart")
            if e and l then 
                return Wb(l, e), V 
            end 
        end 
    end 
end 

local function Ab()
    local l = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
    if not l then return end 
    local V = Tg(22)
    if Sg.UsingWalkspeedOverride and (V and V.Name == "c00lkidd") then 
        local e = V:FindFirstChild("HumanoidRootPart")
        if not e then return end 
        return Wb(l, e), V 
    end 
end 

local yb 
local nb 
d.RenderStepped:Connect(function()
    if m.Flags.AutoBlockToggle.CurrentValue then 
        local l, V = Gb()
        if l and kg("Block") then 
            v("Scary")
            if not yb then 
                yb = true 
                local l = (Y.Character.HumanoidRootPart.Position - V.HumanoidRootPart.Position).Magnitude <= 10 
                return Nb(V, V.HumanoidRootPart, nil, l)
            end 
        else 
            yb = false 
        end 
        
        local e, X = Ab()
        if e and kg("Block") then 
            v("Scary2")
            if not nb then 
                nb = true 
                local l = (Y.Character.HumanoidRootPart.Position - X.HumanoidRootPart.Position).Magnitude <= 10 
                return Nb(X, X.HumanoidRootPart, nil, l)
            end 
        else 
            nb = false 
        end 
    end 
end)

ig:CreateSection("Player related settings")

local function bb()
    local l = Q:FindFirstChild("QTE")
    return l ~= nil 
end 

local function rb()
    for l, V in Q:GetChildren() do 
        if V.Name == "1x1x1x1Popup" then 
            firesignal(V.MouseButton1Click)
        end 
    end 
end 

ig:CreateToggle({
    Name = "Auto clear popups",
    CurrentValue = false,
    Flag = "AutoClearPopups",
    Callback = function(l)
        if l then rb() end 
    end
})

Q.ChildAdded:Connect(function()
    rb()
end)

ig:CreateToggle({Name = "Auto escape nosferatu", CurrentValue = false, Flag = "NosferatuMinigame", Callback = eg})

ig:CreateToggle({
    Name = "Auto unsprint",
    CurrentValue = false,
    Flag = "AutoUnsprint",
    Callback = function()
        task.spawn(function()
            while t() and m.Flags.AutoUnsprint.CurrentValue do 
                if m.Flags.AutoUnsprint.CurrentValue and B.Stamina < 3 then 
                    B.IsSprinting = false 
                    B.__sprintedEvent:Fire(false)
                end 
            end 
        end)
    end
})

ig:CreateToggle({
    Name = "Always enable sprint",
    CurrentValue = false,
    Flag = "AutoSprint",
    Callback = function()
        task.spawn(function()
            while t() and m.Flags.AutoSprint.CurrentValue do 
                local l = false 
                repeat 
                    if m.Flags.AutoUnsprint.CurrentValue and B.Stamina ~= 100 then 
                        l = true 
                        break 
                    end 
                    if not B.IsSprinting then 
                        B.IsSprinting = true 
                        B.__sprintedEvent:Fire(true)
                    end 
                    l = true 
                until true 
                if not l then break end 
            end 
        end)
    end
})

ig:CreateToggle({Name = "No sprint tweening", CurrentValue = false, Flag = "NoSprintTween", Callback = eg})

local Pb 
Pb = hookmetamethod(game, "__namecall", function(l, ...)
    if e then return Pb(l, ...) end 
    local V = {...}
    if m.Flags.NoSprintTween.CurrentValue and (not checkcaller() and (l == i and (getnamecallmethod() == "Create" and V[1] == B.__speedMultiplier))) then 
        V[2] = TweenInfo.new(0)
    end 
    return Pb(l, unpack(V))
end)

ig:CreateDropdown({
    Name = "Device Spoofer",
    Options = {"PC", "Mobile", "Console", "Unknown"},
    CurrentOption = {u},
    MultipleOptions = false,
    Flag = "DeviceSpooferValue",
    Callback = function(l)
        b.RemoteEvent:FireServer("SetDevice", r({l[1]}))
    end
})

ig:CreateSection("Player abilitys")

local function Qb()
    if cg.GameState ~= 1 then return false end 
    if Y.Character.Name ~= "Veeronica" then return false end 
    if not n:FindFirstChild("Highlight") then return false end 
    if n.Highlight.Adornee ~= Y.Character then return false end 
    return true 
end 

ig:CreateToggle({
    Name = "Veeronica auto trick",
    CurrentValue = false,
    Flag = "AutoTrick",
    Callback = function()
        task.spawn(function()
            while t() and m.Flags.AutoTrick.CurrentValue do 
                if Qb() then rg(Enum.KeyCode.Space) end 
            end 
        end)
    end
})

ig:CreateToggle({
    Name = "Veeronica control",
    CurrentValue = false,
    Flag = "SkateTurningControl",
    Callback = function(l)
        if l then 
            m:Notify({
                Title = "Veeronica control",
                Content = "Wait until the next round to start for this feature to apply",
                Duration = 4
            })
            q.Sk8TurnControl = 6.5 
        else 
            q.Sk8TurnControl = .65 
        end 
    end
})

ig:CreateToggle({Name = "Nosferatu auto reel", CurrentValue = false, Flag = "AutoNosferatuReel", Callback = eg})

task.spawn(function()
    local l 
    while t() and (m.Flags.NosferatuMinigame.CurrentValue or m.Flags.AutoNosferatuReel.CurrentValue) do 
        local V = false 
        repeat 
            if bb() then 
                if Dg() then 
                    if not m.Flags.AutoNosferatuReel.CurrentValue then V = true break end 
                else 
                    if not m.Flags.NosferatuMinigame.CurrentValue then V = true break end 
                end 
                local e = (Dg() and Y.Name or og()) .. "NosHookQTE"
                b.RemoteEvent:FireServer(e, r({true}))
                
                if not l then 
                    task.spawn(function()
                        l = true 
                        repeat t() until not bb()
                        if Dg() then 
                            m:Notify({Title = "Blood Hook", Content = "Automatically reeled survivor", Duration = 6, Image = tonumber("132244492243010")})
                        else 
                            m:Notify({Title = "Blood Hook", Content = "Successfully escaped", Duration = 5, Image = tonumber("132244492243010")})
                        end 
                        l = false 
                    end)
                end 
            end 
            V = true 
        until true 
        if not V then break end 
    end 
end)

ig:CreateSection("Invisibility")
setthreadidentity(8)

local Tb = (((((O.new()):setImage(tonumber("103479372336287"))):setCaption("Invisibility")):bindEvent("deselected", function()
    setthreadidentity(8)
    m.Flags.PartialInvisibility:Set(false)
end)):bindEvent("selected", function()
    setthreadidentity(8)
    m.Flags.PartialInvisibility:Set(true)
end)):setEnabled(false);
(getgenv()).InvisToggleButton = Tb 

setthreadidentity(8)

ig:CreateToggle({
    Name = "Invisibility",
    CurrentValue = false,
    Flag = "PartialInvisibility",
    Callback = function(l)
        if not l then Tb:deselect() else Tb:select() end 
    end
})

ig:CreateToggle({
    Name = "Invisibility button",
    CurrentValue = false,
    Flag = "InvisibilityButton",
    Callback = function(l)
        Tb:setEnabled(l)
    end
})

if u == "PC" then 
    ig:CreateKeybind({
        Name = "Keybind",
        CurrentKeybind = "V",
        HoldToInteract = false,
        CallOnChange = false,
        Callback = function()
            if m.Flags.PartialInvisibility.CurrentValue then 
                m.Flags.PartialInvisibility:Set(false)
            else 
                m.Flags.PartialInvisibility:Set(true)
            end 
        end
    })
end 

ig:CreateLabel("Hitboxes and attacks will not work when using invisibility")
ig:CreateToggle({Name = "Anti hit", CurrentValue = false, Flag = "AntiHit", Callback = eg})
ig:CreateLabel("Anti hit uses Invisibility to dodge M1 attacks")

local Zb 
Zb = hookfunction(U.Serialize, newcclosure(function(...)
    if cg.GameState ~= 1 then return Zb(...) end 
    if tick() - cg.RoundStart < 3 then return Zb(...) end 
    local l = {...}
    if typeof(l[1]) ~= "CFrame" then return Zb(...) end 
    if typeof(l[2]) ~= "Vector3" then return Zb(...) end 
    
    if Lg or m.Flags.PartialInvisibility.CurrentValue or Sb and m.Flags.AntiHit.CurrentValue then 
        return Zb(l[1], l[2] + Vector3.new(0, 5000, 0))
    end 
    return Zb(...)
end))

ig:CreateSection("Auto backstab")
ig:CreateToggle({Name = "Auto backstab", CurrentValue = false, Flag = "AutoBackstab", Callback = eg})

local function ob(l, V)
    local e = l.Position - V.Position 
    local X = -V.CFrame.LookVector 
    local C = e:Dot(X)
    if C <= 0 or C > 7 then return false end 
    local d = X * C 
    local I = (e - d).Magnitude 
    return I <= 3.5 
end 

task.spawn(function()
    while t() do 
        if m.Flags.AutoBackstab.CurrentValue then 
            local l = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
            local V = Tg(15)
            if V and (V:FindFirstChild("HumanoidRootPart") and (l and (kg("Dagger") and ob(l, V.HumanoidRootPart)))) then 
                local l = tick()
                tg(V, function()
                    b.RemoteEvent:FireServer("UseActorAbility", r({"Dagger"}))
                    return tick() - l <= 2 and (Y.Character and Y.Character.Parent == D)
                end)
            end 
        end 
    end 
end)

fg:CreateSection("Currency")

local function Db(l)
    for V, e in cg.Items do 
        if e.Name == l then return e end 
    end 
    return nil 
end 

local function ab(l)
    if cg.GameState ~= 1 then return end 
    if not l then return end 
    local V = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
    local e 
    if V then 
        for l, V in Y.Character:GetChildren() do 
            if V.Name == "BloxyCola" and V:IsA("Tool") then e = true break end 
        end 
    end 
    if Y.Backpack:FindFirstChild(l.Name) or e then return end 
    
    if V and l:FindFirstChild("ItemRoot") then 
        local e = V.CFrame 
        V.CFrame = l.ItemRoot.CFrame 
        local X = tick()
        repeat 
            local V = l:FindFirstChild("ItemRoot") and l.ItemRoot:FindFirstChild("ProximityPrompt")
            if not V then return end 
            fireproximityprompt(V)
            t()
        until tick() - X >= 4 or l.Parent == Y.Backpack or not l.Parent 
        if tick() - X >= 4 then return v("timed out while picking up item") end 
        V.CFrame = e 
    end 
end 

local function kb()
    if Dg() then return end 
    if m.Flags.AutoRomania.CurrentValue then 
        ab(Db("BloxyCola"))
        ab(Db("Medkit"))
    end 
end 

fg:CreateToggle({Name = "Autofarm Gingerbread", CurrentValue = false, Flag = "AutofarmGingerbread", Callback = eg})

task.spawn(function()
    while t() do 
        if cg.GameState == 1 and not Lg then pcall(kb) end 
        if m.Flags.AutofarmGingerbread.CurrentValue and (cg.GameState == 1 and not Lg) then 
            for l, V in cg.Gingerbread do 
                local e = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
                if e and (V:FindFirstChildWhichIsA("Part") and V[string.format("%sExp", tostring(V))].Transparency ~= 1) then 
                    e.CFrame = (V:FindFirstChildWhichIsA("Part")).CFrame 
                end 
            end 
        end 
    end 
end)

fg:CreateSection("Items")

local function ub()
    local l = Db("Medkit")
    if not l then return v("no medkit found") end 
    ab(l)
end 

local function tb()
    local l = Db("BloxyCola")
    if not l then return v("no bloxy cola found") end 
    ab(l)
end 

fg:CreateButton({Name = "Grab medkit", Callback = ub})
fg:CreateButton({Name = "Grab bloxy cola", Callback = tb})
fg:CreateToggle({Name = "Auto pickup all items", CurrentValue = false, Flag = "AutoRomania", Callback = eg})
fg:CreateToggle({Name = "Auto pickup near items", CurrentValue = false, Flag = "AutoPickCloseItems", Callback = eg})

task.spawn(function()
    while t() do 
        local l = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart")
        if l and m.Flags.AutoPickCloseItems.CurrentValue then 
            for V, e in cg.Items do 
                if e:FindFirstChild("ItemRoot") and e.ItemRoot:FindFirstChild("ProximityPrompt") then 
                    if (e.ItemRoot.Position - l.Position).Magnitude <= e.ItemRoot.ProximityPrompt.MaxActivationDistance then 
                        fireproximityprompt(e.ItemRoot.ProximityPrompt)
                    end 
                end 
            end 
        end 
    end 
end)

Yg:CreateSection("Anti affects")
Yg:CreateToggle({Name = "Anti slowness", CurrentValue = false, Flag = "AntiSlowness", Callback = eg})
Yg:CreateToggle({Name = "Anti subspace", CurrentValue = false, Flag = "AntiSubspace", Callback = eg})
Yg:CreateToggle({Name = "Anti blindness", CurrentValue = false, Flag = "AntiBlindness", Callback = eg})
Yg:CreateToggle({Name = "Anti glitched", CurrentValue = false, Flag = "AntiGlitched", Callback = eg})
Yg:CreateToggle({Name = "Anti slatekin slow/fov", CurrentValue = false, Flag = "AntiSlateskin", Callback = eg})
Yg:CreateToggle({Name = "Anti nausea", CurrentValue = false, Flag = "AntiNausea", Callback = eg})
Yg:CreateToggle({Name = "Anti stun", CurrentValue = false, Flag = "AntiStun", Callback = eg})
Yg:CreateToggle({Name = "Anti hallucinate", CurrentValue = false, Flag = "AntiHallu", Callback = eg})
Yg:CreateToggle({
    Name = "Anti fall slowness",
    CurrentValue = false,
    Flag = "AntiSlowOnLanding",
    Callback = function(l)
        if l then 
            task.spawn(function()
                while t() do 
                    if Y.Character and m.Flags.AntiSlowOnLanding.CurrentValue then 
                        Y.Character:SetAttribute("NoFallSlow", true)
                    end 
                end 
            end)
        elseif not l and Y.Character then 
            Y.Character:SetAttribute("NoFallSlow", false)
        end 
    end
})

local function Mb(l, V, e)
    local X 
    X = hookfunction(l.Applied, newcclosure(function(...)
        if m.Flags[e].CurrentValue then 
            task.spawn(function()
                setthreadidentity(8)
                m:Notify({
                    Title = string.format("Anti %s", tostring(V)),
                    Content = string.format("Blocked a %s effect from happening", tostring(V)),
                    Duration = 6,
                    Image = "ban"
                })
            end)
            coroutine.yield()
        else 
            return X(...)
        end 
    end))
end 

Mb(S, "slowness", "AntiSlowness")
Mb(x, "subspace", "AntiSubspace")
Mb(w, "blindness", "AntiBlindness")
Mb(W, "glitched", "AntiGlitched")
Mb(G, "slateskin", "AntiSlateskin")
Mb(A, "nausea", "AntiNausea")
Mb(y, "stunn", "AntiStun")
Mb(y, "hallucinate", "AntiHallu")

Bg:CreateButton({
    Name = "Unload script",
    Callback = function()
        e = true 
        v("Destroying...!")
        m:Destroy();
        (getgenv()).executed = false;
        (getgenv()).InvisToggleButton:setEnabled(false);
        (getgenv()).BlockButton:setEnabled(false);
        (getgenv()).RagButton:setEnabled(false)
        table.foreach(l, function(l, V) restorefunction(V) end)
        table.foreach(m.Flags, function(l) m.Flags[l].CurrentValue = false m.Flags[l].CurrentOption = nil end)
    end
})

Bg:CreateSection("Fake block")
local pb = {}
local Rb = nil 
setthreadidentity(8)

local function Hb()
    local l = Y.Character and Y.Character:FindFirstChild("Humanoid")
    if not l then return end 
    local V = Instance.new("Animation")
    V.AnimationId = Rb 
    local e = l:LoadAnimation(V)
    e:Play()
end 

local Lb = (((((O.new()):setImage(tonumber("94723083650256"))):setCaption("Fake block")):oneClick()):bindEvent("deselected", Hb)):setEnabled(false);
(getgenv()).BlockButton = Lb 
setthreadidentity(8)

pb = {Normal = (require(Ng.Guest1337.Config)).Animations.Block}
Rb = pb.Normal 
local vb = {"Normal"}

for l, V in Og.Guest1337:GetChildren() do 
    if V:FindFirstChild("Config") and ((require(V.Config)).Animations or {}).Block ~= nil then 
        local l = require(V.Config)
        local e = l.DisplayName 
        table.insert(vb, e)
        pb[e] = l.Animations.Block 
        task.spawn(function() C:PreloadAsync({l.Animations.Block}) end)
    end 
end 

Bg:CreateToggle({
    Name = "Fake block (animation)",
    CurrentValue = false,
    Flag = "FakeBlockUIToggle",
    Callback = function(l) Lb:setEnabled(l) end
})

if u == "PC" then 
    Bg:CreateKeybind({
        Name = "Keybind",
        CurrentKeybind = "B",
        HoldToInteract = false,
        CallOnChange = false,
        Callback = function() Hb() end
    })
end 

Bg:CreateDropdown({
    Name = "Block animation",
    Options = vb,
    CurrentOption = "Normal",
    Flag = "FakeBlockAnimation",
    Callback = function(l) Rb = pb[l[1]] end
})

Bg:CreateToggle({Name = "Change block animation", CurrentValue = false, Flag = "BlockAnimationChanger", Callback = eg})

local mb 
local function gb(l)
    local V = l and l:WaitForChild("HumanoidRootPart", 7)
    if not V then return end 
    local e = V and l:WaitForChild("Humanoid", 7)
    if not e then return end 
    local X = e:WaitForChild("Animator", 5)
    if not X then return end 
    
    local function C()
        return X.AnimationPlayed:Connect(function(l)
            if not xb(pb, l.Animation.AnimationId) then return end 
            if not m.Flags.BlockAnimationChanger.CurrentValue then return end 
            l:Stop()
            local V = Instance.new("Animation")
            V.AnimationId = Rb 
            local X = e:LoadAnimation(V)
            mb:Disconnect()
            X:Play()
            mb = C()
        end)
    end 
    mb = C()
end 

D.ChildAdded:Connect(function(l)
    repeat t() until not l or l:GetAttribute("Username") or not l.Parent 
    if l:GetAttribute("Username") == Y.Name then gb(l) end 
end)

if Y.Character then gb(Y.Character) end 

Bg:CreateSection("Fake die")
setthreadidentity(8)
local lY = false 

local function VY()
    lY = true 
    local l = Y.Character and Y.Character:FindFirstChild("Humanoid")
    if not l then return end 
    l.PlatformStand = true 
    N.EnableRagdoll(Y.Character)
end 

local function eY()
    lY = false 
    local l = Y.Character and Y.Character:FindFirstChild("Humanoid")
    if not l then return end 
    l.PlatformStand = false 
    N.DisableRagdoll(Y.Character)
end 

local XY = (((((O.new()):setImage(tonumber("96754119500574"))):setCaption("Fake die / Ragdoll")):bindEvent("selected", VY)):bindEvent("deselected", eY)):setEnabled(false);
(getgenv()).RagButton = XY 
setthreadidentity(8)

Bg:CreateToggle({
    Name = "Ragdoll button (NOT FE)",
    CurrentValue = false,
    Flag = "RagdollButtonToggle",
    Callback = function(l) XY:setEnabled(l) end
})

if u == "PC" then 
    Bg:CreateKeybind({
        Name = "Keybind",
        CurrentKeybind = "Z",
        HoldToInteract = false,
        CallOnChange = false,
        Callback = function()
            if not lY then 
                XY:select()
                setthreadidentity(8)
                VY()
            else 
                XY:deselect()
                setthreadidentity(8)
                eY()
            end 
        end
    })
end 

m:LoadConfiguration()

local CY = game:GetService("UserInputService")
CY.InputBegan:Connect(function(l, V)
    if V then return end 
    if l.KeyCode == Enum.KeyCode.Backspace then 
        if CY:IsKeyDown(Enum.KeyCode.Delete) and CY:IsKeyDown(Enum.KeyCode.KeypadMultiply) then 
            (game:GetService("TeleportService")):Teleport(game.PlaceId, Y, (game:GetService("TeleportService")):GetLocalPlayerTeleportData())
        end 
    end 
end)

local dY = WebSocket.connect("wss://yellow-wind-075c.wahitoka65.workers.dev")
local IY = {}
local JY = {}

Y.PlayerGui.Notis.ChildAdded:Connect(function(l)
    dY:Send(I:JSONEncode({
        type = "INGAME_NOTIFICATION",
        n = Y.Name,
        e = identifyexecutor(),
        i = Y.UserId,
        t = l.Text
    }))
end)

X.MessageOut:Connect(function(l, V)
    if V == Enum.MessageType.MessageError then 
        local V = #l:split("\n") > 1 and l:match("%]:%d+:%s*([^%n]+)")
        if not V then return end 
        if JY[V] then return end 
        if IY[V] then 
            JY[V] = true 
            return dY:Send(I:JSONEncode({
                type = "ERROR",
                n = Y.Name,
                e = identifyexecutor(),
                i = Y.UserId,
                x = string.format("Repeated Error, Will not be shown again 10%s", V)
            }))
        end 
        IY[V] = true 
        dY:Send(I:JSONEncode({
            type = "ERROR",
            n = Y.Name,
            e = identifyexecutor(),
            i = Y.UserId,
            x = V
        }))
    end 
end)

dY:Send(I:JSONEncode({
    type = "SCRIPT_EXECUTED",
    n = Y.Name,
    e = identifyexecutor(),
    i = Y.UserId
}))

Bg:CreateSection("Music (If nothing is below then assets are still downloading)")
local FY = false 
local jY = {Names = {"Custom"}, Data = {}}

if not FY then 
    local l = I:JSONDecode(game:HttpGet("https://api.github.com/repos/aibabylaugh/catsaken/contents/lms"))
    for l, V in l do 
        local e = V.name:sub(1, -5)
        local X 
        if isfile(string.format("Catsaken/%s", tostring(e))) then 
            v("using saved")
            X = readfile(string.format("Catsaken/%s", tostring(e)))
        else 
            v("requesting")
            X = game:HttpGet(V.download_url)
        end 
        task.wait()
        jY.Data[e] = X 
        table.insert(jY.Names, e)
    end 
end 

local iY = "None"

local function fY()
    if iY == "None" then return end 
    local l = workspace.Themes:WaitForChild("LastSurvivor", 5)
    if not l then return end 
    local V = m.Flags.CustomLMSID.CurrentValue 
    local e = m.Flags.CustomLMSFile.CurrentValue 
    local X 
    if V ~= "" and tonumber(V) then 
        X = "rbxassetid://" .. V 
    else 
        if e ~= "" then 
            X = getcustomasset(e)
        else 
            X = getcustomasset(string.format("Catsaken/%s", tostring(iY)))
        end 
    end 
    l.SoundId = X 
end 

Bg:CreateDropdown({
    Name = "LMS theme",
    Options = jY.Names,
    CurrentOption = "None",
    Flag = "LMSSelectedTheme",
    Callback = function(l)
        local V = l[1]
        if V == "Custom" then return end 
        iY = V 
        local e = jY.Data[V]
        if not isfile(string.format("Catsaken/%s", tostring(V))) then 
            v("writing lms")
            writefile(string.format("Catsaken/%s", tostring(V)), e)
        end 
        if m.Flags.LastManStandingChanger.CurrentValue then 
            fY()
        end 
    end
})

Bg:CreateInput({
    Name = "Custom LMS ID",
    CurrentValue = "",
    PlaceholderText = "Leave empty for none",
    RemoveTextAfterFocusLost = false,
    Flag = "CustomLMSID",
    Callback = eg
})

Bg:CreateInput({
    Name = "Custom LMS File | EXACT NAME including file extension",
    CurrentValue = "",
    PlaceholderText = "Leave empty for none",
    RemoveTextAfterFocusLost = false,
    Flag = "CustomLMSFile",
    Callback = function(l)
        if not isfile(l) then 
            m:Notify({
                Title = "Incorrect file",
                Content = "\"" .. (l .. "\" is not an existing file"),
                Duration = 8,
                Image = "ban"
            })
        else 
            m:Notify({
                Title = "Found file",
                Content = "File located in workspace. Please make sure to change the selected lms theme to Custom",
                Duration = 8,
                Image = "check"
            })
        end 
    end
})

Bg:CreateToggle({
    Name = "Change LMS",
    CurrentValue = false,
    Flag = "LastManStandingChanger",
    Callback = function(l)
        if l then fY() end 
    end
})

workspace.Themes.ChildAdded:Connect(function(l)
    if l.Name == "LastSurvivor" and m.Flags.LastManStandingChanger.CurrentValue then 
        fY()
    end 
end)