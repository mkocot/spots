#!/bin/sh
img=$(shuf -en1 ~/Obrazy/i3lock.png)
exec i3lock -i ${img}
