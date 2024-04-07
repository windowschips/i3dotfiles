#!/bin/bash

shopt -s extglob
for dir in */; do
    [[ "$dir" != .git*"/" ]] && stow -d "$(pwd)" "$dir"
done
echo Stowing complete.