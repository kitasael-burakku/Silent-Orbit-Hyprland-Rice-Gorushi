#!/bin/bash

# Si ya existe una instancia de wlogout, la cierra y sale del script
if pgrep -x "wlogout" > /dev/null
then
    pkill wlogout
    exit 0
fi

# Si no está abierto, lo lanza con tu configuración
wlogout -l ~/.config/wlogout/layout -C ~/.config/wlogout/style.css &