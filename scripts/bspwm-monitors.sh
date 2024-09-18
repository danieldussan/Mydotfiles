#!/bin/bash

if xrandr -q | grep "VIRTUAL1 connected"; then
    xrandr --output eDP1 --primary --mode 1366x768 --output VIRTUAL1 --mode 1366x768 --left-of eDP1

    bspc monitor eDP1 -n monitor0 -d I II III IV V VI VII VIII
    bspc monitor VIRTUAL1 -n monitor1 -d IX X
    bspc monitor monitor0 -s monitor1
    notify-send "Dentro if"

else
    
    notify-send "Dentro else"
    bspc monitor eDP1 -n monitor0 -d I II III IV V VI VII VIII IX X

fi