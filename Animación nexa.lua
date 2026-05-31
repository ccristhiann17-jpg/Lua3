local Animaciones = {
    ["Zombie Animation Pack"] = 80,
    ["Paquete de animaciones de zombi"] = 80,
    ["Paquete de animaciones de robot"] = 82,
    ["Paquete de animaciones de la vieja escuela"] = 667,
    ["Paquete de animaciones de estilos"] = 83,
    ["Paquete de animaciones de cómics"] = 56,
    ["Catwalk Glam Animation Pack por e.l.f"] = 1601900,
    ["Paquete de Animación Deportiva adidas"] = 427999,
    ["Paquete de Animación Amazon Unboxed"] = 4164795,
    ["No Boundaries Animation Pack por Walmart"] = 455003,
    ["Paquete de animación en negrita de e.l.f"] = 331856,
    ["Paquete de animaciones de mago"] = 63,
    ["Paquete de animaciones de juguete"] = 43,
    ["Paquete de Animación de la Comunidad adidas"] = 2623795,
    ["Paquete de animación de aura adidas"] = 4294795
}

local function cargarAnimacion(nombre)
    local id = Animaciones[nombre]
    if not id then
        warn("Animación no encontrada: " .. nombre)
        return nil
    end

    local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then
        warn("Humanoid no encontrado")
        return nil
    end

    local animator = humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        animator = Instance.new("Animator")
        animator.Parent = humanoid
    end

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. id
    local track = animator:LoadAnimation(animation)
    return track
end

local function reproducirAnimacion(nombre, looped)
    local track = cargarAnimacion(nombre)
    if track then
        track.Looped = looped or false
        track:Play()
    end
end

local function crearMenu()
    -- Crear ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "MenuAnimaciones"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Crear marco para el menú
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 400)
    frame.Position = UDim2.new(0.5, -150, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.Parent = screenGui

    -- Crear encabezado
    local header = Instance.new("TextLabel")
    header.Text = "MEXA HUB by cristhian"
    header.Size = UDim2.new(1, 0, 0, 50)
    header.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    header.TextColor3 = Color3.new(1, 1, 1)
    header.Font = Enum.Font.SourceSansBold
    header.TextSize = 24
    header.Parent = frame

    -- Crear lista de botones para cada animación
    local yOffset = 60
    for nombre, _ in pairs(Animaciones) do
        local btn = Instance.new("TextButton")
        btn.Text = nombre
        btn.Size = UDim2.new(1, -20, 0, 30)
        btn.Position = UDim2.new(0, 10, 0, yOffset)
        btn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.SourceSans
        btn.TextSize = 14
        btn.Parent = frame

        -- Conectar evento para reproducir la animación al hacer clic
        btn.MouseButton1Click:Connect(function()
            reproducirAnimacion(nombre, true)
        end)

        yOffset = yOffset + 40
    end
end

-- Ejecutar el menú
crearMenu()
