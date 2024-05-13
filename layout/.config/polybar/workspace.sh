#!/bin/bash

# Function to get the current workspace number
get_current_workspace() {
    i3-msg -t get_workspaces | jq '.[] | select(.focused).num'
}

# Function to set the workspace number
set_workspace() {
    i3-msg workspace "$1"
}

# Increment function
increment_workspace() {
    current_workspace=$(get_current_workspace)
    if [ "$current_workspace" -lt 10 ]; then
        new_workspace=$((current_workspace + 1))
        set_workspace "$new_workspace"
    fi
}

# Decrement function
decrement_workspace() {
    current_workspace=$(get_current_workspace)
    if [ "$current_workspace" -gt 1 ]; then
        new_workspace=$((current_workspace - 1))
        set_workspace "$new_workspace"
    fi
}

# Main script
if [ "$1" == "--inc" ]; then
    increment_workspace
elif [ "$1" == "--dec" ]; then
    decrement_workspace
else
    echo "Usage: $0 --inc | --dec"
    exit 1
fi
