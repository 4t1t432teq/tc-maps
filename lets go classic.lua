local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(-25.2063541, 202.265701, -2.4207952, -0.998736918, -0.0160261784, 0.0476203412, -1.13041265e-08, 0.947767496, 0.318962008, -0.050244756, 0.31855914, -0.946570396),
    CFrame.new(-21.2317009, 145.634552, -37.3668327, 0.991716146, -0.0161767099, 0.127426252, 6.92668145e-09, 0.992038012, 0.125938758, -0.128448963, -0.124895498, 0.983820081),
    CFrame.new(7.76616001, 90.4429016, -2.03735065, -0.995852768, 0.0271349698, -0.0868384838, -3.34397154e-09, 0.95448643, 0.29825443, 0.0909792781, 0.297017515, -0.9505279),
    CFrame.new(-32.8523293, 55.0745163, -42.87677, 0.998219073, -0.0363881551, 0.0472708121, 1.42712171e-08, 0.792413533, 0.609984279, -0.0596542321, -0.608897984, 0.79100233),
    CFrame.new(1.93852055, -20.8375759, 1.18646145, -0.726814985, 0.286989599, -0.624000728, 3.85454957e-09, 0.908518493, 0.417844623, 0.686833262, 0.303695738, -0.66032487),
    CFrame.new(-45.7404251, -70.7337494, -50.6410141, 0.844328344, 0.102793097, 0.525873721, 2.3054767e-08, 0.98142612, -0.19184044, -0.535826087, 0.161976337, 0.828645945)
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
