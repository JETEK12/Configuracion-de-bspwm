#!/bin/bash

opciones="Apagar\nReiniciar\nCerrar sesión\nCancelar"

eleccion=$(echo -e "$opciones" | rofi -dmenu -i -p "¿Qué deseas hacer?")

case "$eleccion" in
  "Apagar")
    lxqt-leave --shutdown
    ;;
  "Reiniciar")
    reboot
    ;;
  "Cerrar sesión")
    bspc quit
    ;;
  "Cancelar" | "")
    exit 0
    ;;
  *)
    notify-send "Opción no válida" "$eleccion"
    ;;
esac
