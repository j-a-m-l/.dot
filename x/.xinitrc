#!/bin/sh

# FIXME
export DOT_HOME="$HOME/dot"

# Keyboard configuration TODO move to @xxxx
sh "$DOT_HOME/x/keyboard/en-US.sh"

# To fix KDE icons TODO which icons?
# export QT_QPA_PLATFORMTHEME="kde"

# Always start with the same volume TODO: only with PulseAudio
pactl set-sink-volume 0 '50%' &

# TODO
# infer_displays

# To adjust brightness, if supported
xbacklight -set 10

# NOTE autostart option doesn't work
redshift-gtk &

# Do not block the process while setting the wallpapers TODO infer path
# ./Code/dot/shell/wallpapers.sh &
