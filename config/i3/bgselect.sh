#!/bin/sh
walldir=$HOME/Pictures/wall
image=$(ls "$walldir" | rofi -dmenu)
if [ "$?" -eq 0 ]; then
	feh --bg-fill "$walldir/$image"
fi
