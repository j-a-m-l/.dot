#!/bin/sh

# To be sure that monitors are ready
sleep 12

# Wallpapers TODO wait until the session has already started
nitrogen --restore


# Set background
# feh --bg-fill $1 &


# https://userbase.kde.org/KDE_System_Administration/PlasmaDesktopScripting#Wallpaper_Plugins
# To run an interactive editor:
# qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.showInteractiveConsole

# dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
# var allDesktops = desktops();
#
# for (i = 0; i < allDesktops.length; i++) {
#   d = allDesktops[i];
# 	
#   print("d" + i)
#   print(d)
#   
#   d.wallpaperPlugin = "org.kde.image";
#   d.currentConfigGroup = Array("Wallpaper",
# 							   "org.kde.image",
# 							   "General");
#   var file = "file:///home/user/Pictures/"+ i +".jpg"
#   print(file)
#   // Config is wrriten to ~/.config/plasma-org.kde.plasma.desktop-appletsrc
#   d.writeConfig("Image", file);
# }
# }'
