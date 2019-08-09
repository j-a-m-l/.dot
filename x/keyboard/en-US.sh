#!/bin/sh

# English (US) international with AltGr
#  - Control insteaf of Caps Lock
#  - Both Shift to enable Caps Lock, 1 to disable it
# More options on `/usr/share/X11/xkb/rules/base.lst`
setxkbmap \
	-layout us \
	-variant altgr-intl \
	-option caps:ctrl_modifier \
	-option shift:both_capslock_cancel
