#!/bin/bash

function main {
    case $1 in
    	wifi-menu) kitty nmtui;;
    	bluetooth-menu) kitty bluetui;;
    	screenlock) xlock -font -*-helvetica-*-*-normal-*-25-*-*-*-*-*-*-* -mode space +description +showdate;;
    	ssselection) maim -s --highlight --color=.3,.3,.3,0.9 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Selection screenshot successful" "The image has been copied to clipboard and saved as a file.";;
       	ssfull) maim | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Fullscreen screenshot successful" "The image has been copied to clipboard and saved as a file.";;
        calendar) gnome-calendar;;
        hardware-monitor) kitty btop -p 0;;
        
        *)
            echo "Usage: $0 {wifi-menu|bluetooth-menu|screenlock|screenshot|calendar|hardware-monitor}"
            exit 1
            ;;
    esac
}
main "$@"
