#!/bin/bash

if [ "$1" == "up" ]; then
    brightnessctl s +5%
elif [ "$1" == "down" ]; then
    brightnessctl s 5%-
else
    echo "Uso: $0 {up|down}"
fi
