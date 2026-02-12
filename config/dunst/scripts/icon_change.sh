#!/bin/sh

STATE=$(dunstctl is-paused)

if [ "$STATE" = "true" ]; then
    echo "󰂛"   # muted
else
    echo "󰂚"   # active
fi