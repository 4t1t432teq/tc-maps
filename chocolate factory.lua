local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(-33.5546875, 201.06868, -41.9347763, 0.329855263, 0.236714214, 0.913871944, 9.75486469e-10, 0.968052328, -0.250748217, -0.944031537, 0.0827106163, 0.319317162),
    CFrame.new(8.63510418, 161.753448, -42.2237968, 0.300040215, 0.226777256, -0.926578641, -9.30896304e-10, 0.971331179, 0.237730309, 0.953926563, -0.0713286549, 0.291438),
    CFrame.new(2.3062048, 102.896339, 3.77749133, -0.541121662, -0.24303703, 0.805059195, 5.75724179e-09, 0.957327604, 0.289004922, -0.84094429, 0.156386822, -0.518030703),
    CFrame.new(12.7087116, 42.8245201, -42.5932808, 0.997390687, 0.0186808314, -0.0697343722, -3.68819419e-09, 0.965941191, 0.258761644, 0.072193183, -0.258086443, 0.96342074),
    CFrame.new(-33.5022736, -19.5302677, 3.23264313, -0.661312461, -0.188836396, 0.725952268, 1.10293366e-08, 0.967793643, 0.251744747, -0.750110567, 0.166481942, -0.640013993),
    CFrame.new(-13.3227348, -65.1804352, -17.7224579, -0.778462529, -0.237205565, 0.581145108, -2.98019938e-08, 0.925845742, 0.377901733, -0.62769109, 0.294182301, -0.7207362)
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
