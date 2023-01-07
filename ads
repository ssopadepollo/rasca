local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Booga Reborn / Script created by RatatuiHelp#0267", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Old God",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(210, -142, 1079)
  	end    
})

Tab:AddButton({
	Name = "Volcano",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1064, -196, -427)
        end    
})

Tab:AddButton({
	Name = "Void TP",
	Callback = function()
      		print("button pressed")
              local TeleportService = game:GetService('TeleportService')
              local placeID = 11879754496
              local player = game.Players.LocalPlayer
              TeleportService:Teleport(placeID, player)
        end    
})

Tab:AddButton({
	Name = "Copy Void Link :)",
	Callback = function()
      		print("button pressed")
              local cop = "https://web.roblox.com/games/11879754496/Voidness"
             setclipboard(tostring(cop))
        end    
})


local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Bag Invisible"
})

Tab:AddDropdown({
	Name = "Bag Name",
	Default = "1",
	Options = {"Pink Diamond Bag", "God Bag", "Void Bag", "Hide Bag", "Leaf Bag", "Iron Bag", "Magnetite Bag", "Adurite Bag", "Steel Bag", "Crystal Bag"},
	Callback = function(Value)
		print(Value)
        getgenv().bagname = Value
	end    
})

Tab:AddButton({
	Name = "Bag Invisible",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character[getgenv().bagname].Handle.AccessoryWeld:Destroy()
              game.Players.LocalPlayer.Character[getgenv().bagname].Handle.AccessoryWeld:Destroy()
        end    
})

local Section = Tab:AddSection({
	Name = "Block Hats"
})

Tab:AddTextbox({
	Name = "Hat Name",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		print(Value)
        getgenv().hatname = Value
	end	  
})

Tab:AddButton({
	Name = "Block Hat",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character[getgenv().hatname].Handle.Mesh:Destroy()	   
        end    
})

local Section = Tab:AddSection({
	Name = "Bugged"
})

