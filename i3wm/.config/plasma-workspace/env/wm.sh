# Use i3 as WM instead of KWin
export KDEWM=/usr/bin/i3

# Compositor (Animations, Shadows, Transparency) TODO necessary?
# xcompmgr -C
# compton -cCFb --backend glx --vsync opengl

sh "$HOME/.xinitrc"
