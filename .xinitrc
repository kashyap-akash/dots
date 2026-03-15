#!/bin/sh 
#xset -dpms & 
#xset s off &
# resolution setup
xrandr --newmode "1920x800_144.00" 356.50 1920 2080 2288 2656 800 803 813 931 -hsync +vsync 2>/dev/null
xrandr --addmode eDP-1 "1920x800_144.00" 2>/dev/null

# background services
sxhkd &
dunst &
picom &
dwmblocks &
looknfeel &

# start window manager
exec dwm
#awesome
