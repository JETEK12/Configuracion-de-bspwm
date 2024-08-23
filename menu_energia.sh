#!/bin/bash

# Opciones del menú
opcion=$(echo -e "Cerrar sesión\nApagar\nReiniciar" | rofi -dmenu -i -p "Elige una opción:")

# Acciones según la opción seleccionada
case "$opcion" in
    "Cerrar sesión")
        bspc quit  # Si usas bspwm
        # cinnamon-session-quit --logout --no-prompt # Para Cinnamon (descomentar si usas Cinnamon)
        ;;
    "Apagar")
        systemctl poweroff
        ;;
    "Reiniciar")
        systemctl reboot
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
