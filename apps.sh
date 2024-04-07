#!/bin/bash

function main {
    case $1 in
    	wifi-menu) kitty nmtui;;
    	bluetooth-menu) kitty bluetui;;
    	screenlock) xlock -font -*-helvetica-*-*-normal-*-25-*-*-*-*-*-*-* -mode space +description +showdate;;
    	screenshot) maim -s --highlight --color=.3,.3,.3,0.9 | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png;;
        calendar) gnome-calendar;;
        hardware-monitor) kitty btop -p 0;;
        
        *)
            echo "Usage: $0 {wifi-menu|bluetooth-menu|screenlock|screenshot|calendar|hardware-monitor}"
            exit 1
            ;;
    esac
}
main "$@"