Tab:AddButton({
	Name = "God Armor Bugged",
	Callback = function()
      		print("button pressed")
			  game.Players.LocalPlayer.Character["God Chestplate"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Halo"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Halo"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Legs Right Leg"].Handle.AccessoryWeld:Destroy()
			  game.Players.LocalPlayer.Character["God Legs Left Leg"].Handle.AccessoryWeld:Destroy()
        end    
})

Tab:AddButton({
	Name = "Iron Bow Bugged",
	Callback = function(t)
      		print("button pressed")
              getgenv().ironbowbugged = true
              while wait() do
              if getgenv().ironbowbugged == true then
              game.Players.LocalPlayer.Character["Iron Bow"].Part.Mesh:Destroy()
              game.Players.LocalPlayer.Character["Iron Bow"].Rest.Mesh:Destroy()
              game.Players.LocalPlayer.Character["Iron Bow"].Draw.Mesh:Destroy()
              end
              end
        end    
})

Tab:AddButton({
	Name = "Day Shaders",
	Callback = function()
      		print("button pressed")
            while wait() do
              local tiempo = "07:30:00"
              game:GetService("Lighting").Ambient = Color3.fromRGB(1,1,1)
              game:GetService("Lighting").ClockTime = 6.5
              game:GetService("Lighting").FogColor = Color3.fromRGB(9,9,9)
              game:GetService("Lighting").FogEnd = 2000000
              game:GetService("Lighting").FogStart = 100000
              game:GetService("Lighting").GeographicLatitude = 44
              game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(87, 150, 255)
              game:GetService("Lighting").TimeOfDay = tiempo
              game:GetService("Lighting").Brightness = 3
            end
        end    
})

Tab:AddButton({
	Name = "Freecam (Shift P)",
	Callback = function()
      		print("button pressed")
              function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                __index = function(self,k)
                if k=="script" then
                return var
                else
                return env[k]
                end
                end,
                })
                setfenv(func,newenv)
                return func
                end
                cors = {}
                mas = Instance.new("Model",game:GetService("Lighting"))
                LocalScript0 = Instance.new("LocalScript")
                LocalScript0.Name = "FreeCamera"
                LocalScript0.Parent = mas
                table.insert(cors,sandbox(LocalScript0,function()
                -----------------------------------------------------------------------
                -- Freecam
                -- Cinematic free camera for spectating and video production.
                ------------------------------------------------------------------------
                
                local pi    = math.pi
                local abs   = math.abs
                local clamp = math.clamp
                local exp   = math.exp
                local rad   = math.rad
                local sign  = math.sign
                local sqrt  = math.sqrt
                local tan   = math.tan
                
                local ContextActionService = game:GetService("ContextActionService")
                local Players = game:GetService("Players")
                local RunService = game:GetService("RunService")
                local StarterGui = game:GetService("StarterGui")
                local UserInputService = game:GetService("UserInputService")
                
                local LocalPlayer = Players.LocalPlayer
                if not LocalPlayer then
                Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
                LocalPlayer = Players.LocalPlayer
                end
                
                local Camera = workspace.CurrentCamera
                workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
                local newCamera = workspace.CurrentCamera
                if newCamera then
                Camera = newCamera
                end
                end)
                
                ------------------------------------------------------------------------
                
                local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
                local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
                local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}
                
                local NAV_GAIN = Vector3.new(1, 1, 1)*64
                local PAN_GAIN = Vector2.new(0.75, 1)*8
                local FOV_GAIN = 300
                
                local PITCH_LIMIT = rad(90)
                
                local VEL_STIFFNESS = 1.5
                local PAN_STIFFNESS = 1.0
                local FOV_STIFFNESS = 4.0
                
                ------------------------------------------------------------------------
                
                local Spring = {} do
                Spring.__index = Spring
                
                function Spring.new(freq, pos)
                local self = setmetatable({}, Spring)
                self.f = freq
                self.p = pos
                self.v = pos*0
                return self
                end
                
                function Spring:Update(dt, goal)
                local f = self.f*2*pi
                local p0 = self.p
                local v0 = self.v
                
                local offset = goal - p0
                local decay = exp(-f*dt)
                
                local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
                local v1 = (f*dt*(offset*f - v0) + v0)*decay
                
                self.p = p1
                self.v = v1
                
                return p1
                end
                
                function Spring:Reset(pos)
                self.p = pos
                self.v = pos*0
                end
                end
                
                ------------------------------------------------------------------------
                
                local cameraPos = Vector3.new()
                local cameraRot = Vector2.new()
                local cameraFov = 0
                
                local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
                local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
                local fovSpring = Spring.new(FOV_STIFFNESS, 0)
                
                ------------------------------------------------------------------------
                
                local Input = {} do
                local thumbstickCurve do
                local K_CURVATURE = 2.0
                local K_DEADZONE = 0.15
                
                local function fCurve(x)
                return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
                end
                
                local function fDeadzone(x)
                return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
                end
                
                function thumbstickCurve(x)
                return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
                end
                end
                
                local gamepad = {
                ButtonX = 0,
                ButtonY = 0,
                DPadDown = 0,
                DPadUp = 0,
                ButtonL2 = 0,
                ButtonR2 = 0,
                Thumbstick1 = Vector2.new(),
                Thumbstick2 = Vector2.new(),
                }
                
                local keyboard = {
                W = 0,
                A = 0,
                S = 0,
                D = 0,
                E = 0,
                Q = 0,
                U = 0,
                H = 0,
                J = 0,
                K = 0,
                I = 0,
                Y = 0,
                Up = 0,
                Down = 0,
                LeftShift = 0,
                RightShift = 0,
                }
                
                local mouse = {
                Delta = Vector2.new(),
                MouseWheel = 0,
                }
                
                local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
                local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
                local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
                local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
                local FOV_WHEEL_SPEED    = 1.0
                local FOV_GAMEPAD_SPEED  = 0.25
                local NAV_ADJ_SPEED      = 0.75
                local NAV_SHIFT_MUL      = 0.25
                
                local navSpeed = 1
                
                function Input.Vel(dt)
                navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
                
                local kGamepad = Vector3.new(
                thumbstickCurve(gamepad.Thumbstick1.x),
                thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
                thumbstickCurve(-gamepad.Thumbstick1.y)
                )*NAV_GAMEPAD_SPEED
                
                local kKeyboard = Vector3.new(
                keyboard.D - keyboard.A + keyboard.K - keyboard.H,
                keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
                keyboard.S - keyboard.W + keyboard.J - keyboard.U
                )*NAV_KEYBOARD_SPEED
                
                local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
                
                return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
                end
                
                function Input.Pan(dt)
                local kGamepad = Vector2.new(
                thumbstickCurve(gamepad.Thumbstick2.y),
                thumbstickCurve(-gamepad.Thumbstick2.x)
                )*PAN_GAMEPAD_SPEED
                local kMouse = mouse.Delta*PAN_MOUSE_SPEED
                mouse.Delta = Vector2.new()
                return kGamepad + kMouse
                end
                
                function Input.Fov(dt)
                local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
                local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
                mouse.MouseWheel = 0
                return kGamepad + kMouse
                end
                
                do
                local function Keypress(action, state, input)
                keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                return Enum.ContextActionResult.Sink
                end
                
                local function GpButton(action, state, input)
                gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
                return Enum.ContextActionResult.Sink
                end
                
                local function MousePan(action, state, input)
                local delta = input.Delta
                mouse.Delta = Vector2.new(-delta.y, -delta.x)
                return Enum.ContextActionResult.Sink
                end
                
                local function Thumb(action, state, input)
                gamepad[input.KeyCode.Name] = input.Position
                return Enum.ContextActionResult.Sink
                end
                
                local function Trigger(action, state, input)
                gamepad[input.KeyCode.Name] = input.Position.z
                return Enum.ContextActionResult.Sink
                end
                
                local function MouseWheel(action, state, input)
                mouse[input.UserInputType.Name] = -input.Position.z
                return Enum.ContextActionResult.Sink
                end
                
                local function Zero(t)
                for k, v in pairs(t) do
                t[k] = v*0
                end
                end
                
                function Input.StartCapture()
                ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
                Enum.KeyCode.W, Enum.KeyCode.U,
                Enum.KeyCode.A, Enum.KeyCode.H,
                Enum.KeyCode.S, Enum.KeyCode.J,
                Enum.KeyCode.D, Enum.KeyCode.K,
                Enum.KeyCode.E, Enum.KeyCode.I,
                Enum.KeyCode.Q, Enum.KeyCode.Y,
                Enum.KeyCode.Up, Enum.KeyCode.Down
                )
                ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
                ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
                ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
                ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
                ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
                end
                
                function Input.StopCapture()
                navSpeed = 1
                Zero(gamepad)
                Zero(keyboard)
                Zero(mouse)
                ContextActionService:UnbindAction("FreecamKeyboard")
                ContextActionService:UnbindAction("FreecamMousePan")
                ContextActionService:UnbindAction("FreecamMouseWheel")
                ContextActionService:UnbindAction("FreecamGamepadButton")
                ContextActionService:UnbindAction("FreecamGamepadTrigger")
                ContextActionService:UnbindAction("FreecamGamepadThumbstick")
                end
                end
                end
                
                local function GetFocusDistance(cameraFrame)
                local znear = 0.1
                local viewport = Camera.ViewportSize
                local projy = 2*tan(cameraFov/2)
                local projx = viewport.x/viewport.y*projy
                local fx = cameraFrame.rightVector
                local fy = cameraFrame.upVector
                local fz = cameraFrame.lookVector
                
                local minVect = Vector3.new()
                local minDist = 512
                
                for x = 0, 1, 0.5 do
                for y = 0, 1, 0.5 do
                local cx = (x - 0.5)*projx
                local cy = (y - 0.5)*projy
                local offset = fx*cx - fy*cy + fz
                local origin = cameraFrame.p + offset*znear
                local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
                local dist = (hit - origin).magnitude
                if minDist > dist then
                minDist = dist
                minVect = offset.unit
                end
                end
                end
                
                return fz:Dot(minVect)*minDist
                end
                
                ------------------------------------------------------------------------
                
                local function StepFreecam(dt)
                local vel = velSpring:Update(dt, Input.Vel(dt))
                local pan = panSpring:Update(dt, Input.Pan(dt))
                local fov = fovSpring:Update(dt, Input.Fov(dt))
                
                local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))
                
                cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
                cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
                cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))
                
                local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
                cameraPos = cameraCFrame.p
                
                Camera.CFrame = cameraCFrame
                Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
                Camera.FieldOfView = cameraFov
                end
                
                ------------------------------------------------------------------------
                
                local PlayerState = {} do
                local mouseIconEnabled
                local cameraSubject
                local cameraType
                local cameraFocus
                local cameraCFrame
                local cameraFieldOfView
                local screenGuis = {}
                local coreGuis = {
                Backpack = true,
                Chat = true,
                Health = true,
                PlayerList = true,
                }
                local setCores = {
                BadgesNotificationsActive = true,
                PointsNotificationsActive = true,
                }
                
                -- Save state and set up for freecam
                function PlayerState.Push()
                for name in pairs(coreGuis) do
                coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
                end
                for name in pairs(setCores) do
                setCores[name] = StarterGui:GetCore(name)
                StarterGui:SetCore(name, false)
                end
                local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                if playergui then
                for _, gui in pairs(playergui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Enabled then
                screenGuis[#screenGuis + 1] = gui
                gui.Enabled = false
                end
                end
                end
                
                cameraFieldOfView = Camera.FieldOfView
                Camera.FieldOfView = 70
                
                cameraType = Camera.CameraType
                Camera.CameraType = Enum.CameraType.Custom
                
                cameraSubject = Camera.CameraSubject
                Camera.CameraSubject = nil
                
                cameraCFrame = Camera.CFrame
                cameraFocus = Camera.Focus
                
                mouseIconEnabled = UserInputService.MouseIconEnabled
                UserInputService.MouseIconEnabled = false
                
                mouseBehavior = UserInputService.MouseBehavior
                UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                end
                
                -- Restore state
                function PlayerState.Pop()
                for name, isEnabled in pairs(coreGuis) do
                StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
                end
                for name, isEnabled in pairs(setCores) do
                StarterGui:SetCore(name, isEnabled)
                end
                for _, gui in pairs(screenGuis) do
                if gui.Parent then
                gui.Enabled = true
                end
                end
                
                Camera.FieldOfView = cameraFieldOfView
                cameraFieldOfView = nil
                
                Camera.CameraType = cameraType
                cameraType = nil
                
                Camera.CameraSubject = cameraSubject
                cameraSubject = nil
                
                Camera.CFrame = cameraCFrame
                cameraCFrame = nil
                
                Camera.Focus = cameraFocus
                cameraFocus = nil
                
                UserInputService.MouseIconEnabled = mouseIconEnabled
                mouseIconEnabled = nil
                
                UserInputService.MouseBehavior = mouseBehavior
                mouseBehavior = nil
                end
                end
                
                local function StartFreecam()
                local cameraCFrame = Camera.CFrame
                cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
                cameraPos = cameraCFrame.p
                cameraFov = Camera.FieldOfView
                
                velSpring:Reset(Vector3.new())
                panSpring:Reset(Vector2.new())
                fovSpring:Reset(0)
                
                PlayerState.Push()
                RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
                Input.StartCapture()
                end
                
                local function StopFreecam()
                Input.StopCapture()
                RunService:UnbindFromRenderStep("Freecam")
                PlayerState.Pop()
                end
                
                ------------------------------------------------------------------------
                
                do
                local enabled = false
                
                local function ToggleFreecam()
                if enabled then
                StopFreecam()
                else
                StartFreecam()
                end
                enabled = not enabled
                end
                
                local function CheckMacro(macro)
                for i = 1, #macro - 1 do
                if not UserInputService:IsKeyDown(macro[i]) then
                return
                end
                end
                ToggleFreecam()
                end
                
                local function HandleActivationInput(action, state, input)
                if state == Enum.UserInputState.Begin then
                if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
                CheckMacro(FREECAM_MACRO_KB)
                end
                end
                return Enum.ContextActionResult.Pass
                end
                
                ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
                end
                end))
                for i,v in pairs(mas:GetChildren()) do
                v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
                pcall(function() v:MakeJoints() end)
                end
                mas:Destroy()
                for i,v in pairs(cors) do
                spawn(function()
                pcall(v)
                end)
                end
        end    
})

Tab:AddButton({
	Name = "Aura Gui",
	Callback = function()
      		print("button pressed")
	   loadstring(game:HttpGet("https://raw.githubusercontent.com/CheeseOnGithub/scripts/main/bb2019.lua",true))()
        end    
})

