#!/bin/bash

# Opciones del menú con íconos de Font Awesome
opcion=$(echo -e "  Bloquear pantalla\n  Cerrar sesión\n  Reiniciar\n  Apagar" | rofi -dmenu -i -p "Elige una opción:")

# Acciones según la opción seleccionada
case "$opcion" in
    "  Bloquear pantalla")
        cinnamon-screensaver-command -l
        ;;
    "  Cerrar sesión")
        bspc quit  # Si usas bspwm
        # cinnamon-session-quit --logout --no-prompt # Para Cinnamon (descomentar si usas Cinnamon)
        ;;
    "  Reiniciar")
        systemctl reboot
        ;;
    "  Apagar")
        systemctl poweroff
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
