#!/bin/bash

# currently thinking i load ALL song information, and update art, on the song change event, and then load the info on request..? 
# this seems to be what spotify does

EXISTS_FILE=/tmp/spotifypopup

if [ -f $EXISTS_FILE ]; then
  rm $EXISTS_FILE
  makoctl dismiss -g
elif [ ! -f $EXISTS_FILE ]; then
  touch $EXISTS_FILE
  URL=`playerctl --player=spotify metadata mpris:artUrl`
  wget -O /tmp/current_album "${URL/0000b273/"00004851"}"
  notify-send -c spotify "`playerctl --player=spotify metadata title`" "`playerctl --player=spotify metadata artist`, `playerctl --player=spotify metadata album`" --icon /tmp/current_album
fi
