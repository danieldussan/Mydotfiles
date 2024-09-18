#!/bin/bash

# Obtener la distribución actual
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Alternar entre 'us' y 'latam'
if [ "$current_layout" = "us" ]; then
    setxkbmap -layout latam
else
    setxkbmap -layout us
fi
