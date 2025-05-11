local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local cframes = {
    CFrame.new(-10.2132769, 199.226166, -8.1219902, -0.808428943, -0.0670594051, 0.584761202, 4.53187177e-09, 0.99348861, 0.113931559, -0.588593781, 0.0921055749, -0.803164959),
    CFrame.new(-38.7910728, 143.362991, -44.0361633, 0.998842239, 0.00904592406, -0.0472474545, 5.33338795e-09, 0.982160807, 0.188043088, 0.0481056198, -0.187825382, 0.981023669),
    CFrame.new(11.8836851, 88.2386856, -54.1125755, 0.833526313, 0.0960033014, -0.544074714, -8.732707e-09, 0.98478663, 0.173767969, 0.552479804, -0.144840166, 0.82084554),
    CFrame.new(-48.6556511, 33.311367, -6.403409, -0.741070688, 0.0337677076, 0.670577347, -9.86706272e-09, 0.998734534, -0.0502924547, -0.671427011, -0.0372702703, -0.74013286),
    CFrame.new(0.819384873, -25.8790245, 4.14792824, -0.16362384, 0.0767680034, -0.983531356, -9.22589916e-09, 0.996967673, 0.0778167546, 0.986522794, 0.0127326855, -0.16312767),
    CFrame.new(-36.0448837, -82.2799149, -53.9014435, 0.944735765, -0.0149028394, -0.327493846, -1.06392166e-08, 0.998966217, -0.0454586968, 0.327832758, 0.0429464616, 0.94375914)
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
