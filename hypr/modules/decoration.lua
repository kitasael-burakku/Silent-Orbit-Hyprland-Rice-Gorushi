-- ________                                    __  .__               
-- \______ \   ____   ____  ________________ _/  |_|__| ____   ____  
--  |    |  \_/ __ \_/ ___\/  _ \_  __ \__  \\   __\  |/  _ \ /    \ 
--  |    `   \  ___/\  \__(  <_> )  | \// __ \|  | |  (  <_> )   |  \
-- /_______  /\___  >\___  >____/|__|  (____  /__| |__|\____/|___|  /
--         \/     \/     \/                 \/                    \/ 

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 2,
        gaps_out = 5,

        border_size = 1,

        col = {
            active_border   = "rgba(DDDDDDff)",
            inactive_border = "rgba(1a1a1aff)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 20,
        rounding_power = 4,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.85,
        inactive_opacity = 0.75,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 2,
            passes    = 4,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})