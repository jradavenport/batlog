#!/bin/bash
BATDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo kernel,max_charge_new,manufacturer,device,serial,firmware

uname -r | tr -d '\n'
$BATDIR/comma_value.sh DesignCapacity
$BATDIR/comma_value.sh Manufacturer
$BATDIR/comma_value.sh DeviceName
$BATDIR/comma_value.sh BatterySerialNumber
$BATDIR/comma_value.sh FirmwareSerialNumber
echo
