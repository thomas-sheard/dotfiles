#!/bin/bash

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

# based heavily on https://www.youtube.com/watch?v=3wTt6fStYCI, adapted for thinkpad paths / tlp commands (tlp uses natacpi, not acpi, which does not have the same commands)

# current charge
# cat /sys/class/power_supply/BAT0/capacity

# current status
# cat /sys/class/power_supply/BAT0/status

# max allowed
# cat /sys/class/power_supply/BAT0/charge_control_end_threshold

# starting charging again at:
# cat /sys/class/power_supply/BAT0/charge_control_start_threshold

# desired warning levels
WARNING_LEVEL=20
CRITICAL_LEVEL=5

# find the relative battery percentage, accounting for TLP modifications to the max and min charge thresholds:
# (uses qalc with -t (terse output for answer output only) and maxdeci = 0 for no decimals (can perform integer operations on output))
# fetch current level -> divide by max allowed level -> * 100 for percentage of full
# (if you don't have a lower charge threshold, or simply dont care about this, you can use:
# BATTERY_LEVEL=`cat /sys/class/power_supply/BAT0/capacity`
# to reduce idle compute)
BATTERY_LEVEL="$(qalc -t --set "maxdeci 0" "$(cat /sys/class/power_supply/BAT0/capacity)" / "$(cat /sys/class/power_supply/BAT0/charge_control_end_threshold)" '*' 100)"

#echo $BATTERY_LEVEL # use for troubleshooting (run manually with [~]$ bash /path/to/script.sh)

# this script works on the assumption that the battery is ONLY plugged when it is at full charge and connected to power
BATTERY_PLUGGED=`cat /sys/class/power_supply/BAT0/status | grep -c "Not charging"` 
BATTERY_CHARGING=`cat /sys/class/power_supply/BAT0/status | grep -c "Charging"` 
BATTERY_DISCHARGING=`cat /sys/class/power_supply/BAT0/status | grep -c "Discharging"`

# a sneaky way of checking whether we have sent a notif or not; touch and rm empty files in /tmp
SHUTDOWN_FILE=/tmp/batteryshutdown
CRIT_FILE=/tmp/batterycritical
WARN_FILE=/tmp/batterywarning
FULL_FILE=/tmp/batteryfull

# removing files if they exist when their conditions no longer apply
if [ $BATTERY_DISCHARGING -eq 1 ] && [ -f $FULL_FILE ]; then
  rm -f $FULL_FILE
elif [ $BATTERY_CHARGING -eq 1 ] && [ -f $WARN_FILE ]; then
  rm -f $WARN_FILE
elif [ $BATTERY_CHARGING -eq 1 ] && [ -f $CRIT_FILE ]; then
  rm -f $CRIT_FILE
elif [ $BATTERY_CHARGING -eq 1 ] && [ -f $SHUTDOWN_FILE ]; then
  /sbin/shutdown -c
  rm -f $SHUTDOWN_FILE
fi

# checking for threshold conditions and performing appropriate tasks (notifications, status files, and shutdown if the script runs again after the $CRIT_FILE is created
# (this means that the delay between the critical warning and imminent shutdown is determined by the frequency of the cron job
if [ $BATTERY_PLUGGED -eq 1 ] && [ ! -f $FULL_FILE ]; then
  notify-send "fully charged" "battery is fully charged" -u low
  touch $FULL_FILE
elif [ $BATTERY_LEVEL -le $WARNING_LEVEL ] && [ $BATTERY_DISCHARGING -eq 1 ] && [ ! -f $WARN_FILE ]; then
  notify-send "low battery" "charge the battery soon" -u normal
  touch $WARN_FILE
elif [ $BATTERY_LEVEL -le $CRITICAL_LEVEL ] && [ $BATTERY_DISCHARGING -eq 1 ] && [ ! -f $CRIT_FILE ]; then
  notify-send "critical battery" "system will shut down shortly" -u critical
  touch $CRIT_FILE
elif [ $BATTERY_LEVEL -le $CRITICAL_LEVEL ] && [ $BATTERY_DISCHARGING -eq 1 ] && [ -f $CRIT_FILE ] && [ ! -f $SHUTDOWN_FILE ]; then
  #systemctl poweroff # i couldn't get this working with "/sbin/shutdown -P +5", which would instead schedule a shutdown
  /sbin/shutdown -P +5
  touch $SHUTDOWN_FILE
fi