local Heals = Window:MakeTab({
	Name = "Heals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- global variables

_G.AutoBlood = false
_G.AutoBerries = false
_G.AutoBluefruit = false
_G.AutoLemons = false
_G.AutoJelly = false
_G.AutoStraw = false
--x5

_G.AutoBlood5 = false
_G.AutoBerries5 = false
_G.AutoBluefruit5 = false
_G.AutoLemons5 = false
_G.AutoJelly5 = false
_G.AutoStraw5 = false
--x1

_G.AutoBlood1 = false
_G.AutoBerries1 = false
_G.AutoBluefruit1 = false
_G.AutoLemons1 = false
_G.AutoJelly1 = false
_G.AutoStraw1 = false
-- functions

function AutoPickUp()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == "Bloodfruit Bush" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
            game.ReplicatedStorage.Events.Pickup:FireServer(v)
        end
    end
end


function KeyBindBloodfruit()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
end

function KeyBindBerries()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
end

function KeyBindBluefruit()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
end

function KeyBindStrawBerries()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
end

--x5
function KeyBindBloodfruit5()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
end

function KeyBindBerries5()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
end

function KeyBindBluefruit5()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
end

function KeyBindStrawBerries5()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
end
--x1-------------------------------------

function KeyBindBloodfruit1()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit")
end

function KeyBindBerries1()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry")
end

function KeyBindBluefruit1()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit")
end

function KeyBindStrawBerries1()
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry")
end

function AutoPlant()
    local Player = game:GetService("Players").LocalPlayer
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 500 then
            game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Bloodfruit")
        end
    end
end

function AutoBlood()
        while _G.AutoBlood == true do
        if _G.AutoBlood == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit") -- fruit
         end
          task.wait()
       end
    end
end

function AutoStraw()
    while _G.AutoStraw == true do
    if _G.AutoStraw == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry") -- fruit
     end
      task.wait()
   end
end
end

function AutoBerries()
    while _G.AutoBerries == true do
        if _G.AutoBerries == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry") -- fruit
         end
          task.wait()
       end
    end
end

function AutoBluefruit()
    while _G.AutoBluefruit == true do
        if _G.AutoBluefruit == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit") -- fruit
         end
          task.wait()
       end
    end
end

function AutoLemons()
    while _G.AutoLemons == true do
        if _G.AutoLemons == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Lemon") -- fruit
         end
          task.wait()
       end
    end
end

function AutoJelly()
    while _G.AutoJelly == true do
        if _G.AutoJelly == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Jelly") -- fruit
         end
          task.wait()
       end
    end
end

--x5----------------------------------------------------
function AutoBlood5()
    while _G.AutoBlood5 == true do
    if _G.AutoBlood5 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit") -- fruit
     end
      task.wait()
   end
end
end

function AutoStraw5()
while _G.AutoStraw5 == true do
if _G.AutoStraw5 == true then 
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry") -- fruit
 end
  task.wait()
end
end
end

function AutoBerries5()
while _G.AutoBerries5 == true do
    if _G.AutoBerries5 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry") -- fruit
     end
      task.wait()
   end
end
end

function AutoBluefruit5()
while _G.AutoBluefruit5 == true do
    if _G.AutoBluefruit5 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit") -- fruit
     end
      task.wait()
   end
end
end

function AutoLemons5()
while _G.AutoLemons5 == true do
    if _G.AutoLemons5 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Lemon") -- fruit
     end
      task.wait()
   end
end
end

function AutoJelly5()
while _G.AutoJelly5 == true do
    if _G.AutoJelly5 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Jelly") -- fruit
     end
      task.wait()
   end
end
end

--x1------------------------------------------------------------

function AutoBlood1()
    while _G.AutoBlood1 == true do
    if _G.AutoBlood1 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit") -- fruit
     end
      task.wait()
   end
end
end

function AutoStraw1()
while _G.AutoStraw1 == true do
if _G.AutoStraw1 == true then 
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Strawberry") -- fruit
 end
  task.wait()
end
end
end

function AutoBerries1()
while _G.AutoBerries1 == true do
    if _G.AutoBerries1 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry") -- fruit
     end
      task.wait()
   end
end
end

function AutoBluefruit1()
while _G.AutoBluefruit1 == true do
    if _G.AutoBluefruit1 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit") -- fruit
     end
      task.wait()
   end
end
end

function AutoLemons1()
while _G.AutoLemons1 == true do
    if _G.AutoLemons1 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Lemon") -- fruit
     end
      task.wait()
   end
end
end

function AutoJelly1()
while _G.AutoJelly1 == true do
    if _G.AutoJelly1 == true then 
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Jelly") -- fruit
     end
      task.wait()
   end
end
end

--nahiideah2 vengarme
-- toggles
local Section = Heals:AddSection({
	Name = "x1 Speed"
})

Heals:AddToggle({
	Name = "AutoHeal - Bloodfruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood1 = Value
        AutoBlood1()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Berries",
	Default = false,
	Callback = function(Value)
		_G.AutoBerries1 = Value
        AutoBerries1()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Bluefruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBluefruit1 = Value
        AutoBluefruit1()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Lemons",
	Default = false,
	Callback = function(Value)
		_G.AutoLemons1 = Value
        AutoLemons1()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Jelly",
	Default = false,
	Callback = function(Value)
		_G.AutoJelly1 = Value
        AutoJelly1()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Strawberry",
	Default = false,
	Callback = function(Value)
		_G.AutoStraw1 = Value
        AutoStraw1()
	end    
})

local Section = Heals:AddSection({
	Name = "x4 Speed"
})

Heals:AddToggle({
	Name = "AutoHeal - Bloodfruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood = Value
        AutoBlood()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Berries",
	Default = false,
	Callback = function(Value)
		_G.AutoBerries = Value
        AutoBerries()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Bluefruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBluefruit = Value
        AutoBluefruit()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Lemons",
	Default = false,
	Callback = function(Value)
		_G.AutoLemons = Value
        AutoLemons()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Jelly",
	Default = false,
	Callback = function(Value)
		_G.AutoJelly = Value
        AutoJelly()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Strawberry",
	Default = false,
	Callback = function(Value)
		_G.AutoStraw = Value
        AutoStraw()
	end    
})

local Section = Heals:AddSection({
	Name = "x5 Speed"
})

Heals:AddToggle({
	Name = "AutoHeal - Bloodfruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood5 = Value
        AutoBlood5()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Berries",
	Default = false,
	Callback = function(Value)
		_G.AutoBerries5 = Value
        AutoBerries5()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Bluefruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBluefruit5 = Value
        AutoBluefruit5()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Lemons",
	Default = false,
	Callback = function(Value)
		_G.AutoLemons5 = Value
        AutoLemons5()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Jelly",
	Default = false,
	Callback = function(Value)
		_G.AutoJelly5 = Value
        AutoJelly5()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Strawberry",
	Default = false,
	Callback = function(Value)
		_G.AutoStraw5 = Value
        AutoStraw()
	end    
})

local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Start Inf Reach"
})

Tab:AddToggle({
    Name = "Aura Players",
    Default = false,
    Callback = function(m)
        print(m)
        getgenv().autokillplayers = m
        if m then
            spawn(
                function()
                    while autokillplayers do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = 100, nil
                                    for b, c in pairs(p:GetPlayers()) do
                                        if c ~= p.LocalPlayer and c.Character.HumanoidRootPart then
                                            if
                                                (n.Position - c.Character.HumanoidRootPart.Position).Magnitude <
                                                    S
                                             then
                                                R = c.Character.HumanoidRootPart
                                                S =
                                                    (n.Position - c.Character.HumanoidRootPart.Position).Magnitude
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
    })

    Tab:AddToggle({
        Name = "Show Hitbox Aura",
        Default = false,
        Callback = function(m)
            print(m)
                    getgenv().showaurah = m
                    if m then
                        spawn(
                            function()
                                while showaurah do
                                    wait()
                                    pcall(
                                        function()

                                            for i,v in next, game:GetService('Players'):GetPlayers() do
                                                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                                                pcall(function()
                                                v.Character.HumanoidRootPart.Size = Vector3.new(13, 13, 13)
                                                v.Character.HumanoidRootPart.Transparency = 0.4
                                                v.Character.HumanoidRootPart.Color = Color3.fromRGB(77, 0, 0)
                                                v.Character.HumanoidRootPart.Material = "Block"
                                                v.Character.HumanoidRootPart.CanCollide = false
                                                end)
                                                end
                                                end
                                        end
                                    )
                                    wait(5)
                                end
                            end
                        )
                    end
                    if m then
                    else
                        pcall(
                            function()
                                    for i,v in next, game:GetService('Players'):GetPlayers() do
                                        v.Character.HumanoidRootPart.Transparency = 1
                                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                        end
                                        end)
                                    end
                                    wait(0.1)
        end
    })

    Tab:AddSlider({
        Name = "Range",
        Min = 16,
        Max = 25,
        Default = 5,
        Color = Color3.fromRGB(255,255,255),
        Increment = 0.1,
        ValueName = "",
        Callback = function(Value)
            print(Value)
            getgenv().hitboxsl = Value
        end    
    })

    Tab:AddToggle({
        Name = "Hitbox Extender",
        Default = false,
        Callback = function(m)
            print(m)
                    getgenv().hitboxex = m
                    if m then
                        spawn(
                            function()
                                while hitboxex do
                                    wait()
                                    pcall(
                                        function()

                                            for i,v in next, game:GetService('Players'):GetPlayers() do
                                                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                                                pcall(function()
                                                v.Character.HumanoidRootPart.Size = Vector3.new(getgenv().hitboxsl, getgenv().hitboxsl, getgenv().hitboxsl)
                                                v.Character.HumanoidRootPart.Transparency = 0.4
                                                v.Character.HumanoidRootPart.Color = Color3.fromRGB(77, 0, 0)
                                                v.Character.HumanoidRootPart.Material = "Block"
                                                v.Character.HumanoidRootPart.CanCollide = false
                                                end)
                                                end
                                                end
                                        end
                                    )
                                    wait(5)
                                end
                            end
                        )
                    end
                    if m then
                    else
                        pcall(
                            function()
                                    for i,v in next, game:GetService('Players'):GetPlayers() do
                                        v.Character.HumanoidRootPart.Transparency = 1
                                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                        end
                                        end)
                                    end
                                    wait(0.1)
        end
    })

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 120,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		print(Value)
        game:GetService'Workspace'.Camera.FieldOfView = Value
	end    
})

