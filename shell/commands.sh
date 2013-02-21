# FIXME Changing to one configuration to another too many times is not a good idea...

if $(xrandr -q | grep -q 'DVI1 connected'); then
  CURRENT_EXTERNAL_MONITOR='DVI1'
  EXTERNAL_MONITOR_RESOLUTION='1680x1050'
else
  CURRENT_EXTERNAL_MONITOR='VGA1'
  EXTERNAL_MONITOR_RESOLUTION='1920x1080'
fi

# Dual monitors
dual_monitor () {
    echo "Dual: $CURRENT_EXTERNAL_MONITOR and LVDS1"
    xrandr --output $CURRENT_EXTERNAL_MONITOR --mode $EXTERNAL_MONITOR_RESOLUTION --primary --above LVDS1 --output LVDS1 --mode 1280x800
}

# External monitor
external_monitor () {
    echo "External: $CURRENT_EXTERNAL_MONITOR"
	xrandr --output $CURRENT_EXTERNAL_MONITOR --mode $EXTERNAL_MONITOR_RESOLUTION
    xrandr --output LVDS1 --off
}

# Laptop monitor
laptop_monitor () {
	echo "Laptop: LVDS1"
	xrandr --output LVDS1 --mode 1280x800
	xrandr --output $CURRENT_EXTERNAL_MONITOR --off
}
