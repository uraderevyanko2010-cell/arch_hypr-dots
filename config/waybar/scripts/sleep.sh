#!/bin/sh

COUNT=$(pgrep -x hypridle | wc -l)

if [ "$COUNT" -eq 0 ]; then
    echo "󰒳"   # disabled / awake
else
    echo "󰒲"   # active
fi
