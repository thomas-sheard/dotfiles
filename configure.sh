#!/bin/bash

FILE="include.txt"

# check if include.txt exists
if [ ! -f "$FILE" ]; then
    echo "Error: '$FILE' not found in the current directory." >&2
    exit 1
fi

# iterate
while IFS= read -r dir_name || [ -n "$dir_name" ]; do

    dir_name=$(echo "$dir_name" | tr -d '\r')

    if [ -z "$dir_name" ] || [[ "$dir_name" =~ ^# ]]; then
        continue
    fi

    # verify exists before stowing
    if [ -d "$dir_name" ]; then
        echo "Stowing: $dir_name..."
        stow "$dir_name"
    else
        echo "Warning: '$dir_name' in $FILE does not exist. Skipping." >&2
    fi

done < "$FILE"
