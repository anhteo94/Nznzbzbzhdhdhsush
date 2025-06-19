repeat wait() until game:IsLoaded()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Phạm Nghĩa IOS",
    Text = "Đang tải script...",
    Duration = 3
})

local ok, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXoE"))()
end)
if not ok then
    warn("Không tải được bản Min:", err)
end

spawn(function()
    wait(7)
    for _, v in pairs(game.CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") and (v.Text:find("Min") or v.Text:find("Gaming")) then
            v.Text = "Phạm Nghĩa IOS"
        end
        if v:IsA("ImageLabel") then
            pcall(function() v.Image = "https://i.imgur.com/JrgPMTO.jpeg" end)
        end
    end
end)
