local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(11.6600103, 205.824219, -42.1211433, 0.137790278, 0.108140998, -0.984540164, -6.86056012e-09, 0.994021714, 0.10918244, 0.990461409, -0.0150442719, 0.13696652),
    CFrame.new(-37.0021362, 146.871674, 4.81684685, -0.549023032, -0.0468835421, 0.834491253, -8.00619837e-09, 0.998425484, 0.0560937226, -0.835807204, 0.0307967383, -0.548158),
    CFrame.new(0.662204564, 108.750893, -29.827467, 0.434287906, 0.291439831, -0.852324367, -3.02045535e-08, 0.946213245, 0.323543727, 0.900774121, -0.140511096, 0.41092896),
    CFrame.new(-40.1678696, 37.2710114, -42.6948471, -0.492726862, 0.189599618, 0.849277437, -2.50821479e-08, 0.97597456, -0.217884526, -0.870184004, -0.107357584, -0.4808888),
    CFrame.new(22.5703487, -12.1771908, -56.5534554, -0.300039768, 0.0972117707, -0.948960483, 3.7361727e-09, 0.994793952, 0.101906963, 0.953926682, 0.0305761397, -0.298477739),
    CFrame.new(25.0667629, -64.8599243, 16.8686943, 0.0533817187, 0.206718028, -0.976943195, -1.23672423e-08, 0.978338122, 0.20701319, 0.998574197, -0.0110507077, 0.0522253)
}

local delays = {2, 3, 4, 5, 6, 7, 8} 


local function tweenCFrameInOrder()
    for i, cframe in ipairs(cframes) do
        local tweenInfo = TweenInfo.new(delays[i], Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
        local goal = {CFrame = cframe}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait() 
    end
end


tweenCFrameInOrder()
