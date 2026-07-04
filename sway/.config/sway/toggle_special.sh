#!/bin/sh

current=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused).name')

if [ "$current" = "0" ]; then
    swaymsg workspace back_and_forth
else
    swaymsg workspace 0
fi
