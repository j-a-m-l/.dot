#!/bin/bash

# Original i3 thread: https://faq.i3wm.org/question/150/how-to-launch-a-terminal-from-here/?answer=152#post-id-152
 
CMD='gnome-terminal --zoom=2.0'
CWD=''
 
# Short way of getting the PID
PID=$(xdotool getactivewindow getwindowpid)
WID=$(xdotool getactivewindow)

# Get the REAL id of the window
REAL_PID=$(python $HOME/.i3/shell.py --wid $WID --pid $PID)

echo $PID > /tmp/i3shell 
echo $WID >> /tmp/i3shell 
echo $REAL_PID >> /tmp/i3shell 
 
# Get last child process (shell, vim, etc)
if [ -n "$REAL_PID" ]; then
	echo -e "REAL: $REAL_PID" >> /tmp/i3shell 

	if [ -e "/proc/$REAL_PID/cwd" ]; then
	  CWD=$(readlink /proc/$REAL_PID/cwd)
	fi
fi

echo $CWD >> /tmp/i3shell 

# If we find the working directory, run the command in that directory
if [ -n "$CWD" ]; then
  cd $CWD && $CMD
else
  $CMD
fi 

exit 0
