#!/bin/sh

STATE=$(dunstctl is-paused)

if [ "$STATE" = "true" ]; then
    dunstctl set-paused false
    notify-send -t 1500 "Waybar" "unmuted 󰂚"
else
    notify-send "Waybar" "muted 󰂛"
    sleep 1.5
    dunstctl set-paused true
fi

pkill -RTMIN+10 waybar