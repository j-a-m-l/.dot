# FIXME Changing to one configuration to another too many times is not a good idea...

# Dual monitors
dual_monitor () {
    echo "Dual"
    xrandr --output VGA1 --auto --primary --above LVDS1 --output LVDS1 --auto
}

# External monitor
external_monitor () {
    echo "External"
    xrandr --output VGA1 --auto
    xrandr --output LVDS1 --off
}

# Laptop monitor
laptop_monitor () {
	echo "Laptop"
	xrandr --output LVDS1 --auto
	xrandr --output VGA1 --off
}
