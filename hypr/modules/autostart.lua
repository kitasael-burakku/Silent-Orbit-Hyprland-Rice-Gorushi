--    _____          __                  __                 __   
--   /  _  \  __ ___/  |_  ____  _______/  |______ ________/  |_ 
--  /  /_\  \|  |  \   __\/  _ \/  ___/\   __\__  \\_  __ \   __\
-- /    |    \  |  /|  | (  <_> )___ \  |  |  / __ \|  | \/|  |  
-- \____|__  /____/ |__|  \____/____  > |__| (____  /__|   |__|  
--         \/                       \/            \/             

hl.on("hyprland.start", function()
    -- Fondo de pantalla (Asegúrate de que la ruta sea exacta)
    hl.exec_cmd("mpvpaper -o '--loop-file=inf --no-audio' '*' /home/kitasa-elburakku/Wallpapers/Rain.mp4 &")
    
    -- Entorno
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- UI y Daemons (Agregando & para que no bloqueen el hilo)
    hl.exec_cmd("hyprctl setcursor Colloid-cursors 20")
    hl.exec_cmd("/home/kitasa-elburakku/.config/waybar/scripts/launch.sh &")
    hl.exec_cmd("swaync &")
    hl.exec_cmd("hypridle &")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1 &")

    -- Clipboard
    hl.exec_cmd("wl-paste --type text --watch cliphist store &")
    hl.exec_cmd("wl-paste --type image --watch cliphist store &")
end)