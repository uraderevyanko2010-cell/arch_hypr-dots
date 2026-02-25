#!/usr/bin/env bash

COUNT=$(pgrep -x hypridle | wc -l)

if [ "$COUNT" -eq 0 ]; then
    hypridle &
    notify-send -t 1500 "Waybar" "hypridle enabled"
else
    pkill -x hypridle
    notify-send -t 1500 "Waybar" "System will be kept awake"
fi
