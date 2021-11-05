local InsertedObjects = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Button = Instance.new("ImageButton")
local BtnText = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient = Instance.new("UIGradient")
local Button_2 = Instance.new("ImageButton")
local BtnText_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIGradient_2 = Instance.new("UIGradient")
local Button_3 = Instance.new("ImageButton")
local BtnText_3 = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIGradient_3 = Instance.new("UIGradient")
local CloseButton = Instance.new("ImageButton")
local UIGradient_4 = Instance.new("UIGradient")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ImageButton = Instance.new("ImageButton")

--Properties:

InsertedObjects.Name = "InsertedObjects"
InsertedObjects.Parent = game.CoreGui
InsertedObjects.ResetOnSpawn = false

ImageLabel.Parent = InsertedObjects
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0285847671, 0, 0.107758954, 0)
ImageLabel.Size = UDim2.new(0, 762, 0, 428)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7871279358"

ScrollingFrame.Parent = ImageLabel
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.394677579, 0, 0.28231135, 0)
ScrollingFrame.Size = UDim2.new(0, 159, 0, 214)
ScrollingFrame.ScrollBarThickness = 9

Button.Name = "Button "
Button.Parent = ScrollingFrame
Button.AnchorPoint = Vector2.new(1, 1)
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.921671569, 0, 0.0705770403, 0)
Button.Size = UDim2.new(0.845915318, 0, 0.187976494, 0)
Button.Image = "rbxassetid://2790382281"
Button.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText.Name = "BtnText"
BtnText.Parent = Button
BtnText.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText.BackgroundTransparency = 1.000
BtnText.BorderSizePixel = 0
BtnText.Position = UDim2.new(0.498592883, 0, 0.550041258, 0)
BtnText.Size = UDim2.new(0.891457498, -5, 0.59266752, -5)
BtnText.Font = Enum.Font.GothamBlack
BtnText.Text = "INFINITE MONEY"
BtnText.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText.TextScaled = true
BtnText.TextSize = 5.000
BtnText.TextWrapped = true

UIAspectRatioConstraint.Parent = Button
UIAspectRatioConstraint.AspectRatio = 3.042

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Offset = Vector2.new(-0.349999994, 0)
UIGradient.Rotation = -135
UIGradient.Parent = Button

Button_2.Name = "Button "
Button_2.Parent = ScrollingFrame
Button_2.AnchorPoint = Vector2.new(1, 1)
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.Position = UDim2.new(0.921671569, 0, 0.131324708, 0)
Button_2.Size = UDim2.new(0.845915318, 0, 0.187976494, 0)
Button_2.Image = "rbxassetid://2790382281"
Button_2.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_2.Name = "BtnText"
BtnText_2.Parent = Button_2
BtnText_2.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.BackgroundTransparency = 1.000
BtnText_2.BorderSizePixel = 0
BtnText_2.Position = UDim2.new(0.498592883, 0, 0.550041258, 0)
BtnText_2.Size = UDim2.new(0.891457498, -5, 0.59266752, -5)
BtnText_2.Font = Enum.Font.GothamBlack
BtnText_2.Text = "RESPAWN"
BtnText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.TextScaled = true
BtnText_2.TextSize = 5.000
BtnText_2.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Button_2
UIAspectRatioConstraint_2.AspectRatio = 3.042

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Offset = Vector2.new(-0.349999994, 0)
UIGradient_2.Rotation = -135
UIGradient_2.Parent = Button_2

Button_3.Name = "Button "
Button_3.Parent = ScrollingFrame
Button_3.AnchorPoint = Vector2.new(1, 1)
Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_3.BackgroundTransparency = 1.000
Button_3.Position = UDim2.new(0.921671569, 0, 0.19090414, 0)
Button_3.Size = UDim2.new(0.845915318, 0, 0.187976494, 0)
Button_3.Image = "rbxassetid://2790382281"
Button_3.ImageColor3 = Color3.fromRGB(26, 190, 190)
Button_3.ScaleType = Enum.ScaleType.Slice
Button_3.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_3.Name = "BtnText"
BtnText_3.Parent = Button_3
BtnText_3.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.BackgroundTransparency = 1.000
BtnText_3.BorderSizePixel = 0
BtnText_3.Position = UDim2.new(0.498592883, 0, 0.550041258, 0)
BtnText_3.Size = UDim2.new(0.891457498, -5, 0.59266752, -5)
BtnText_3.Font = Enum.Font.GothamBlack
BtnText_3.Text = "FLY"
BtnText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.TextScaled = true
BtnText_3.TextSize = 5.000
BtnText_3.TextWrapped = true

UIAspectRatioConstraint_3.Parent = Button_3
UIAspectRatioConstraint_3.AspectRatio = 3.042

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Offset = Vector2.new(-0.349999994, 0)
UIGradient_3.Rotation = -135
UIGradient_3.Parent = Button_3

