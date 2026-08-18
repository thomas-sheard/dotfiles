#!/bin/bash

# stow every subdir
for dir in */; do
    # remove trailing slash
    dir="${dir%/}"

    echo "Stowing: $dir..."
    stow "$dir"
done
