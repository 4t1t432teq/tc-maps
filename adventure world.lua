local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(-9.74086189, 200.341568, -19.4392376, 0.037693873, -0.0816133022, 0.995950997, -1.942984e-09, 0.996659338, 0.0816713423, -0.999289334, -0.00307851122, 0.0375679508),
    CFrame.new(10.7610207, 139.718384, -45.1300354, -0.312007427, 0.278974444, -0.908198535, 8.62417604e-09, 0.955918312, 0.293632686, 0.950079679, 0.0916155726, -0.298253626),
    CFrame.new(-1.13086712, 101.04882, -54.7227707, 0.707104445, 0.0550239198, -0.704964995, 1.12729861e-08, 0.996967793, 0.0778153315, 0.707109094, -0.0550235733, 0.704960346),
    CFrame.new(-35.1771812, 34.1815681, 4.08697367, -0.745939076, -0.117318414, 0.655599952, 1.60938942e-08, 0.984363317, 0.176150039, -0.666014194, 0.131397203, -0.734275043),
    CFrame.new(10.1576529, -24.0425072, -39.3630753, -0.990023017, 0.00436211051, 0.14083828, -7.82016496e-09, 0.999520719, -0.0309576876, -0.140905812, -0.0306488238, -0.989548504),
    CFrame.new(-37.8066978, -82.021904, 8.08535767, -0.269923985, -0.199329674, 0.942023754, -1.33601725e-08, 0.978338063, 0.207013682, -0.962881625, 0.0558779463, -0.2640769)
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
