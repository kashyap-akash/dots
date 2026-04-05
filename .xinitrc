#!/bin/sh 

# background services
xset -b  # remove annoying notification beep
sxhkd &
dunst &
picom &
dwmblocks &
looknfeel &
nohup syndaemon -i 0.1 -K -R -d >/dev/null 2>&1 &  ## disable touch pad while typing (0.1 seconds)

# start window manager
exec dwm
