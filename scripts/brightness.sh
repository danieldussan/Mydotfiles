#!/bin/bash

# Ruta al archivo de log para manejar errores
LOGFILE="/tmp/brightnessctl.log"

# Verifica el argumento recibido
case "$1" in
    "inc")
        # Incrementa el brillo
        brightnessctl s +10% 2>> $LOGFILE
        ;;
    "dec")
        # Decrementa el brillo
        brightnessctl s 10%- 2>> $LOGFILE
        ;;
    "set")
        # Establece el brillo al porcentaje especificado
        if [ -z "$2" ]; then
            echo "Uso: $0 set <porcentaje>"
            exit 1
        fi
        brightnessctl s "$2%" 2>> $LOGFILE
        ;;
    *)
        echo "Uso: $0 {inc|dec|set <porcentaje>}"
        exit 1
        ;;
esac
