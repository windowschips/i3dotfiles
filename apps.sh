#!/bin/bash

function main {
    case $1 in
    	wifi-menu) kitty nmtui;;
    	bluetooth-menu) blueman-manager;;
    	screenlock) slock;;
    	ssselection) maim -s --color=.3,.3,.3,0.9 | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Selection screenshot successful" "The image has been copied to clipboard and saved as a file.";;
       	ssfull) maim | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Fullscreen screenshot successful" "The image has been copied to clipboard and saved as a file.";;
        ssdelay) dunstify -a "Screenshot Tool" "Delayed fullscreen screenshot" "Attempting screenshot in 3 seconds..." -t 2500 && sleep 3 && maim | ~/.cargo/bin/shadower -r 0 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png; xclip -selection clipboard -t image/png -o > ~/Pictures/Screenshots/$(date +%F-%H:%M:%S).png && dunstify -a "Screenshot Tool" "Delayed fullscreen screenshot successful" "The image has been copied to clipboard and saved as a file.";;
        *)
            echo "Invalid argument, check script for list of apps you can invoke"
            exit 1
            ;;
    esac
}
main "$@"
