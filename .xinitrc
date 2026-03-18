#!/bin/sh 
#xset -dpms & 
#xset s off &

# background services
sxhkd &
dunst &
picom &
dwmblocks &
looknfeel &
nohup syndaemon -i 0.1 -K -R -d >/dev/null 2>&1 &  

# start window manager
exec dwm
