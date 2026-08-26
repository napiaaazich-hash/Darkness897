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
    print("[Loader] Game detected: " .. file)
    loadstring(game:HttpGet(BASE .. file))()
else
    print("[Loader] This game is not supported! ID: " .. game.PlaceId)
    game:GetService("Players").LocalPlayer:Kick("This game is not supported! ID: " .. game.PlaceId)
end
