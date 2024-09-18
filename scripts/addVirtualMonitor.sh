#!/bin/bash

xrandr --addmode VIRTUAL1 1366x768
bspc wm -r

notify-send -t 3000 "BSPWM" "Monitor VIRTUAL1 agregado"

deskreen &
