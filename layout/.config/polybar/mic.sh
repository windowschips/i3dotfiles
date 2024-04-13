#!/bin/bash

ismute="$(pactl get-source-mute @DEFAULT_SOURCE@ | grep Mute)"

if [[ $ismute =~ "Mute: yes" ]]; then
    echo "󰍭"  # unmute
else
    echo "󰍬"  # mute
fi