-- MEXA HUB by cristhian

-- LocalScript: Gestor de Animaciones

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

    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then
        warn("Humanoid no encontrado")
        return nil
    end

    local animator = humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        animator = Instance.new("Animator", humanoid)
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

-- Ejemplo: reproducir una animación específica
-- Reemplaza el nombre para cargar y reproducir otra
reproducirAnimacion("Paquete de animaciones de robot", true)
