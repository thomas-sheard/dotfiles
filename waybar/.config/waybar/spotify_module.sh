#!/bin/bash

while true; do

	player_status=$(playerctl status 2>/dev/null)

	if [ -z "$(playerctl metadata album)" ]; then
		if [ "$player_status" = "Playing" ]; then
			echo "$(playerctl metadata title) - $(playerctl metadata artist)"
		elif [ "$player_status" = "Paused" ]; then
			echo "$(playerctl metadata title) - $(playerctl metadata artist)"
    else
			echo ""
		fi
	else
		if [ "$player_status" = "Playing" ]; then
			echo "$(playerctl metadata title) - $(playerctl metadata artist)"
		elif [ "$player_status" = "Paused" ]; then
			echo "$(playerctl metadata title) - $(playerctl metadata artist)"
    else
			echo ""
		fi
	fi

	sleep 1

done
