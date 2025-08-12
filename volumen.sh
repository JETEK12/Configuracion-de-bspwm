#!/bin/bash

# Obtener el volumen actual del dispositivo de salida predeterminado
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Verificar si el volumen actual es menor al 100%
if [ "$current_volume" -lt 100 ]; then
    # Aumentar el volumen en 1%
    pactl set-sink-volume @DEFAULT_SINK@ +1%
fi
