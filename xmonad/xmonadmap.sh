#!/bin/sh

setxkbmap -layout us -variant altgr-intl

# Die Caps Lock!
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"
# Exchange Left Alt and Win
xmodmap -e "remove mod1 = Alt_L"
xmodmap -e "remove mod4 = Super_L"
xmodmap -e "add mod1 = Super_L"
xmodmap -e "add mod4 = Alt_L"