Tab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 65,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(ls)
		print(ls)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = ls
	end    
})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "",
	Callback = function(ls)
		print(ls)
        _G.WS = ls;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
	end    
})

Tab:AddButton({
	Name = "Water Walker (Speed)",
	Callback = function()
      		print("button pressed")
              local function PYLMV_fake_script() -- Walkspeed.LocalScript 
                local script = Instance.new('LocalScript', Walkspeed)
            
                local plr = game.Players.LocalPlayer
                local box = script.Parent
                
                while true do wait()
                    plr.Character.Humanoid.WalkSpeed = 17.8
                end
            end
            coroutine.wrap(PYLMV_fake_script)()
            local function FFTA_fake_script() -- Walkspeed.LocalScript 
                local script = Instance.new('LocalScript', Walkspeed)
            
                local textBox = script.Parent
                function PositiveIntegerMask(text)
                return text:gsub("%D+", "")
                end 
                
                textBox:GetPropertyChangedSignal("Text"):Connect(function()     -- Replace the text with the formatted text:     
                textBox.Text = PositiveIntegerMask(17.8) 
                end)
            end
        end    
})

Tab:AddButton({
	Name = "No Animation",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()
    end
})

Tab:AddToggle({
	Name = "Auto Rebirth When Player Lvl 100",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().rebirth100 = t
        spawn(function()
            while getgenv().rebirth100 == true and wait(0.1) do
                local plr = game.Players.LocalPlayer

                if game:GetService("Players").LocalPlayer.PlayerGui.SecondaryGui.PlayerList.List[plr].LevelLabel.Text == 100 then
                game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
                end
            end
        end)
	end    
})

local Section = Tab:AddSection({
	Name = "Noclip"
})

Tab:AddSlider({
	Name = "Ignore This",
	Min = 8,
	Max = 8,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(te)
		print(te)
        getgenv().speed = te
	end    
})

Tab:AddTextbox({
	Name = "Keybind",
	Default = "",
	TextDisappear = false,
	Callback = function(te)
		print(te)
        getgenv().llave = te
	end	  
})

Tab:AddButton({
	Name = "Noclip",
	Callback = function(te)
      		print("button pressed")
              local plr = game:GetService("Players").LocalPlayer
              local char = plr.Character
              local mouse = game:GetService("Players").LocalPlayer:GetMouse()
              local hum = char:FindFirstChild("HumanoidRootPart")
              mouse.KeyDown:connect(function(key)
                  if key == getgenv().llave  then
                      loop2 = true
                      while loop2 do
                          hum.CFrame = hum.CFrame + hum.CFrame.lookVector * speed
                          wait()
                      end
                  end
              end)
              mouse.KeyUp:connect(function(key)
                  if key == getgenv().llave then
                      loop2 = false
                  end
        end)
    end
})

local Section = Tab:AddSection({
	Name = "Section"
})

Tab:AddButton({
	Name = "Slope Angle",
	Callback = function(t)
      		print("button pressed")
game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle = 89.9
        end    
})

local Tab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Food Name",
	Default = "",
	TextDisappear = false,
	Callback = function(t)
		print(t)
        getgenv().autc = t
	end	  
})

Tab:AddToggle({
	Name = "Eat When Health is 99",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().psac = t
        spawn(function()
            while getgenv().psac == true and wait(2) do
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health< 100 then
                    for i=1, 1 do
                    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(getgenv().autc)
                    wait(2)
                    end
                    end
            end
        end)
	end    
})

local Section = Tab:AddSection({
	Name = "Plant"
})

Tab:AddTextbox({
	Name = "Plant Name",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		print(Value)
        getgenv().autoPlantPlant = Value
	end	  
})

Tab:AddSlider({
	Name = "Magnitude",
	Min = 0,
	Max = 60,
	Default = 8,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(t)
		print(t)
        getgenv().magnitude = t
	end    
})

Tab:AddToggle({
	Name = "Auto Plant",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().planting = t
        spawn(function()
            while getgenv().planting == true and wait(2) do
                for _, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                    if v.Name == "Plant Box" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < getgenv().magnitude then
                        game.ReplicatedStorage.Events.InteractStructure:FireServer(v, getgenv().autoPlantPlant)
                    end
                end
            end
        end)
	end    
})

local Section = Tab:AddSection({
	Name = "Harverest Plant"
})

Tab:AddTextbox({
	Name = "Fruit Name",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getfruit = p
	end	  
})

Tab:AddButton({
	Name = "¿How to use?",
	Callback = function()
      		print("button pressed")
              local function callback(Text) 
                if Text == "Button1 text" then
                  print ("Answer")
                elseif Text == ("Button2 text") then
                 print ("Answer2")
                 end
                end
                
                local NotificationBindable = Instance.new("BindableFunction")
                NotificationBindable.OnInvoke = callback
                --
                game.StarterGui:SetCore("SendNotification",  {
                 Title = "Infinite Reach";
                 Text = "Berry Bush, Jelly Crop, Bloodfruit Bush, Lemon Tree, Blue Bush", "Coconut Tree";
                 Icon = "";
                 Duration = 5;
                 Button1 = "Ok";
                 Button2 = "Ok";
                 Callback = NotificationBindable;
                })
    end
})

local chosenFruit = "Bloodfruit"

Tab:AddSlider({
	Name = "Magnitude",
	Min = 8,
	Max = 60,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(t)
		print(t)
        getgenv().magnitude1 = t
	end    
})

Tab:AddToggle({
	Name = "Harverest Fruit",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().planting = t
        spawn(function()
            while getgenv().planting == true and wait(1) do
                for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == getgenv().getfruit and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < getgenv().magnitude1 then
                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                        
                    end
                end
            end
    end)
end
})

Tab:AddSection({
	Name = "TP Points"
})
_G.SetFarmPos = false 
_G.farmarray = {}
Tab:AddToggle({
	Name = "Rec TP Points",
	Default = false,
	Callback = function(Value)
	     _G.SetFarmPos = Value
	     
	     if _G.SetFarmPos then
	         print("wsp")
	         n = 1
	    _G.farmarray = {}
	     end
	    while _G.SetFarmPos and wait(.5) do
	        print(n)
	    _G.farmarray[n] =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        n = n + 1 
	    end
	end
})
    
Tab:AddToggle({
	Name = "Start TP Points",
	Default = false,
	Callback = function(Value)
		_G.autofarmfruit = Value
		_G.farmarraylength = #(_G.farmarray)
		    print("Farm array length = ", farmarraylength)
		while _G.autofarmfruit and wait() do
for i = 1, _G.farmarraylength do
    if _G.autofarmfruit == false then
        i = 0 
        _G.farmarraylength = 0
    end
    
    print(i)
    print(_G.farmarraylength)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.farmarray[i]
    wait(.8)

end
		end  
  
	end    
})

local Section = Tab:AddSection({
	Name = "DEVIL HUB POSITION"
})

