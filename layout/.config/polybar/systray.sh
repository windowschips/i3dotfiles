#!/bin/bash

# acts as a toggle script and autohide for system tray polybar bar

menu_is_open() {
    xwininfo -tree -root | grep "polybar-systray_eDP-1"
}

if menu_is_open; then
    xdotool search --name "polybar-systray_eDP-1" windowkill
    exit 0
fi

polybar systray &
sleep 7

if menu_is_open; then
    xdotool search --name "polybar-systray_eDP-1" windowkill
fi
