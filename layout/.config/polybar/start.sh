#!/bin/bash

ps -ef | grep hideIt | grep -v grep | awk '{print $2}' | xargs kill
killall -q polybar
sleep 0.3
polybar & 
sleep 0.3
bash ~/.config/polybar/hideIt.sh -w --name '^polybar-i3barclone_eDP-1$' -p 2 -d top -r 0x0+1920+2 --interval 0.016 -s 9