Tab:AddButton({
	Name = "1 Position",
	Callback = function()
      		print("button pressed")
                D = nil
                wait()
                D = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "2 Position",
	Callback = function()
      		print("button pressed")
                E = nil
                wait()
                E = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "3 Position",
	Callback = function()
      		print("button pressed")
                F = nil
                wait()
                F = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "4 Position",
	Callback = function()
      		print("button pressed")
                G = nil
                wait()
                G = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "5 Position",
	Callback = function()
      		print("button pressed")
                H = nil
                wait()
                H = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "6 Position",
	Callback = function()
      		print("button pressed")
                I = nil
                wait()
                I = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "7 Position",
	Callback = function()
      		print("button pressed")
                J = nil
                wait()
                J = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "8 Position",
	Callback = function()
      		print("button pressed")
                K = nil
                wait()
                K = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "9 Position",
	Callback = function()
      		print("button pressed")
                L = nil
                wait()
                L = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "10 Position",
	Callback = function()
      		print("button pressed")
                M = nil
                wait()
                M = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "11 Position",
	Callback = function()
      		print("button pressed")
                N = nil
                wait()
                N = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "12 Position",
	Callback = function()
      		print("button pressed")
                O = nil
                wait()
                O = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "13 Position",
	Callback = function()
      		print("button pressed")
                P = nil
                wait()
                P = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "14 Position",
	Callback = function()
      		print("button pressed")
                Q = nil
                wait()
                Q = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "15 Position",
	Callback = function()
      		print("button pressed")
                R = nil
                wait()
                R = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "16 Position",
	Callback = function()
      		print("button pressed")
                S = nil
                wait()
                S = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "17 Position",
	Callback = function()
      		print("button pressed")
                T = nil
                wait()
                T = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "18 Position",
	Callback = function()
      		print("button pressed")
                U = nil
                wait()
                U = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "19 Position",
	Callback = function()
      		print("button pressed")
                V = nil
                wait()
                V = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "20 Position",
	Callback = function()
      		print("button pressed")
                W = nil
                wait()
                W = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "21 Position",
	Callback = function()
      		print("button pressed")
                X = nil
                wait()
                X = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "22 Position",
	Callback = function()
      		print("button pressed")
                Y = nil
                wait()
                Y = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddButton({
	Name = "23 Position",
	Callback = function()
      		print("button pressed")
                Z = nil
                wait()
                Z = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
})

Tab:AddToggle({
    Name = "Start TP",
    Default = false,
    Callback = function(m)
        print(m)
        getgenv().autotpselectedposv3 = m
        if m then
            spawn(
                function()
                    while autotpselectedposv3 do
                        wait()
                        pcall(
                            function()
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = D
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = E
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = F
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = G
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = H
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = I
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = J
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = K
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = L
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = M
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = O
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = P
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = Q
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = R
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = S
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = T
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = U
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = V
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = W
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = X
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = Y
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                                wait(w)
                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                local u = Z
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                x:Play()
                            end
                        )
                    end
                end
            )
        end
    end
    })

Tab:AddToggle({
	Name = "AFK Auto Lvl",
	Default = false,
	Callback = function(m)
		print(m)
        getgenv().autofarmtreebush = m
        if m then
            spawn(
                function()
                    while autofarmtreebush do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for a5, a6 in pairs(q:GetChildren()) do
                                        for b, c in pairs(a6:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                if
                                                    c.Name:find("Trunk") or c.Name:find("Grass") or
                                                        c.Name:find("Leaves") or
                                                        c.Name:find("Bush")
                                                 then
                                                    if
                                                        not c.Parent:FindFirstChild("Humanoid") and
                                                            c.Parent:FindFirstChild("Health")
                                                     then
                                                        if (n.Position - c.Position).Magnitude < S then
                                                            R = c
                                                            S = (n.Position - c.Position).Magnitude
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                spawn(
                                    function()
                                        while autofarmtreebush do
                                            wait()
                                            pcall(
                                                function()
                                                    local ac = {}
                                                    for b, c in pairs(U.Parent:GetChildren()) do
                                                        if c:IsA("BasePart") then
                                                            table.insert(ac, c)
                                                        end
                                                    end
                                                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                        o.RelativeTime.Value,
                                                        ac
                                                    )
                                                end
                                            )
                                        end
                                    end
                                )
                                local u = U.CFrame + Vector3.new(0, U.Size.Y, 0)
                                local v = 10
                                local w =
                                    math.round(math.abs((n.Position - U.Position).Magnitude)) / tonumber(v)
                                local x =
                                    game:GetService("TweenService"):Create(
                                    n,
                                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                    {CFrame = u}
                                )
                                local bz =
                                    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Subordinates.Notifications
                                if bz:FindFirstChildWhichIsA("TextLabel") then
                                    wait(1)
                                    x:Cancel()
                                    local p = game:GetService("Players")
                                    local n = p.LocalPlayer.Character.HumanoidRootPart
                                    local u = n.CFrame
                                    local v = 1000
                                    local w =
                                        math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                                    local x =
                                        game:GetService("TweenService"):Create(
                                        n,
                                        TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                        {CFrame = u}
                                    )
                                    x:Play()
                                    wait(5)
                                else
                                    wait(1)
                                    x:Play()
                                    wait(1)
                                end
                                wait()
                            end
                        )
                    end
                end
            )
        end
    end
})

local Section = Tab:AddSection({
	Name = "Aura Structures"
})

Tab:AddToggle({
    Name = "Auto Farm All",
    Default = false,
    Callback = function(m)
        print(m)
        getgenv().autosunaura = m
        if m then
            spawn(
                function()
                    while getgenv().autosunaura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find(getgenv().getstructureaura) then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
    })


Tab:AddToggle({
	Name = "Auto Farm Feather Bush",
	Default = false,
	Callback = function(m)
		print(m)
        getgenv().autofeatheraura = m
        if m then
            spawn(
                function()
                    while getgenv().autofeatheraura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find("Feather Bush") then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
})

Tab:AddToggle({
	Name = "Auto Farm Sun Tree",
	Default = false,
	Callback = function(m)
		print(m)
        getgenv().autosunaura = m
        if m then
            spawn(
                function()
                    while getgenv().autosunaura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find("Sun Tree") then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
})

Tab:AddToggle({
	Name = "Auto Farm Gold Node With Ice Chunk",
	Default = false,
	Callback = function(m)
		print(m)
        getgenv().autosunaura = m
        if m then
            spawn(
                function()
                    while getgenv().autosunaura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find("Gold Node") then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
getgenv().autoiceaura = m
        if m then
            spawn(
                function()
                    while getgenv().autoiceaura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find("Ice Chunk") then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
})

Tab:AddToggle({
	Name = "Auto Farm Gold Node",
	Default = false,
	Callback = function(m)
		print(m)
        getgenv().autosunaura = m
        if m then
            spawn(
                function()
                    while getgenv().autosunaura do
                        wait()
                        pcall(
                            function()
                                local p = game:GetService("Players")
                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                local q = game:GetService("Workspace")
                                local o = game:GetService("ReplicatedStorage")
                                function getNear()
                                    local R
                                    local S = math.huge, nil
                                    for b, c in pairs(game.workspace:GetChildren()) do
                                        if c.Name:find("Gold Node") then
                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                if
                                                    not c:FindFirstChild("Humanoid") and
                                                        c:FindFirstChild("Health")
                                                 then
                                                    if
                                                        (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position -
                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    return R
                                end
                                local U = getNear()
                                local ac = {}
                                for b, c in pairs(U.Parent:GetChildren()) do
                                    if c:IsA("BasePart") then
                                        table.insert(ac, c)
                                    end
                                end
                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                    o.RelativeTime.Value,
                                    ac
                                )
                            end
                        )
                    end
                end
            )
        end
    end
    })

    Tab:AddToggle({
        Name = "Auto Farm Old God",
        Default = false,
        Callback = function(m)
            print(m)
            getgenv().autosunaura = m
            if m then
                spawn(
                    function()
                        while getgenv().autosunaura do
                            wait()
                            pcall(
                                function()
                                    local p = game:GetService("Players")
                                    local n = p.LocalPlayer.Character.HumanoidRootPart
                                    local q = game:GetService("Workspace")
                                    local o = game:GetService("ReplicatedStorage")
                                    function getNear()
                                        local R
                                        local S = math.huge, nil
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Old God") then
                                                if c:FindFirstChildWhichIsA("BasePart") then
                                                    if
                                                        not c:FindFirstChild("Humanoid") and
                                                            c:FindFirstChild("Health")
                                                     then
                                                        if
                                                            (n.Position -
                                                                c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                S
                                                         then
                                                            R = c:FindFirstChildWhichIsA("BasePart")
                                                            S =
                                                                (n.Position -
                                                                c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        return R
                                    end
                                    local U = getNear()
                                    local ac = {}
                                    for b, c in pairs(U.Parent:GetChildren()) do
                                        if c:IsA("BasePart") then
                                            table.insert(ac, c)
                                        end
                                    end
                                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                        o.RelativeTime.Value,
                                        ac
                                    )
                                end
                            )
                        end
                    end
                )
            end
        end
        })

        Tab:AddToggle({
            Name = "Auto Farm Hateful God",
            Default = false,
            Callback = function(m)
                print(m)
                getgenv().autosunaura = m
                if m then
                    spawn(
                        function()
                            while getgenv().autosunaura do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            for b, c in pairs(game.workspace:GetChildren()) do
                                                if c.Name:find("Hateful God") then
                                                    if c:FindFirstChildWhichIsA("BasePart") then
                                                        if
                                                            not c:FindFirstChild("Humanoid") and
                                                                c:FindFirstChild("Health")
                                                         then
                                                            if
                                                                (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                    S
                                                             then
                                                                R = c:FindFirstChildWhichIsA("BasePart")
                                                                S =
                                                                    (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local ac = {}
                                        for b, c in pairs(U.Parent:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                table.insert(ac, c)
                                            end
                                        end
                                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                            o.RelativeTime.Value,
                                            ac
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
            })

            Tab:AddToggle({
                Name = "Auto Farm Miserable God",
                Default = false,
                Callback = function(m)
                    print(m)
                    getgenv().autosunaura = m
                    if m then
                        spawn(
                            function()
                                while getgenv().autosunaura do
                                    wait()
                                    pcall(
                                        function()
                                            local p = game:GetService("Players")
                                            local n = p.LocalPlayer.Character.HumanoidRootPart
                                            local q = game:GetService("Workspace")
                                            local o = game:GetService("ReplicatedStorage")
                                            function getNear()
                                                local R
                                                local S = math.huge, nil
                                                for b, c in pairs(game.workspace:GetChildren()) do
                                                    if c.Name:find("Miserable God") then
                                                        if c:FindFirstChildWhichIsA("BasePart") then
                                                            if
                                                                not c:FindFirstChild("Humanoid") and
                                                                    c:FindFirstChild("Health")
                                                             then
                                                                if
                                                                    (n.Position -
                                                                        c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                        S
                                                                 then
                                                                    R = c:FindFirstChildWhichIsA("BasePart")
                                                                    S =
                                                                        (n.Position -
                                                                        c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                                return R
                                            end
                                            local U = getNear()
                                            local ac = {}
                                            for b, c in pairs(U.Parent:GetChildren()) do
                                                if c:IsA("BasePart") then
                                                    table.insert(ac, c)
                                                end
                                            end
                                            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                o.RelativeTime.Value,
                                                ac
                                            )
                                        end
                                    )
                                end
                            end
                        )
                    end
                end
                })

                Tab:AddToggle({
                    Name = "Auto Farm Wealthy God",
                    Default = false,
                    Callback = function(m)
                        print(m)
                        getgenv().autosunaura = m
                        if m then
                            spawn(
                                function()
                                    while getgenv().autosunaura do
                                        wait()
                                        pcall(
                                            function()
                                                local p = game:GetService("Players")
                                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                                local q = game:GetService("Workspace")
                                                local o = game:GetService("ReplicatedStorage")
                                                function getNear()
                                                    local R
                                                    local S = math.huge, nil
                                                    for b, c in pairs(game.workspace:GetChildren()) do
                                                        if c.Name:find("Wealthy God") then
                                                            if c:FindFirstChildWhichIsA("BasePart") then
                                                                if
                                                                    not c:FindFirstChild("Humanoid") and
                                                                        c:FindFirstChild("Health")
                                                                 then
                                                                    if
                                                                        (n.Position -
                                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                            S
                                                                     then
                                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                                        S =
                                                                            (n.Position -
                                                                            c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                    return R
                                                end
                                                local U = getNear()
                                                local ac = {}
                                                for b, c in pairs(U.Parent:GetChildren()) do
                                                    if c:IsA("BasePart") then
                                                        table.insert(ac, c)
                                                    end
                                                end
                                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                    o.RelativeTime.Value,
                                                    ac
                                                )
                                            end
                                        )
                                    end
                                end
                            )
                        end
                    end
                    })

                    Tab:AddToggle({
                        Name = "Auto Farm Ancient Tree",
                        Default = false,
                        Callback = function(m)
                            print(m)
                            getgenv().autosunaura = m
                            if m then
                                spawn(
                                    function()
                                        while getgenv().autosunaura do
                                            wait()
                                            pcall(
                                                function()
                                                    local p = game:GetService("Players")
                                                    local n = p.LocalPlayer.Character.HumanoidRootPart
                                                    local q = game:GetService("Workspace")
                                                    local o = game:GetService("ReplicatedStorage")
                                                    function getNear()
                                                        local R
                                                        local S = math.huge, nil
                                                        for b, c in pairs(game.workspace:GetChildren()) do
                                                            if c.Name:find("Ancient Tree") then
                                                                if c:FindFirstChildWhichIsA("BasePart") then
                                                                    if
                                                                        not c:FindFirstChild("Humanoid") and
                                                                            c:FindFirstChild("Health")
                                                                     then
                                                                        if
                                                                            (n.Position -
                                                                                c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                                S
                                                                         then
                                                                            R = c:FindFirstChildWhichIsA("BasePart")
                                                                            S =
                                                                                (n.Position -
                                                                                c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                        return R
                                                    end
                                                    local U = getNear()
                                                    local ac = {}
                                                    for b, c in pairs(U.Parent:GetChildren()) do
                                                        if c:IsA("BasePart") then
                                                            table.insert(ac, c)
                                                        end
                                                    end
                                                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                        o.RelativeTime.Value,
                                                        ac
                                                    )
                                                end
                                            )
                                        end
                                    end
                                )
                            end
                        end
                        })

local Tab = Window:MakeTab({
Name = "Plant Boxes",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Plant Boxes"
})

Tab:AddButton({
	Name = "1x1",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
  	end    
})

Tab:AddButton({
	Name = "2x2",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 1), 2)
  	end    
})

Tab:AddButton({
	Name = "3x3",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 14), 2)
  	end    
})

Tab:AddButton({
	Name = "4x4",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 21), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 21), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 21), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -2.5, 14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-21, -2.5, 21), 2)
  	end    
})

Tab:AddButton({
	Name = "5x5",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, -7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, -14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-7, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, -7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, -14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-14, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(7, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(7, -2.5, -7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(7, -2.5, -14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(7, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(7, -2.5, 14), 2)

              Remote:FireServer("Plant Box", cframe * CFrame.new(14, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(14, -2.5, -7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(14, -2.5, -14), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(14, -2.5, 7), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(14, -2.5, 14), 2)
  	end    
})

Tab:AddButton({
	Name = "11x7",
	Callback = function()
      		print("button pressed")
              local LocalPlayer = game:GetService("Players").LocalPlayer
              local RootPart = LocalPlayer.Character.HumanoidRootPart
              local cframe = RootPart.CFrame
              local Remote = game:GetService("ReplicatedStorage").Events.PlaceStructure
              
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 43), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 1), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 8), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 15), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 22), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 29), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 36), 2)
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-39, -2.5, 43), 2)
      
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 43), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 1), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 8), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 15), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 22), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 29), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 36), 2)
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, 43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(37, -2.5, 43), 2)
      -- frente sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -43), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -1), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -8), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -15), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-1, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -22), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -29), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -36), 2)
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(-8, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-15, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-23, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-31, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(-39, -2.5, -43), 2)
      
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -43), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -1), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -1), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -8), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -8), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -15), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -15), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(1, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -22), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -22), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -29), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -29), 2)
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -36), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -36), 2)
      
      
              Remote:FireServer("Plant Box", cframe * CFrame.new(6, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(13, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(21, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(29, -2.5, -43), 2)
              Remote:FireServer("Plant Box", cframe * CFrame.new(37, -2.5, -43), 2)
        end    
})

local Tab = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "ESP GUI",
	Callback = function(t)
      		print("button pressed")
              loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua", true))()
        end    
})

