#!/bin/bash

current=$(light -G | awk '{print int($1+0.5)}')

# Nerd Font icons (󰃜, 󰃛, 󰃚, 󰃙, 󰃘, 󰛨, 󰫃, 󰫄)
if [ "$current" -lt 20 ]; then
    icon="󰃜"      # Crescent Moon
elif [ "$current" -lt 40 ]; then
    icon="󰃛"      # Half Moon
elif [ "$current" -lt 60 ]; then
    icon="󰃚"      # Low Sun
elif [ "$current" -lt 80 ]; then
    icon="󰓠"      # Mid Sun
else
    icon="󰓠"      # Full Sun (Brightest)
fi

echo "$icon $current%"
