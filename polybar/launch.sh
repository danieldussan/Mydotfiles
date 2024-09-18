#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instancsecondMonitorall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/current.ini &
polybar secondary -c ~/.config/polybar/current.ini &
polybar terciary -c ~/.config/polybar/current.ini &
polybar quaternary -c ~/.config/polybar/current.ini &
#polybar quinary -c ~/.config/polybar/current.ini &

## Right bar
polybar top -c ~/.config/polybar/current.ini &
polybar primary -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &

## Second Monitor bar

if xrandr -q | grep 'VIRTUAL1 connected'; then  
  polybar custom -c ~/.config/polybar/secondMonitor.ini &
  polybar custom1 -c ~/.config/polybar/secondMonitor.ini &

  ## Left bar
  polybar custom2 -c ~/.config/polybar/secondMonitor.ini &
  polybar secondary1 -c ~/.config/polybar/secondMonitor.ini &
  polybar terciary1 -c ~/.config/polybar/secondMonitor.ini &
  polybar quaternary1 -c ~/.config/polybar/secondMonitor.ini &
  #polybar quinary1 -c ~/.config/polybar/secondMonitor.ini &

  ## Right bar
  polybar top1 -c ~/.config/polybar/secondMonitor.ini &
  polybar primary1 -c ~/.config/polybar/secondMonitor.ini &

fi