Tab:AddToggle({
	Name = "ESP Name",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().nep = m
                if m then
                    spawn(
                        function()
                                pcall(
                                    function()
                                        for i, v in pairs(game.Players:GetPlayers()) do
                                            if not v:FindFirstChildWhichIsA("BillboardGui") then
                                            if v~= game.Players.LocalPlayer then
                                            local ap = Instance.new("BillboardGui", v)
                                            local ep = Instance.new("TextLabel", ap)
                                            ap.Parent = v.Character.Head
                                            ap.Name = v.Name
                                            ap.ResetOnSpawn = false
                                            ap.AlwaysOnTop = true
                                            ap.LightInfluence = 0
                                            ap.Size = UDim2.new(0, 10, 0, 10)
                                            ep.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                            ep.Text = v.Name
                                            ep.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                            ep.BorderSizePixel = 4
                                            ep.BorderColor3 = Color3.new(255, 255, 255)
                                            ep.BorderSizePixel = 0
                                            ep.Font = "Code"
                                            ep.TextSize = 15
                                            ep.TextColor3 = Color3.fromRGB(255, 255, 255)                  
                                            ep.TextStrokeTransparency = 0
                                            ep.TextYAlignment = "Bottom"
                                            end
                                            end
                                    end
                                    end)
                                wait(5)
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v~= game.Players.LocalPlayer then
                                for i, c in pairs(v.Character.Head:GetDescendants()) do
                                if c.Name:find(v.Name) then
                                c:Destroy()
                                end
                                end
                                wait(0.1)
                            end
                        end
                    
                end)
            end
        end
})

