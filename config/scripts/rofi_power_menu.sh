#!/bin/env bash

option=$(printf "Exit\nReboot\nPower off" | rofi -dmenu -p "Power" -theme "$HOME/.config/rofi/themes/power-menu.rasi" -lines 1 -columns 3)

if [ "$option" = "Power off" ]; then
    systemctl poweroff
elif [ "$option" = "Reboot" ]; then
    systemctl reboot
else
    exit 0
fi