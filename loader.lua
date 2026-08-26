if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = 'https://raw.githubusercontent.com/napiaaazich-hash/Darkness897/main/games/'

local games = {
    [18687417158] = 'forsaken.lua',   -- Forsaken
    [142823291]   = 'mm2.lua',        -- MM2
}

local file = games[game.PlaceId]

if file then
    
    local player = game:GetService("Players").LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "LoaderNotification"
    gui.Parent = player:WaitForChild("PlayerGui")
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 120)
    frame.Position = UDim2.new(0.5, -200, 0.5, -60)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.BorderSizePixel = 0
    frame.Parent = gui
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 10)
    title.BackgroundTransparency = 1
    title.Text = "✅ Game Detected!"
    title.TextColor3 = Color3.fromRGB(0, 255, 100)
    title.TextSize = 24
    title.Font = Enum.Font.GothamBold
    title.Parent = frame
    
    local info = Instance.new("TextLabel")
    info.Size = UDim2.new(1, -20, 0, 30)
    info.Position = UDim2.new(0, 10, 0, 55)
    info.BackgroundTransparency = 1
    info.Text = "Loading: " .. file .. " | Game ID: " .. game.PlaceId
    info.TextColor3 = Color3.fromRGB(200, 200, 200)
    info.TextSize = 16
    info.Font = Enum.Font.Gotham
    info.Parent = frame
    
    
    task.spawn(function()
        task.wait(2)
        gui:Destroy()
        print("[Loader] Game detected: " .. file)
        loadstring(game:HttpGet(BASE .. file))()
    end)
else
    
    local player = game:GetService("Players").LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "LoaderNotification"
    gui.Parent = player:WaitForChild("PlayerGui")
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 120)
    frame.Position = UDim2.new(0.5, -200, 0.5, -60)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.BorderSizePixel = 0
    frame.Parent = gui
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 10)
    title.BackgroundTransparency = 1
    title.Text = "❌ Unsupported Game"
    title.TextColor3 = Color3.fromRGB(255, 50, 50)
    title.TextSize = 24
    title.Font = Enum.Font.GothamBold
    title.Parent = frame
    
    local info = Instance.new("TextLabel")
    info.Size = UDim2.new(1, -20, 0, 30)
    info.Position = UDim2.new(0, 10, 0, 55)
    info.BackgroundTransparency = 1
    info.Text = "This game is not supported! ID: " .. game.PlaceId
    info.TextColor3 = Color3.fromRGB(200, 200, 200)
    info.TextSize = 16
    info.Font = Enum.Font.Gotham
    info.Parent = frame
    
    task.spawn(function()
        task.wait(3)
        gui:Destroy()
        game:GetService("Players").LocalPlayer:Kick("This game is not supported! ID: " .. game.PlaceId)
    end)
end