Tab:AddToggle({
	Name = "Chams",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().cham = m
                if m then
                    spawn(
                        function()
                            while cham do
                                wait()
                                pcall(
                                    function()
                                        local plr = game.Players.LocalPlayer
                                        local players = game.Players:GetPlayers()

                                        for i, v in pairs(players) do
                                        if v ~= game.Players.LocalPlayer then
                                            if v ~= game.Players.RatatuiHelp then
                                        local esp = Instance.new("Highlight")
                                        esp.Name = "chams"
                                        esp.FillTransparency = 0.5
                                        esp.FillColor = Color3.new(0, 0, 25)
                                        esp.OutlineColor = Color3.new(0, 0, 0)
                                        esp.OutlineTransparency = 0
                                        esp.Parent = v.Character
                                           end
                                        end
                                    end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                                for i, v in pairs(game.Players:GetPlayers()) do
                                    for i, c in pairs(v.Character:GetDescendants()) do
                                    if c.Name == "chams" then
                                    c:Destroy()
                                    end
                                    end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

local Section = Tab:AddSection({
	Name = "Item Esp"
})

Tab:AddToggle({
	Name = "Gold",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Gold") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 176, 0)
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Gold") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Crystal",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Crystal") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(9, 137, 207) 
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Crystal") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Essence",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Essence") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(245, 205, 48)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Essence") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Emerald",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Emerald") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(0, 255, 0)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Emerald") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Void Shard",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Void Shard") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(123, 0, 123)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Void Shard") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Bloodfruit",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Bloodfruit") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(117, 0, 0)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Bloodfruit") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Jelly",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Jelly") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(123, 0, 123)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Jelly") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Iron",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Iron") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(226, 155, 64)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Iron") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Steel",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Steel") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(99, 95, 98)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Steel") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Adurite",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Items:GetChildren()) do
                                            if c.Name:find("Adurite") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(151, 0, 0)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Items:GetChildren()) do
                                    if c.Name:find("Adurite") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

local Section = Tab:AddSection({
	Name = "Old God/ Hatefull God/ Wealthy God/ Miserable God/ Ancient Tree"
})

Tab:AddToggle({
	Name = "Ancient Tree",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godan = m
                if m then
                    spawn(
                        function()
                            while godan do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Ancient Tree" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Ancient Tree" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Old God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Old God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Old God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Hateful God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Hateful God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Hateful God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Sleeping God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Sleeping God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Sleeping God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Wealthy God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Wealthy God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Wealthy God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Miserable God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetDescendants()) do
                                            if c.Name == "Miserable God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name == "Miserable God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

Tab:AddToggle({
	Name = "Lonely God",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Resources:GetDescendants()) do
                                            if c.Name == "Lonely God" then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    local a5 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                    a4.TextYAlignment = "Bottom"
                                                    a5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    while wait() do
                                                    local heal = c.Health.Value
                                                    a5.Text = "[HEALTH:"..heal.."]"
                                                    a5.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a5.BorderSizePixel = 4
                                                    a5.BorderColor3 = Color3.new(255, 255, 255)
                                                    a5.BorderSizePixel = 0
                                                    a5.Font = "GothamBlack"
                                                    a5.TextSize = 15
                                                    a5.TextColor3 = Color3.fromRGB(85, 255, 0)                                                    
                                                    a5.TextStrokeTransparency = 0
                                                    a5.TextYAlignment = "Top"
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Resources:GetChildren()) do
                                    if c.Name == "Lonely God" then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

local Section = Tab:AddSection({
	Name = "Node Esp"
})

Tab:AddToggle({
	Name = "Gold",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Gold") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 176, 0)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Gold") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Crystal",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Crystal") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(9, 137, 207)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Crystal") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Iron",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Iron") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(226, 155, 64)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Iron") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Adurite",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Adurite") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(151, 0, 0)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Adurite") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Stone",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Stone") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(105, 102, 92)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Stone") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Coal",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Coal") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Coal") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

Tab:AddToggle({
	Name = "Ice",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Ice") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                 
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamBlack"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(0, 255, 255)                                                    
                                                    a4.TextStrokeTransparency = 0
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Ice") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
    end
})

local Section = Tab:AddSection({
	Name = "Cham ESP"
})

