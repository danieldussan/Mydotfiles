#!/bin/bash

xrandr --output VIRTUAL1 --off
bspc wm -r

notify-send -t 5000 "BSPWM" "Logout, please"
