#!/bin/bash

# Ajustar brillo
if [ "$1" == "up" ]; then
    brightnessctl set +10%
elif [ "$1" == "down" ]; then
    brightnessctl set 10%-
else
    # Mostrar el brillo actual
    current_brightness=$(brightnessctl get)
    max_brightness=$(brightnessctl max)
    brightness_percent=$((current_brightness * 100 / max_brightness))
    echo "Brillo: ${brightness_percent}%"
fi
