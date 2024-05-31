#!/bin/bash

function main {
    case $1 in
    	wifi-menu) kitty nmtui;;
    	bluetooth-menu) kitty bluetui;;
    	screenlock) xlock -font -*-helvetica-*-*-normal-*-25-*-*-*-*-*-*-* -mode space +description +showdate;;
    	screenshot) ~/.dotfiles/screenshot.sh;;
        calendar) gnome-calendar;;
        hardware-monitor) kitty btop -p 0;;
        
        *)
            echo "Usage: $0 {wifi-menu|bluetooth-menu|screenlock|screenshot|calendar|hardware-monitor}"
            exit 1
            ;;
    esac
}
main "$@"
