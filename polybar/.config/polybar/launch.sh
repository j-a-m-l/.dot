#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config="$HOME/.config/polybar/top" top &
polybar --config="$HOME/.config/polybar/right" right &
polybar --config="$HOME/.config/polybar/bottom" bottom &
polybar --config="$HOME/.config/polybar/left" left &

echo "Polybar launched..."
