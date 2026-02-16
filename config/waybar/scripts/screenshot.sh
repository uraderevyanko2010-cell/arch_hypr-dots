#!/bin/env bash

grim -g "$(slurp)" "$HOME/Pictures/$(date +%F_%T)_area.png" 
sleep 0.5
notify-send "Waybar" "Screenshot saved to '~/Pictures'"
