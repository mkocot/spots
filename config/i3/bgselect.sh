#!/bin/sh
walldir=$HOME/Pictures/wall
feh --bg-fill "$walldir/$(ls "$walldir" | rofi -dmenu)"
