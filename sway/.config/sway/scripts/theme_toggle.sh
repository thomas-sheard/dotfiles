#!/bin/sh

THEME="/home/thomas/dotfiles/bin/theme"
current=$("$THEME" current)

# set light and dark themes
LIGHT="light-nord"
DARK="nord"

# not strictly a toggle as much as a reset to default themes;
# if anything other than the default dark theme, swap to it
# if default dark, swap to default light
# doesn't even need to be a dark and light toggle, just choose two themes to swap
echo "Current theme is $current"
if [ "$current" != $DARK ]; then
  "$THEME" "$DARK"
else
  "$THEME" "$LIGHT"
fi
