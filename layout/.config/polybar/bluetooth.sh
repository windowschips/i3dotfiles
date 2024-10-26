#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    echo "%{F#66ffffff}󰂲" # disabled
else
    

    if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 31 ]; then 
        echo "%{F#ffffff}󰂯" # enabled alt
    else
        echo "%{F#5577ff}󰂯" # enabled
    fi
fi