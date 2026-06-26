#!/bin/bash

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

BATTERY_CHARGING=$1
BATTERY_LEVEL=`cat /sys/class/power_supply/BAT0/capacity`

# it might be possible (and cool) to quickly calculate an estimated time to full / empty for each of these by polling the current dis/charging rate and extrapolating it to min / max values? may be inaccurate though, and would incur latency.

if [ $BATTERY_CHARGING -eq 1 ]; then
  notify-send "charging" "connected to power" -u low && bash /home/thomas/.config/mako/battery_notifications/battery_warning.sh && echo "ftlog"
elif [ $BATTERY_CHARGING -eq 0 ]; then
  notify-send "discharging" "power is unplugged" -u normal && bash /home/thomas/.config/mako/battery_notifications/battery_warning.sh
fi

