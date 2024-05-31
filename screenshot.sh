
#!/bin/bash

# Run the command and capture its output
output=$(eval "maim -s --highlight --color=.3,.3,.3,0.9 | ~/.cargo/bin/shadower -r 8 --padding-x 20 --padding-y 20 | xclip -selection clipboard -t image/png" 2>&1)

# Check if the output contains alphabetic characters
if [[ $output =~ [a-zA-Z] ]]; then
    # If there are alphabetic characters, send a notification that it failed
    dunstify -a "Screenshot Tool" "Something went wrong" "$output"
else
    # If there are no alphabetic characters, send a notification that the image has been copied to clipboard
    dunstify -a "Screenshot Tool" "Image Copied" "The image has been copied to clipboard"
fi
