#!/bin/bash

# Obtener el volumen actual en porcentaje
VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk -F'/' '{print $2}' | awk '{print $1}' | sed 's/%//')

# Verificar si VOL está vacío
if [ -z "$VOL" ]; then
    echo "No se pudo obtener el volumen actual"
    exit 1
fi

# Aumentar el volumen en 5%
NEW_VOL=$((VOL + 5))

# Limitar el volumen al 100%
if [ "$NEW_VOL" -gt 100 ]; then
    NEW_VOL=100
fi

# Aplicar el nuevo volumen
pactl set-sink-volume @DEFAULT_SINK@ ${NEW_VOL}%
