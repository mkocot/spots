#!/bin/sh
walldir=$HOME/Pictures/wall

if [ "$1" == "--randomize" ]; then
  image=$(ls ~/Pictures/wall | shuf -n 1)
else
  image=$(ls "$walldir" | rofi -dmenu)
  if [ "$?" -nq 0 ]; then
    exit 0
  fi
fi

path="$walldir/$image"

# adjusting and other fun
brightness=$(identify -format "%[fx:mean]" "$path")
# this should scale <0.35 -> default
# >=0.35 -> scaled from default -> 90 on 1
adjust=$(echo "a=(${brightness}-0.35); if (a < 0) a=0; a=(a*80/0.75); print 50-a" | bc)

echo "URxvt.shading: ${adjust}" > ~/.config/urxvt/alphaAdjust
echo "!${adjust}" >> ~/.config/urxvt/alphaAdjust
echo "!${brightness}" >> ~/.config/urxvt/alphaAdjust
xrdb ~/.Xresources
feh --bg-fill "$path"
#exec --no-startup-id wal --theme nord -a 128
wal --theme base16-onedark -a 128
