#!/bin/bash

CHIME_MUTE="/usr/share/sounds/freedesktop/stereo/service-logout.oga"
CHIME_UNMUTE="/usr/share/sounds/freedesktop/stereo/service-login.oga"
CHIME_FAILED="/usr/share/sounds/freedesktop/stereo/window-question.oga"
SPEED=2.4

wpctl set-mute \@DEFAULT_SOURCE@ toggle

if wpctl get-volume \@DEFAULT_SOURCE@ | grep -q "MUTED"; then
  #notify-send -u critical -t 500 "Muted"
  ffplay -nodisp -autoexit -af "atempo=$SPEED" "$CHIME_MUTE"
elif wpctl get-volume \@DEFAULT_SOURCE@ | grep -q "Volume"; then
  #notify-send -u low -t 500 "Unmuted"
  ffplay -nodisp -autoexit -af "atempo=$SPEED" "$CHIME_UNMUTE"
else
  #notify-send -u low --expire-time="500" "No microphone detected"
  pw-play "$CHIME_FAILED"
fi
