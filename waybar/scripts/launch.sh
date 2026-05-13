#!/bin/bash

##############
## Reinicio ##
##############

# -- Matas apps iniciadas -- #
pkill waybar
pkill swaync

# -- inicias apps -- #
waybar &
swaync &
