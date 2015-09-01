#!/bin/sh

# TODO just one configuration: import or export from i3 config
ws1="1:edit"
ws0="0:communicate"

MAX_WAIT=10

# Taken from https://github.com/fhaun/config-misc/blob/master/i3-stuff/auto-start-for-i3
run_it () {
	"$@" &
	LAST_PID=$!
	for i in `seq $MAX_WAIT`; do
		if xdotool search --pid $LAST_PID; then
			return 0
		fi
		sleep 1
	done

	# FIXME for console_layout
	# xmessage "Error running $@" &
}

# Loads terminals on the edition workspace
console_layout () {
	i3-msg workspace $ws2
	# i3-msg split v
	run_it "$HOME/.i3/shell.sh"
	i3-msg layout tabbed
}

# Loads the editor and a terminal on the edition workspace
edit_layout () {
	i3-msg workspace $ws1
	run_it 'gvim'
}

# Loads the email client on the communication workspace
email_layout () {
	i3-msg workspace $ws0
	run_it 'thunderbird'
	run_it 'kmail'
}

boot_layout () {
	email_layout
	sleep 1
	console_layout
	sleep 1
	# edit_layout
	# sleep 1

	# Focus on communication workspace
	i3-msg workspace $ws0
}


if [ "$1" = 'boot' ]; then
	boot_layout
elif [ "$1" = 'email' ]; then
	email_layout
elif [ "$1" = 'console' ]; then
	console_layout
elif [ "$1" = 'edit' ]; then
	edit_layout
else
	echo "No layout"
fi

exit 0
