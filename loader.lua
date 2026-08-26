if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = 'https://raw.githubusercontent.com/kullaniciadin/benim-hub/main/games/'

local games = {
    [18687417158] = 'oyun1.lua',   -- Forsaken
    [142823291]   = 'oyun2.lua',   -- MM2
}

local file = games[game.PlaceId]

if file then
    print("[Loader] Oyun tespit edildi: " .. file)
    loadstring(game:HttpGet(BASE .. file))()
else
    print("[Loader] Bu oyun desteklenmiyor! ID: " .. game.PlaceId)
    game:GetService("Players").LocalPlayer:Kick("Bu oyun desteklenmiyor! ID: " .. game.PlaceId)
end
