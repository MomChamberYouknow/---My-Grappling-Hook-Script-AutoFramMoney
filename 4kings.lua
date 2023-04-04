game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "MaiTemScript";
	Text = "Loading";
	Icon = "rbxassetid://12943536578";
	Duration = 3
})
wait(1.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "MaiTemScript";
	Text = "Checking Map";
	Icon = "rbxassetid://12943536578";
	Duration = 3
})
wait(3)
local uis = game:GetService("UserInputService")
local ply = game:GetService("Players").LocalPlayer
local gameworkspace = game:GetService("Workspace")
local tweenservice = game:GetService("TweenService")


if game.PlaceId == 8279312863 then
	local waittime = math.random(3,6)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "MaiTemScript";
		Text = "Loading Script Map [4kings สายเลือดอาชีวะ [GUN FOR P.BOOM!]]";
		Icon = "rbxassetid://12943536578";
		Duration = waittime
	})
	local char = ply.Character
	local plygui = ply.PlayerGui
	local start = false
	local mouse = ply:GetMouse()
	
	wait(waittime)
	if not plygui:FindFirstChild("MaiTem4Kings") then
		local screengui = Instance.new("ScreenGui",plygui)
		screengui.Name = "MaiTem4Kings"
		screengui.Enabled = true
		screengui.IgnoreGuiInset = true
		screengui.ResetOnSpawn = false
		local mainframe = Instance.new("Frame",screengui)
		mainframe.Name = "mainframe"
		mainframe.AnchorPoint = Vector2.new(0.5,0.5)
		mainframe.SizeConstraint = Enum.SizeConstraint.RelativeYY
		mainframe.BackgroundColor3 = Color3.fromRGB(25,25,25)
		mainframe.Position = UDim2.new(0.5,0,0.5,0)
		mainframe.Size = UDim2.new(0.5,0,0.75,0)
		local mainframeuicorner = Instance.new("UICorner",mainframe)
		mainframeuicorner.CornerRadius = UDim.new(0.05,0)
		local starttext = Instance.new("TextLabel",mainframe)
		starttext.Name = "starttext"
		starttext.AnchorPoint = Vector2.new(0.5,0.5)
		starttext.BackgroundTransparency = 1
		starttext.BorderSizePixel = 0
		starttext.Position = UDim2.new(0.5,0,0.03,0)
		starttext.Size = UDim2.new(0.8,0,0.045,0)
		starttext.ZIndex = 5
		starttext.TextScaled = true
		starttext.Text = "We Are MaiTem"
		starttext.Font = Enum.Font.GothamBold
		starttext.TextColor3 = Color3.fromRGB(255,255,255)
		local starttextuistroke = Instance.new("UIStroke",starttext)
		starttextuistroke.Thickness = 4
		local undermaintext = Instance.new("Frame",mainframe)
		undermaintext.Name = "undermaintext"
		undermaintext.BackgroundColor3 = Color3.fromRGB(255,255,255)
		undermaintext.BorderSizePixel = 0
		undermaintext.Position = UDim2.new(0,0,0.062,0)
		undermaintext.Size = UDim2.new(1,0,0.005,0)
		local listframe = Instance.new("Frame",mainframe)
		listframe.Name = "listframe"
		listframe.BackgroundTransparency = 1
		listframe.Position = UDim2.new(0,0,0.078,0)
		listframe.Size = UDim2.new(1,0,0.922,0)
		local listframeuigridlayout = Instance.new("UIGridLayout",listframe)
		listframeuigridlayout.CellPadding = UDim2.new(0.5,0,0.025,0)
		listframeuigridlayout.CellSize = UDim2.new(1,0,0.075,0)
		local autofarmbutton = Instance.new("TextButton",listframe)
		autofarmbutton.Name = "autofarm"
		autofarmbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
		autofarmbutton.Font = Enum.Font.SourceSansSemibold
		autofarmbutton.Text = "Auto Farm"
		autofarmbutton.TextColor3 = Color3.fromRGB(255,255,255)
		autofarmbutton.TextScaled = true
		local autofarmbuttonuicorner = Instance.new("UICorner",autofarmbutton)
		autofarmbuttonuicorner.CornerRadius = UDim.new(0.5,0)
		local InfiniteJumpbutton = Instance.new("TextButton",listframe)
		InfiniteJumpbutton.Name = "InfiniteJump"
		InfiniteJumpbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
		InfiniteJumpbutton.Font = Enum.Font.SourceSansSemibold
		InfiniteJumpbutton.Text = "InfiniteJump"
		InfiniteJumpbutton.TextColor3 = Color3.fromRGB(255,255,255)
		InfiniteJumpbutton.TextScaled = true
		local InfiniteJumpbuttonuicorner = Instance.new("UICorner",InfiniteJumpbutton)
		InfiniteJumpbuttonuicorner.CornerRadius = UDim.new(0.5,0)
		local bighitbox = Instance.new("TextButton",listframe)
		bighitbox.Name = "bighitbox"
		bighitbox.BackgroundColor3 = Color3.fromRGB(50,50,50)
		bighitbox.Font = Enum.Font.SourceSansSemibold
		bighitbox.Text = "Big Hitbox"
		bighitbox.TextColor3 = Color3.fromRGB(255,255,255)
		bighitbox.TextScaled = true
		local bighitboxuicorner = Instance.new("UICorner",bighitbox)
		bighitboxuicorner.CornerRadius = UDim.new(0.5,0)
		local walkspeed = Instance.new("TextButton",listframe)
		walkspeed.Name = "walkspeed"
		walkspeed.BackgroundColor3 = Color3.fromRGB(50,50,50)
		walkspeed.Font = Enum.Font.SourceSansSemibold
		walkspeed.Text = "Speed Hack"
		walkspeed.TextColor3 = Color3.fromRGB(255,255,255)
		walkspeed.TextScaled = true
		local walkspeeduicorner = Instance.new("UICorner",walkspeed)
		walkspeeduicorner.CornerRadius = UDim.new(0.5,0)
		--[[local autoframesettings = Instance.new("Frame",mainframe)
		autoframesettings.Name = "autoframesettings"
		autoframesettings.BackgroundColor3 = Color3.fromRGB(20,20,20)
		autoframesettings.Position = UDim2.new(1.037,0,0.28,0)
		autoframesettings.Size = UDim2.new(0.51,0,0.39,0)
		autoframesettings.Visible = false
		local autoframesettingsuicorner = Instance.new("UICorner",autoframesettings)
		autoframesettingsuicorner.CornerRadius = UDim.new(0.15,0)
		local autoframeset1 = Instance.new("TextButton",autoframesettings)
		autoframeset1.Name = "set1button"
		autoframeset1.BackgroundColor3 = Color3.fromRGB(0,170,0)
		autoframeset1.Position = UDim2.new(0.378,0,0.098,0)
		autoframeset1.Size = UDim2.new(0.245,0,0.213,0)
		autoframeset1.Font = Enum.Font.SourceSans
		autoframeset1.Text = ""
		local autoframeset1uicorner = Instance.new("UICorner",autoframeset1)
		autoframeset1uicorner.CornerRadius = UDim.new(50,0)
		local autoframeset2 = Instance.new("TextButton",autoframesettings)
		autoframeset2.Name = "set1button"
		autoframeset2.BackgroundColor3 = Color3.fromRGB(0,170,0)
		autoframeset2.Position = UDim2.new(0.378,0,0.512,0)
		autoframeset2.Size = UDim2.new(0.245,0,0.213,0)
		autoframeset2.Font = Enum.Font.SourceSans
		autoframeset2.Text = ""
		local autoframeset2uicorner = Instance.new("UICorner",autoframeset2)
		autoframeset2uicorner.CornerRadius = UDim.new(50,0)
		local autoframeset1text = Instance.new("TextLabel",autoframesettings)
		autoframeset1text.Name = "set1text"
		autoframeset1text.BackgroundTransparency = 1
		autoframeset1text.Position = UDim2.new(0.175,0,0.311,0)
		autoframeset1text.Size = UDim2.new(0.65,0,0.116,0)
		autoframeset1text.Font = Enum.Font.SourceSansSemibold
		autoframeset1text.Text = "Frame Money"
		autoframeset1text.TextColor3 = Color3.fromRGB(255,255,255)
		autoframeset1text.TextScaled = true
		local autoframeset2text = Instance.new("TextLabel",autoframesettings)
		autoframeset2text.Name = "set2text"
		autoframeset2text.BackgroundTransparency = 1
		autoframeset2text.Position = UDim2.new(0.175,0,0.726,0)
		autoframeset2text.Size = UDim2.new(0.65,0,0.116,0)
		autoframeset2text.Font = Enum.Font.SourceSansSemibold
		autoframeset2text.Text = "Frame Coin"
		autoframeset2text.TextColor3 = Color3.fromRGB(255,255,255)
		autoframeset2text.TextScaled = true--]]
		
		--//process\\--
		
		wait(1)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "MaiTemScript";
			Text = "Loading Complete";
			Icon = "rbxassetid://12943536578";
			Duration = waittime
		})
		
		start = true
		local toggleguidb = false
		local toggleguicd = false
		
		
		uis.InputBegan:Connect(function(press,intyping)
			if intyping then return end
			if toggleguidb == false and toggleguicd == false and press.KeyCode == Enum.KeyCode.RightAlt then
				toggleguidb = true
				toggleguicd = true
				screengui.Enabled = false
			elseif toggleguidb == true and toggleguicd == true and press.KeyCode == Enum.KeyCode.RightAlt then
				toggleguidb = false
				screengui.Enabled = true
				delay(.5,function()
					toggleguicd = false	
				end)
			end
		end)
		
		local autofarmuse = false
		local autofarmmoney = true
		local autofarmdb = false
		local autofarmcd = false
		local coins
		local money
		local infinitejumpenabled = false
		local infinitejumpdb = false
		local infinitejumpcd = false
		local bighitboxenabled = false
		local bighitboxdb = false
		local bighitboxcd = false
		local speedhackenabled = false
		local speedhackdb = false
		local speedhackcd = false
		
		--[[local autoframecoin = true
		local autoframemoneydb = true
		local autoframemoneycd = true
		local autoframecoindb = true
		local autoframecoincd = true--]]
		
		--[[autoframeset1.MouseButton1Click:Connect(function()
			if autoframemoneydb == true and autoframemoneycd == true and autoframemoney == true then
				autoframeset1.BackgroundColor3 = Color3.fromRGB(255,0,0)
				autoframemoney = false
				autoframemoneydb = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Autoframe Money Disabled 🔴";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				wait(1)
				autoframemoneycd = false
			elseif autoframemoneydb == false and autoframemoneycd == false and autoframemoney == false then
				autoframeset1.BackgroundColor3 = Color3.fromRGB(0,170,0)
				autoframemoney = true
				autoframemoneydb = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Autoframe Money Enabled 🟢";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				wait(1)
				autoframemoneycd = true
			end
		end)
		
		autoframeset2.MouseButton1Click:Connect(function()
			if autoframecoindb == true and autoframecoincd == true and autoframecoin == true then
				autoframeset2.BackgroundColor3 = Color3.fromRGB(255,0,0)
				autoframecoin = false
				autoframecoindb = false
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Autoframe Coins Disabled 🔴";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				wait(1)
				autoframecoincd = false
			elseif autoframecoindb == false and autoframecoincd == false and autoframecoin == false then
				autoframeset2.BackgroundColor3 = Color3.fromRGB(0,170,0)
				autoframecoin = true
				autoframecoindb = true
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Autoframe Coins Enabled 🟢";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				wait(1)
				autoframecoincd = true
			end
		end)--]]
		
		autofarmbutton.MouseButton1Click:Connect(function()
			if autofarmuse == false and autofarmdb == false and autofarmcd == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Autofarm Money Cooldown Please wait";
					Icon = "rbxassetid://12943536578";
					Duration = 5
				})
			end
		end)
		
		
		autofarmbutton.MouseButton1Click:Connect(function()
			if autofarmuse == false and autofarmdb == false and autofarmcd == false then
				if ply.Character:WaitForChild("Humanoid").Health > 0 then
					local Highlight = Instance.new("Highlight",ply.Character)
					Highlight.Adornee = ply.Character
					Highlight.FillTransparency = 0
					Highlight.FillColor = Color3.fromRGB(0,0,255)
					Highlight.OutlineColor = Color3.fromRGB(255,255,255)
					autofarmbutton.BackgroundColor3 = Color3.fromRGB(0,170,0)
					toggleguidb = true
					delay(1,function()
						toggleguidb = false
						toggleguicd = false	
					end)
					screengui.Enabled = false
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Auto Farm Money Enabled Please Spam [E]";
						Icon = "rbxassetid://12943536578";
						Duration = 5
					})

					autofarmdb = true
					autofarmcd = true
					autofarmuse = true
					if gameworkspace:FindFirstChild("Money") then
						coroutine.wrap(function()
							while wait(2) do
								if autofarmuse == true then
									if not ply.Character:FindFirstChild("Highlight") then
										local Highlight = Instance.new("Highlight",ply.Character)
										Highlight.Adornee = ply.Character
										Highlight.FillTransparency = 0
										Highlight.FillColor = Color3.fromRGB(0,0,255)
										Highlight.OutlineColor = Color3.fromRGB(255,255,255)
									end
									money = gameworkspace:FindFirstChild("Money")
									coroutine.wrap(function()
										for _,v in pairs(gameworkspace:GetChildren()) do
											if v.Name == "Money" or v.Name == "Coin" then
												if v:FindFirstChild("ProximityPrompt") then
													v:FindFirstChild("ProximityPrompt").HoldDuration = 0
													v:FindFirstChild("ProximityPrompt").MaxActivationDistance = 100
												end
											end
										end
									end)()
									if money:FindFirstChild("ProximityPrompt") then
										ply.Character:WaitForChild("HumanoidRootPart").CFrame = money.CFrame
										money = nil
									end
								end
							end
						end)()
					end
				end
			end
		end)
		autofarmbutton.MouseButton1Click:Connect(function()
			if autofarmuse == true and autofarmdb == true and autofarmcd == true then
				if ply.Character:WaitForChild("Humanoid").Health > 0 or ply.Character:WaitForChild("Humanoid").Health < 1 then
					autofarmbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
					money = nil
					autofarmdb = false
					autofarmuse = false
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Auto Farm Money Disabled";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Reset Character In 3s";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					
					wait(1)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Reset Character In 2s";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					wait(1)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Reset Character In 1s";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					
					wait(1)
					
					ply.Character:WaitForChild("Humanoid").Health = 0

					wait(10)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Complete,You can Use Autofarm Money Again";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					autofarmcd = false
				end
			end
		end)
		
		InfiniteJumpbutton.MouseButton1Click:Connect(function()
			if infinitejumpenabled == false and infinitejumpcd == false and infinitejumpdb == false then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "InfiniteJump Enabled";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				InfiniteJumpbutton.BackgroundColor3 = Color3.fromRGB(0,170,0)
				infinitejumpenabled = true
				infinitejumpcd = true
				infinitejumpdb = true 
				
				game:GetService("UserInputService").JumpRequest:connect(function()
					if infinitejumpenabled then
						game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
					end
				end)
			elseif infinitejumpenabled == true and infinitejumpcd == true and infinitejumpdb == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "InfiniteJump Disabled";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				InfiniteJumpbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
				infinitejumpenabled = false
				infinitejumpdb = false
				wait(3)
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "InfiniteJump Cooldown Complete";
					Icon = "rbxassetid://12943536578";
					Duration = 3
				})
				infinitejumpcd = false
			end
		end)
		
		bighitbox.MouseButton1Click:Connect(function()
			if bighitboxenabled == false and bighitboxdb == false and bighitboxcd == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Big Hitbox Cooldown Please wait";
					Icon = "rbxassetid://12943536578";
					Duration = 5
				})
			end
		end)


		bighitbox.MouseButton1Click:Connect(function()
			if bighitboxenabled == false and bighitboxdb == false and bighitboxcd == false then
				if ply.Character:WaitForChild("Humanoid").Health > 0 then
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Big Hitbox Enabled";
						Icon = "rbxassetid://12943536578";
						Duration = 5
					})
					bighitbox.BackgroundColor3 = Color3.fromRGB(0,170,0)
					bighitboxenabled = true
					bighitboxdb = true
					bighitboxcd = true
					
					game:GetService("RunService").RenderStepped:connect(function()
						if bighitboxenabled == true then
							for i,v in next, game:GetService("Players"):GetPlayers() do
								if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Team ~= ply.Team then
									pcall(function()
										if not v.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Highlight") then
											local Highlight = Instance.new("Highlight",v.Character:WaitForChild("HumanoidRootPart"))
											Highlight.Adornee = v.Character:WaitForChild("HumanoidRootPart")
											Highlight.FillTransparency = 0.7
											Highlight.FillColor = Color3.fromRGB(255,0,0)
											Highlight.OutlineColor = Color3.fromRGB(255,255,255)
										end
										v.Character.HumanoidRootPart.Size = Vector3.new(20,20,20)
										v.Character.HumanoidRootPart.Transparency = _G.HitboxTransparency
										v.Character.HumanoidRootPart.Color = BrickColor.new("Really red")
										v.Character.HumanoidRootPart.Material = "Neon"
										v.Character.HumanoidRootPart.CanCollide = false
									end)
								end
							end
						end
					end)
					
				end
			end
		end)
		bighitbox.MouseButton1Click:Connect(function()
			if bighitboxenabled == true and bighitboxdb == true and bighitboxcd == true then
				if ply.Character:WaitForChild("Humanoid").Health > 0 or ply.Character:WaitForChild("Humanoid").Health < 1 then
					bighitbox.BackgroundColor3 = Color3.fromRGB(50,50,50)
					bighitboxenabled = false
					bighitboxdb = false
					coroutine.wrap(function()
						for i,v in next, game:GetService("Players"):GetPlayers() do
							if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Team ~= ply.Team then
								pcall(function()
									if v.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Highlight") then
										v.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Highlight"):Destroy()
									end
									v.Character.HumanoidRootPart.Size = ply.Character:WaitForChild("HumanoidRootPart").Size
									v.Character.HumanoidRootPart.Transparency = ply.Character:WaitForChild("HumanoidRootPart").Transparency
									v.Character.HumanoidRootPart.Color3 = Color3.fromRGB(255,0,0)
									v.Character.HumanoidRootPart.Material = "Neon"
									v.Character.HumanoidRootPart.CanCollide = false
								end)
							end
						end
					end)()
					wait(5)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Complete,You can Use Big Hitbox Again";
						Icon = "rbxassetid://12943536578";
						Duration = 3
					})
					bighitboxcd = false
				end
			end
		end)
		
		walkspeed.MouseButton1Click:Connect(function()
			if speedhackenabled == false and speedhackdb == false and speedhackcd == true then
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "MaiTemScript";
					Text = "Speed Hack Cooldown Please wait";
					Icon = "rbxassetid://12943536578";
					Duration = 5
				})
			end
		end)


		walkspeed.MouseButton1Click:Connect(function()
			if speedhackenabled == false and speedhackdb == false and speedhackcd == false then
				if ply.Character:WaitForChild("Humanoid").Health > 0 then
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Speed Hack Enabled";
						Icon = "rbxassetid://12943536578";
						Duration = 5
					})
					walkspeed.BackgroundColor3 = Color3.fromRGB(0,170,0)
					speedhackenabled = true
					speedhackdb = true
					speedhackcd = true

					coroutine.wrap(function()
						while wait() do
							if speedhackenabled == true then
								ply.Character:WaitForChild("Humanoid").WalkSpeed = _G.SpeedHack
							end
						end
					end)()

				end
			end
		end)
		
		walkspeed.MouseButton1Click:Connect(function()
			if speedhackenabled == true and speedhackdb == true and speedhackcd == true then
				if ply.Character:WaitForChild("Humanoid").Health > 0 or ply.Character:WaitForChild("Humanoid").Health < 1 then
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "MaiTemScript";
						Text = "Speed Hack Disabled";
						Icon = "rbxassetid://12943536578";
						Duration = 5
					})
					walkspeed.BackgroundColor3 = Color3.fromRGB(50,50,50)
					speedhackenabled = false
					speedhackdb = false
					
					wait(3)
					speedhackcd = false

				end
			end
		end)
		
	end
else
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "MaiTemScript";
		Text = "Loading Failed";
		Icon = "rbxassetid://12943536578";
		Duration = 5
	})
	wait(1)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "MaiTemScript";
		Text = "Kicked in 3 secord";
		Icon = "rbxassetid://12943536578";
		Duration = 5
	})
	wait(3)
	ply:Kick("This Script Work in Map [4kings สายเลือดอาชีวะ [GUN FOR P.BOOM!]] Error:[M4B]")
end