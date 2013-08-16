#!/bin/bash
BATDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# CSV Headers in battest.sh - update that file after making changes here

# Date in UTC time in case you cross time zones
TZ=utc date +%Y,%m,%d,%H,%M | tr -d '\n'
$BATDIR/comma_value.sh CycleCount
$BATDIR/comma_value.sh CurrentCapacity
$BATDIR/comma_value.sh MaxCapacity
$BATDIR/comma_value.sh ExternalConnected
$BATDIR/comma_value.sh IsCharging
$BATDIR/comma_value.sh FullyCharged
$BATDIR/comma_value.sh AvgTimeToFull
$BATDIR/comma_value.sh InstantTimeToEmpty
$BATDIR/comma_value.sh Amperage
$BATDIR/comma_value.sh Voltage
$BATDIR/comma_value.sh Temperature
echo
