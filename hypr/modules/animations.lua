--    _____         .__                __  .__                      
--   /  _  \   ____ |__| _____ _____ _/  |_|__| ____   ____   ______
--  /  /_\  \ /    \|  |/     \\__  \\   __\  |/  _ \ /    \ /  ___/
-- /    |    \   |  \  |  Y Y  \/ __ \|  | |  (  <_> )   |  \\___ \ 
-- \____|__  /___|  /__|__|_|  (____  /__| |__|\____/|___|  /____  >
--         \/     \/         \/     \/                    \/     \/ 

-- Curvas Recuperadas (Bézier)
hl.curve("decel",       { type = "bezier", points = { {0.05, 0.7}, {0.1, 1.0} } })
hl.curve("quick",       { type = "bezier", points = { {0.15, 0},   {0.1, 1}   } })
hl.curve("softBounce",  { type = "bezier", points = { {0.1, 1.1},  {0.2, 1.0} } })

-- Curvas Nuevas (Springs & Beziers)
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5}, {0.75, 1} } })

-- Configuración de Animaciones
hl.animation({ leaf = "global",     enabled = true, speed = 10,  bezier = "decel" })

-- Ventanas: Mezclamos tu SoftBounce con la velocidad reactiva que tenías
hl.animation({ leaf = "windows",    enabled = true, speed = 2.8, spring = "easy" })
hl.animation({ leaf = "windowsIn",  enabled = true, speed = 2.5, bezier = "decel",      style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "quick",      style = "popin 85%" })
hl.animation({ leaf = "windowsMove",enabled = true, speed = 2.5, spring = "easy" })

-- Fades: Mantenemos tu estilo de 2.0s para máxima respuesta
hl.animation({ leaf = "fadeIn",     enabled = true, speed = 2.0, bezier = "decel" })
hl.animation({ leaf = "fadeOut",    enabled = true, speed = 1.8, bezier = "decel" })
hl.animation({ leaf = "fade",       enabled = true, speed = 2.0, bezier = "decel" })

-- Capas (Waybar, Rofi): Usamos tu estilo elegante de slidefade
hl.animation({ leaf = "layers",     enabled = true, speed = 2.5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",   enabled = true, speed = 2.5, bezier = "decel",      style = "fade" })
hl.animation({ leaf = "layersOut",  enabled = true, speed = 1.8, bezier = "quick",      style = "fade" })

-- Workspaces: El "SoftBounce" en los workspaces es tu firma personal
hl.animation({ leaf = "workspaces",    enabled = true, speed = 2.5, bezier = "softBounce", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 2.5, bezier = "softBounce", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.0, bezier = "quick",      style = "slide" })

-- Bordes y Varios
hl.animation({ leaf = "border",      enabled = true, speed = 5.0, bezier = "decel" })
hl.animation({ leaf = "zoomFactor",  enabled = true, speed = 7.0, bezier = "quick" })