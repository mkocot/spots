#!/bin/sh
img=$(shuf -en1 ~/Pictures/i3lock.png)
exec i3lock -i ${img}
