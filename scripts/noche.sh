#!/bin/bash

# Archivo de estado
STATE_FILE="$HOME/.config/scripts/redshift_state"

# Comprobar el estado actual
if [ -f "$STATE_FILE" ]; then
    # Si el archivo de estado existe, revertir los cambios
    redshift -x
    rm "$STATE_FILE"
else
    # Si el archivo de estado no existe, aplicar el ajuste
    redshift -O 3000
    touch "$STATE_FILE"
fi
