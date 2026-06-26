#!/bin/bash

NOTIF_FILE=/tmp/isfullscreen

if [ -f $NOTIF_FILE ]; then
  rm $NOTIF_FILE
  makoctl dismiss -g
elif [ ! -f $NOTIF_FILE ]; then
  touch $NOTIF_FILE
  notify-send -c fullscreen "fullscreen"
fi
