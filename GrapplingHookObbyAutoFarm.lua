wait(3)
if game.PlaceId == "11634942124" then
	local uis = game:GetService("UserInputService")
local gameworkspace = game:GetService("Workspace")
local tweenservice = game:GetService("TweenService")
local ply = game:GetService("Players").LocalPlayer



local char = ply.Character 
local plygui = ply.PlayerGui
local speed = _G.speed
local chest
local inload



inload = true


coroutine.wrap(function()
	while wait(speed) do
		if ply.Character:FindFirstChild("Humanoid") and ply.Character:FindFirstChild("HumanoidRootPart") then
			if plygui:FindFirstChild("Meanong") and inload == false then
				if chest ~= nil then
					if ply.Character.Humanoid.Health > 0 then
						ply.Character.HumanoidRootPart.CFrame = chest.CFrame
					end
				end
			end
		end
	end
end)()

--- Load ---

if not plygui:FindFirstChild("Meanong") and inload == true then

	local screengui = Instance.new("ScreenGui",plygui)
	screengui.Name = "Meanong"
	screengui.ResetOnSpawn = false
	screengui.Enabled = true
	screengui.IgnoreGuiInset = true
	local framestart = Instance.new("Frame",screengui)
	framestart.Name = "start"
	framestart.AnchorPoint = Vector2.new(0.5,0.5)
	framestart.SizeConstraint = Enum.SizeConstraint.RelativeYY
	framestart.Position = UDim2.new(0.5, 0,0.5, 0)
	framestart.Size = UDim2.new(0, 0,0, 0)
	local framestartuicorner = Instance.new("UICorner",framestart)
	framestartuicorner.CornerRadius = UDim.new(0.25,0)
	local framestartuigradient = Instance.new("UIGradient",framestart)
	framestartuigradient.Color = ColorSequence.new(Color3.fromRGB(30,30,30),Color3.fromRGB(17,17,17))
	framestartuigradient.Rotation = -9
	local framestartuistroke = Instance.new("UIStroke",framestart)
	framestartuistroke.Color = Color3.fromRGB(255,255,255)
	framestartuistroke.Thickness = 3

	tweenservice:Create(framestart,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{Size = UDim2.new(0.5,0,0.25,0)}):Play()

	wait(1)

	local loadbarbg = Instance.new("Frame",framestart)
	local loadbarbguicorner = Instance.new("UICorner",loadbarbg)
	loadbarbguicorner.CornerRadius = UDim.new(10,0)
	local loadbar = Instance.new("Frame",loadbarbg)
	loadbarbg.Name = "loadbarbg"
	loadbarbg.Position = UDim2.new(0.061, 0,0.734, 0)
	loadbarbg.Size = UDim2.new(0.873, 0,0.071, 0)
	local loadbaruicorner = Instance.new("UICorner",loadbar)
	loadbaruicorner.CornerRadius = UDim.new(10,0)

	loadbar.Name = "loadbar"
	loadbar.BackgroundColor3 = Color3.fromRGB(85,255,0)
	loadbar.Position = UDim2.new(0,0,0,0)
	loadbar.Size = UDim2.new(0,0,1,0)

	local image = Instance.new("ImageLabel",framestart)
	image.Name = "image"
	image.BackgroundColor3 = Color3.fromRGB(0,0,0)
	image.Position = UDim2.new(0.093, 0,0.036, 0)
	image.Size = UDim2.new(0.357, 0,0.635, 0)
	image.Image = "http://www.roblox.com/asset/?id=12943536578"
	local imageuicorner = Instance.new("UICorner",image)
	imageuicorner.CornerRadius = UDim.new(0.25,0)
	local loadtext = Instance.new("TextLabel",framestart)
	loadtext.Name = "load"
	loadtext.BackgroundTransparency = 1
	loadtext.Position = UDim2.new(0.357, 0,0.271, 0)
	loadtext.Size = UDim2.new(0.713, 0,0.171, 0)
	loadtext.Text = "Loading."
	loadtext.Font = Enum.Font.SourceSansSemibold
	loadtext.TextColor3 = Color3.fromRGB(255,255,255)
	loadtext.TextScaled = true


	coroutine.wrap(function()
		while wait(.5) do
			if inload == true then
				loadtext.Text = "Loading.."
				wait(.5)
				loadtext.Text = "Loading..."
				wait(.5)
				loadtext.Text = "Loading."
			elseif inload == false then
				loadtext.Text = "Complete"
				break
			end
		end
	end)()


	wait(math.random(1,3))
	if char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart") then
		tweenservice:Create(loadbar,TweenInfo.new(.5,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{Size = UDim2.new(.3,0,1,0)}):Play()
	elseif not char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart") then
		ply:Kick("Can't Loaded Script because not found Humanoid or HumanoidRootPart [M1B]")
	elseif char:FindFirstChild("Humanoid") and char:FindFirstChild("Humanoid").Health <= 0 then
		ply:Kick("Can't Loaded Script because You died [M2B]")
	end
	wait(math.random(3,6))
	if char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart") then
		tweenservice:Create(loadbar,TweenInfo.new(.5,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{Size = UDim2.new(1,0,1,0)}):Play()
		wait(.5)
		inload = false
		wait(1.5)
		tweenservice:Create(framestart,TweenInfo.new(1.5,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{Size = UDim2.new(0,0,0,0)}):Play()
		wait(1.5)
		framestart.BackgroundTransparency = 1
		framestartuistroke:Destroy()
		framestartuigradient:Destroy()
		framestartuicorner:Destroy()
		loadbarbg:Destroy()
		image:Destroy()
		loadtext:Destroy()

		if gameworkspace:FindFirstChild("Level") then
			coroutine.wrap(function()
				for _,v in pairs(gameworkspace:FindFirstChild("Level"):GetChildren()) do
					if v:IsA("Model") then
						if v:FindFirstChild("FinalTrack") then
							if v:FindFirstChild("FinalTrack"):FindFirstChild("Chest") then
								chest = v:FindFirstChild("FinalTrack"):FindFirstChild("Chest")
							end
						end
					end
				end
			end)()
			--[[coroutine.wrap(function()
				while wait(speed) do
					if chest ~= nil then
						char.HumanoidRootPart.CFrame = chest.CFrame
					end
				end
			end)()--]]
		end
	elseif not char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart") then
		ply:Kick("Can't Loaded Script because not found Humanoid or HumanoidRootPart [M1B]")
	elseif char:FindFirstChild("Humanoid") and char:FindFirstChild("Humanoid").Health <= 0 then
		ply:Kick("Can't Loaded Script because You died [M2B]")
	end
else
	ply:Kick("It Script For Grappling Hook Obby [M4B]")
end