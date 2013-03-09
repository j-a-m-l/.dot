#!/bin/sh

setxkbmap -layout us -variant altgr-intl

# Die Caps Lock!
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"