CloseButton.Name = "CloseButton"
CloseButton.Parent = ImageLabel
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.618228793, 0, 0.105246253, 0)
CloseButton.Size = UDim2.new(0.0624679103, 0, 0.059112791, 0)
CloseButton.Image = "http://www.roblox.com/asset/?id=7400386959"

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 136, 255))}
UIGradient_4.Offset = Vector2.new(-0.349999994, 0)
UIGradient_4.Rotation = -135
UIGradient_4.Parent = CloseButton

UIAspectRatioConstraint_4.Parent = CloseButton
UIAspectRatioConstraint_4.AspectRatio = 2.000

ImageButton.Parent = InsertedObjects
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.416326493, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 123, 0, 60)
ImageButton.Image = "http://www.roblox.com/asset/?id=7529900564"

-- Scripts:

local function BFOGMUE_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	
	local UIS = game:GetService('UserInputService')
	
	local frame = script.Parent
	
	
	
	local dragToggle = nil
	
	local dragSpeed = 0.25
	
	local dragStart = nil
	
	local startPos = nil
	
	
	
	local function updateInput(input)
	
		local delta = input.Position - dragStart
	
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
	
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	
	end
	
	
	
	frame.InputBegan:Connect(function(input)
	
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
	
			dragToggle = true
	
			dragStart = input.Position
	
			startPos = frame.Position
	
			input.Changed:Connect(function()
	
				if input.UserInputState == Enum.UserInputState.End then
	
					dragToggle = false
	
				end
	
			end)
	
		end
	
	end)
	
	
	
	UIS.InputChanged:Connect(function(input)
	
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	
			if dragToggle then
	
				updateInput(input)
	
			end
	
		end
	
	end)
	
	
	
	
end
coroutine.wrap(BFOGMUE_fake_script)()
local function CMETU_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	while true do
		script.Parent.BackgroundColor3 = Color3.new (255, 176, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (0, 255, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (255, 0, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (170, 85, 0)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (106, 57, 9)
		wait(.7)
		script.Parent.BackgroundColor3 = Color3.new (0, 16, 176)
		wait(.7)
	end
end
coroutine.wrap(CMETU_fake_script)()
local function AJQQU_fake_script() -- Button.Button7Script 
	local script = Instance.new('LocalScript', Button)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(AJQQU_fake_script)()
local function HTRQ_fake_script() -- Button.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button)

	
	
	
	script.Parent.MouseButton1Down:connect(function()
	
		game:GetService("ReplicatedStorage").RemoteEvents.PlayerDataRemote:FireServer("IncrementCoin",0)
	
		end)
end
coroutine.wrap(HTRQ_fake_script)()
local function RPYKJI_fake_script() -- Button_2.Button7Script 
	local script = Instance.new('LocalScript', Button_2)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(RPYKJI_fake_script)()
local function FUQUKH_fake_script() -- Button_2.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button_2)

	
	script.Parent.MouseButton1Down:connect(function()
	
		game.Players.LocalPlayer.Character.Head:Destroy()
	end)
	
	
	
	
	
	
end
coroutine.wrap(FUQUKH_fake_script)()
local function TPGSLFA_fake_script() -- Button_3.Button7Script 
	local script = Instance.new('LocalScript', Button_3)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(TPGSLFA_fake_script)()
local function RZOAL_fake_script() -- Button_3.METAB SCRIPT 
	local script = Instance.new('LocalScript', Button_3)

	
	script.Parent.MouseButton1Down:connect(function()
	
		loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
	end)
	
	
	
	
	
	
end
coroutine.wrap(RZOAL_fake_script)()
local function DPZJ_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(DPZJ_fake_script)()
local function CZDFX_fake_script() -- CloseButton.ANIME 
	local script = Instance.new('LocalScript', CloseButton)

	local btn = script.Parent
	local uiGradient = btn:WaitForChild("UIGradient")
	
	local isHovering = false
	
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
	
	local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
	local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
	
	
	btn.MouseEnter:Connect(function()
		
		isHovering = true
		
		gradientAddTween:Play()
	end)
	
	btn.MouseLeave:Connect(function()
		
		isHovering = false
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Down:Connect(function()
		
		gradientRestoreTween:Play()
	end)
	
	btn.MouseButton1Up:Connect(function()
		
		if not isHovering then
			gradientRestoreTween:Play()
		else
			gradientAddTween:Play()
		end
	end)
end
coroutine.wrap(CZDFX_fake_script)()
local function IIILCR_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.ImageLabel.Visible = not script.Parent.Parent.ImageLabel.Visible
	end)
	
end
coroutine.wrap(IIILCR_fake_script)()
