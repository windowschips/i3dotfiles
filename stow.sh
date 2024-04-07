#!/bin/bash

shopt -s extglob
for dir in */; do
    [[ "$dir" != .git*"/" ]] && stow -d "$(pwd)" "$dir" && echo Stowed $dir
done
echo Stowing complete.