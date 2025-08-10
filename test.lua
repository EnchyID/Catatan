-- Dapatkan TextButton
local button = script.Parent.TextButton

-- Variabel untuk menyimpan status tembus tembok
local isNoClip = false

-- Fungsi untuk mengaktifkan atau menonaktifkan tembus tembok
local function toggleNoClip()
  isNoClip = not isNoClip
  if isNoClip then
    -- Aktifkan tembus tembok
    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
      if child:IsA("BasePart") then
        child.CanCollide = false
      end
    end
    button.Text = "Tembus Tembok: On"
  else
    -- Nonaktifkan tembus tembok
    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
      if child:IsA("BasePart") then
        child.CanCollide = true
      end
    end
    button.Text = "Tembus Tembok: Off"
  end
end

-- Dengarkan event ketika button ditekan
button.MouseButton1Click:Connect(toggleNoClip)
