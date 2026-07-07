#!/bin/bash

CHIME_MUTE="/usr/share/sounds/freedesktop/stereo/service-logout.oga"
CHIME_UNMUTE="/usr/share/sounds/freedesktop/stereo/service-login.oga"
SPEED=2.4

wpctl set-mute \@DEFAULT_SOURCE@ toggle

if wpctl get-volume \@DEFAULT_SOURCE@ | grep -q "MUTED"; then
    ffplay -nodisp -autoexit -af "atempo=$SPEED" "$CHIME_MUTE"
else
    ffplay -nodisp -autoexit -af "atempo=$SPEED" "$CHIME_UNMUTE"
fi