Tab:AddToggle({
	Name = "Chams",
	Default = false,
	Callback = function(m)
		print(m)
                getgenv().chamgod = m
                if m then
                    spawn(
                        function()
                            while chamgod do
                                wait()
                                pcall(
                                    function()
                                        local plr = game.Players.LocalPlayer
                                        local players = game.Players:GetPlayers()

                                        for i, v in pairs(players) do
                                        if v ~= game.Players.LocalPlayer then
                                        local esp = Instance.new("Highlight")
                                        esp.Name = "chams"
                                        esp.FillTransparency = 0.5
                                        esp.FillColor = Color3.new(239, 184, 56)
                                        esp.OutlineColor = Color3.new(0, 0, 0)
                                        esp.OutlineTransparency = 0
                                        esp.Parent = v.Character["God Chestplate"]
                                           end
                                        end
                                    end)
                                    end
                                wait(5)
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                                for i, v in pairs(game.Players:GetPlayers()) do
                                    for i, c in pairs(v.Character:GetDescendants()) do
                                    if c.Name == "chams" then
                                    c:Destroy()
                                    end
                                    end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Copy Position",
	Callback = function()
      		print("button pressed")
              local copy = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
             setclipboard(tostring(copy))
        end    
})

local Section = Tab:AddSection({
	Name = "Color (Not FE)"
})

Tab:AddButton({
	Name = "Red",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(86, 36, 36)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(86, 36, 36)
    end
})

Tab:AddButton({
	Name = "Gray",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(99, 95, 98)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(99, 95, 98)
    end
})

Tab:AddButton({
	Name = "White",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(237, 234, 234)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(237, 234, 234)
    end
})

Tab:AddButton({
	Name = "Pink",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(255, 152, 220)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(255, 152, 220)
    end
})

Tab:AddButton({
	Name = "Green",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(39, 70, 45)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(39, 70, 45)
    end
})

Tab:AddButton({
	Name = "Blue",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Head.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.RightUpperArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.RightLowerArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftLowerArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftHand.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(128, 187, 219)
              game.Players.LocalPlayer.Character.LeftUpperArm.Color = Color3.fromRGB(128, 187, 219)
    end
})

local Tab = Window:MakeTab({
	Name = "Invisible",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Tool Invisible",
	Callback = function()
      		print("button pressed")
              for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Model") then
                for i, c in pairs(v:GetDescendants()) do
                if c.Name == "Part" then
                c:Destroy()
                end
                end
                end
                end
                end    
})

Tab:AddButton({
	Name = "Bug Firework (first equip firework)",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer.Character.Firework.Part.Mesh:Destroy()
                end    
})


Tab:AddButton({
	Name = "Armor Invisible",
	Callback = function()
      		print("button pressed")
              for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Accessory") then
                for i, d in pairs(v.Handle:GetDescendants()) do
                if d.Name == "AccessoryWeld" then
                d:Destroy()
                end
                end
                end
                end	   
        end    
})

--Void armor invisible (LEG)
--game:GetService("Workspace").LocalPlayer["Void Greaves Left Foot"].Handle.AccessoryWeld:Destroy()
--game:GetService("Workspace").LocalPlayer["Void Greaves Right Foot"].Handle.AccessoryWeld:Destroy()
--game:GetService("Workspace").LocalPlayer["Void Greaves Left Leg"].Handle.AccessoryWeld:Destroy()
--game:GetService("Workspace").LocalPlayer["Void Greaves Right Leg"].Handle.AccessoryWeld:Destroy()

local Tab = Window:MakeTab({
	Name = "Pick Up Whitelist",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Pickup Coins",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().autopickupEssence = t
        if getgenv().autopickupEssence then
            spawn(
                function()
                    while autopickupEssence do
                        wait()
                        pcall(
                            function()
                                local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                local o = game:GetService("ReplicatedStorage")
                                for b, c in pairs(game:GetService("Workspace").ItemDrops:GetChildren()) do
                                    if c:FindFirstChild("Pickup") then
                                        if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                            if c.Name == "Coin2" then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                        c
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                                for b, c in pairs(game:GetService("Workspace").ItemDrops:GetChildren()) do
                                    if c:FindFirstChild("Pickup") then
                                        if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                            if c.Name == "Coin2" then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                        c
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                    end
                end)
        end
    end
})

Tab:AddToggle({
	Name = "Pickup",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().autopickupEssence = t
        if getgenv().autopickupEssence then
            spawn(
                function()
                    while autopickupEssence do
                        wait()
                        pcall(
                            function()
                                local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                local o = game:GetService("ReplicatedStorage")
                                for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                    if c:FindFirstChild("Pickup") then
                                        if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                            if c.Name == getgenv().getitem then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                        c
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                                for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                    if c:FindFirstChild("Pickup") then
                                        if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                            if c.Name == getgenv().getitem1 or c.Name == getgenv().getitem2 or c.Name == getgenv().getitem3 or c.Name == getgenv().getitem4 or c.Name == getgenv().getitem5 or c.Name == getgenv().getitem6 or c.Name == getgenv().getitem7 then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                        c
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                    end
                end)
        end
    end
})


Tab:AddTextbox({
	Name = "Whitelist 1",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem1 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 2",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem2 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 3",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem3 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 4",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem4 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 5",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem5 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 6",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem6 = p
	end	  
})

Tab:AddTextbox({
	Name = "Whitelist 7",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().getitem7 = p
	end	  
})

local Tab = Window:MakeTab({
	Name = "Structures",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSection({
	Name = "Trap Structure"
})

Tab:AddTextbox({
	Name = "Structure Name",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structurename = p
	end	  
})

Tab:AddTextbox({
	Name = "Keybind",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structurekeybind = p
	end	  
})

Tab:AddButton({
	Name = "Wall Trap 4x4",
	Callback = function()
      		print("button pressed")
              game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
                if key == getgenv().structurekeybind then
              local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
              h = game.Players.LocalPlayer.Character.LowerTorso.Position
              local aa = h.x + 13
              local bb = h.y - 2
              local cc = h.z
              local aaa = h.x - 13
              local bbb = h.y - 2
              local ccc = h.z
              local aaaa = h.x
              local bbbb = h.y - 2
              local cccc = h.z + 13
              local aaaaa = h.x
              local bbbbb = h.y - 2
              local ccccc = h.z - 13
              local k_1 = getgenv().structurename
              local k_2 = CFrame.new(aaaa, bbbb, cccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
              local k_3 = 177
              local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
              Event:FireServer(k_1, k_2, k_3)
              local l_1 = getgenv().structurename
              local l_2 = CFrame.new(aaaaa, bbbbb, ccccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
              local l_3 = 177
              local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
              Event:FireServer(l_1, l_2, l_3)
              local m_1 = getgenv().structurename
              local m_2 = CFrame.new(aaa, bbb, ccc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
              local m_3 = 270
              local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
              Event:FireServer(m_1, m_2, m_3)
              local n_1 = getgenv().structurename
              local n_2 = CFrame.new(aa, bb, cc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
              local n_3 = 270
              local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
              Event:FireServer(n_1, n_2, n_3)
        end    
    end)
end
})

Tab:AddToggle({
	Name = "Big Ol' Hut Door Noclip",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().doornoclip = t
        if getgenv().doornoclip then
            spawn(
                function()
                    while doornoclip do
                        wait()
                        pcall(
                            function()
                                for i, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                    if v.Name == "Big Ol' Hut" then
                                    if (v.PrimaryPart.Position - game:GetService("Players").LocalPlayer.Character.UpperTorso.Position).magnitude < 20 then
                                    v.Door.Transparency = 0.4
                                    v.Door.CanCollide = false
                                    for i, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                        if v.Name == "God Hut" then
                                        if (v.PrimaryPart.Position - game:GetService("Players").LocalPlayer.Character.UpperTorso.Position).magnitude < 20 then
                                        v.Door.Transparency = 0.4
                                        v.Door.CanCollide = false
                                        end
                                        end
                                        end
                                    end
                                    end
                                    end
                                end)
                            end
                        end)
                    end
    end
})

Tab:AddToggle({
	Name = "Steal Chest",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().stealchest = t
        if getgenv().stealchest then
            spawn(
                function()
                    while stealchest do
                        wait()
                        pcall(
                            function()
                                for i, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                    if v.Name == "Chest" then
                                    if (v.PrimaryPart.Position - game:GetService("Players").LocalPlayer.Character.UpperTorso.Position).magnitude < 20 then
                                    v.Door.Transparency = 1
                                    v.Door.CanCollide = false
                                    for i, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                        if v.Name == "Reinforced Chest" then
                                        if (v.PrimaryPart.Position - game:GetService("Players").LocalPlayer.Character.UpperTorso.Position).magnitude < 20 then
                                        v.Door.Transparency = 1
                                        v.Door.CanCollide = false
                                        end
                                        end
                                        end
                                    end
                                    end
                                    end
                                end)
                            end
                        end)
                    end
    end
})

Tab:AddToggle({
	Name = "Structure Works only for structures with door",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().stealchest = t
        if getgenv().stealchest then
            spawn(
                function()
                    while stealchest do
                        wait()
                        pcall(
                            function()
                                    for i, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                        if v.Name == getgenv().structure1 or v.Name == getgenv().structure2 or v.Name == getgenv().structure3 or v.Name == getgenv().structure4 or v.Name == getgenv().structure5 or v.Name == getgenv().structure6 or v.Name == getgenv().structure7 then
                                        if (v.PrimaryPart.Position - game:GetService("Players").LocalPlayer.Character.UpperTorso.Position).magnitude < 20 then
                                        v.Door.Transparency = 0.3
                                        v.Door.CanCollide = false
                                        end
                                        end
                                        end
                                end)
                            end
                        end)
                    end
    end
})

Tab:AddTextbox({
	Name = "Structure 1",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure1 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 2",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure2 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 3",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure3 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 4",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure4 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 5",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure5 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 6",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure6 = p
	end	  
})

Tab:AddTextbox({
	Name = "Structure 7",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().structure7 = p
	end	  
})

Tab:AddToggle({
    Name = "Crystal Bridge (Spirit Key Zone)",
    Default = false,
    Callback = function(m)
        print(m)
                getgenv().spir = m
                if m then
                    spawn(
                        function()
                                wait()
                                pcall(
                                    function()
                                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if v.Name == "CrystalBridge" then
                                            v.Transparency = 0
                                            v.CanCollide = true
                                        end
                                    end
                                end)
                                wait(5)
                            end)
                        end
                if m then
                else
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                                if v.Name == "CrystalBridge" then
                            v.Transparency = 1
                            v.CanCollide = false
                                end
                            end
                                wait(0.1)
                        end)
                    end
    end
})

Tab:AddLabel("None ;-;")

local Tab = Window:MakeTab({
	Name = "MOBILE FIX",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Plant"
})

Tab:AddTextbox({
	Name = "Plant Name",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		print(Value)
        getgenv().aua = Value
	end	  
})

Tab:AddToggle({
	Name = "Auto Plant",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().planting2 = t
        spawn(function()
            while getgenv().planting2 == true and wait(2) do
                for _, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                    if v.Name == "Plant Box" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 60 then
                        game.ReplicatedStorage.Events.InteractStructure:FireServer(v, getgenv().aua)
                    end
                end
            end
        end)
	end    
})

local Section = Tab:AddSection({
	Name = "Harverest Plant"
})

local chosenFruit = "Bloodfruit"

Tab:AddTextbox({
	Name = "Bush Name",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        getgenv().bushname = p
	end	  
})

Tab:AddToggle({
	Name = "Harverest Fruit",
	Default = false,
	Callback = function(t)
		print(t)
        getgenv().planting1 = t
        spawn(function()
            while getgenv().planting1 == true and wait(1) do
                for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == getgenv().bushname and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 60 then
                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                        
                    end
                end
            end
    end)
end
})

local Section = Tab:AddSection({
	Name = "Player"
})

Tab:AddTextbox({
	Name = "FOV",
	Default = "70",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        game:GetService'Workspace'.Camera.FieldOfView = p
	end	  
})

Tab:AddTextbox({
	Name = "Jumppower",
	Default = "",
	TextDisappear = false,
	Callback = function(p)
		print(p)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = p
	end	  
})

Tab:AddTextbox({
	Name = "Walkspeed",
	Default = "",
	TextDisappear = false,
	Callback = function(ls)
		print(ls)
        _G.WS = ls;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
	end	  
})
