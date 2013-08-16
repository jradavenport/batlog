value() {
  eval "/usr/sbin/ioreg -rk BatterySerialNumber | perl -ne 'print \$1 if /\"$1\" = (.+)/'"
}

comma_value() {
  echo -n ,
  value $1
}

# CSV Headers in battest.sh - update that file after making changes here

# Date in UTC time in case you cross time zones
TZ=utc date +%Y,%m,%d,%H,%M | tr -d '\n'
comma_value CycleCount
comma_value CurrentCapacity
comma_value MaxCapacity
comma_value ExternalConnected
comma_value IsCharging
comma_value FullyCharged
comma_value AvgTimeToFull
comma_value InstantTimeToEmpty
comma_value Amperage
comma_value Voltage
comma_value Temperature
echo
