#!/bin/bash

function main {
    case $1 in
    	wifi-menu) kitty nmtui;;
    	bluetooth-menu) kitty bluetui;;
    	screenlock) slock;;
    	ssselection) maim -s --color=.3,.3,.3,0.9 | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Selection screenshot successful" "The image has been copied to clipboard and saved as a file.";;
       	ssfull) maim | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Fullscreen screenshot successful" "The image has been copied to clipboard and saved as a file.";;
        calendar) gnome-calendar;;
        hardware-monitor) kitty btop -p 0;;
        
        *)
            echo "Usage: $0 {wifi-menu|bluetooth-menu|screenlock|screenshot|calendar|hardware-monitor}"
            exit 1
            ;;
    esac
}
main "$@"
