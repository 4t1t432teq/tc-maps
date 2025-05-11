local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(14.6086922, 199.760666, -18.035181, 0.187381133, -0.0124147609, 0.982208848, 7.11426651e-09, 0.99992013, 0.0126386238, -0.982287288, -0.0023682327, 0.187366173),
    CFrame.new(-20.7372265, 144.524246, -18.1106892, 0.0439677797, -0.216260433, 0.975345194, -7.38929007e-09, 0.976289332, 0.21646978, -0.999032974, -0.00951770227, 0.0429252721),
    CFrame.new(21.635622, 76.5777512, 3.94333148, 0.920232117, 0.0413891822, 0.389178395, -1.62937877e-08, 0.994392335, -0.105753742, -0.391373098, 0.0973179787, 0.915071726),
    CFrame.new(-37.405014, 29.9746056, -31.521265, 0.673012555, 0.0318369456, 0.738945544, 9.25854859e-09, 0.999073148, -0.0430443697, -0.739631057, 0.0289694089, 0.672388792),
    CFrame.new(13.4077253, -22.1980476, -22.0848007, 0.0502447262, 0.166406825, -0.984776258, 7.19707449e-09, 0.986021638, 0.166617274, 0.998736918, -0.00837164652, 0.0495423861),
    CFrame.new(-49.3329506, -78.3419266, -19.1362438, 0.00628274214, 0.064781554, 0.997879684, -8.86601903e-09, 0.997899413, -0.0647828355, -0.999980271, 0.000407004991, 0.00626954483)
}

local delays = {2, 3, 4, 5, 6, 7, 8} 


local function tweenCFrame()
    for i, cframe in ipairs(cframes) do
        local tweenInfo = TweenInfo.new(delays[i], Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
        local goal = {CFrame = cframe}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait() 
    end
end


tweenCFrame()
