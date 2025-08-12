#!/bin/bash

case "$1" in
    toggle-on)
        bluetoothctl power on
        ;;
    toggle-off)
        bluetoothctl power off
        ;;
esac

STATUS=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [ "$STATUS" == "yes" ]; then
    echo " ON"
else
    echo " OFF"
fi
