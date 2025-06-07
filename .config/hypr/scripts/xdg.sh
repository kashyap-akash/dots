#!/bin/bash
# Set required environment variables
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=hyprland

# Run waybar
~/.config/waybar/launch.sh
