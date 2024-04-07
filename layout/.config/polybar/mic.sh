#!/usr/bin/env bash

var="$(pactl get-source-mute @DEFAULT_SOURCE@ | grep Mute)"

if [[ $var =~ "Mute: yes" ]]; then
echo "󰍭"
else
echo "󰍬"
fi
