#!/bin/bash

# Este script se utiliza para amplificar el audio de la laptop a traves de un un modulo de polybar

#Comando para obtener el volumen actual
VOLUMEN=$(pactl list sinks | grep 'Volumen' | head -n 1 | awk '{print $5}' | sed 's/%//g')

#Manejando subir y bajar volumen

if [ "$1" == "next" ]; then
    pactl set-sink-volume 0 +10%
elif [ "$1" == "prev" ]; then
    pactl set-sink-volume 0 -10%
fi

#Mostramos en apntalla el volumen actual
echo "Volumen: $VOLUMEN%"
exit 0
# Comando para amplificar el audio
#pactl set-sink-volume 0 180%