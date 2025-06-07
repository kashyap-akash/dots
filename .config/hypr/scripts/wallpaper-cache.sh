#!/bin/bash
generated_versions="$HOME/.config/hypr/cache/wallpaper-generated"
rm $generated_versions/*
echo ":: Wallpaper cache cleared"
notify-send "Wallpaper cache cleared"
