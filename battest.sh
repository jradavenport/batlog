#!/bin/bash
BATDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -s "$BATDIR/batinfo.csv" ]
then
  $BATDIR/batinfo.sh >> "$BATDIR/batinfo.csv"
fi

HEADERS=year,month,day,hour,minute,cycle,charge,max_charge,decay_percent,plugged_in,charging,charged,charge_time,deplete_time,amps,volts,temperature
if [ ! -s "$BATDIR/batlog.csv" ]
then
  echo $HEADERS >> "$BATDIR/batlog.csv"
fi

$BATDIR/batdata.sh >> "$BATDIR/batlog.csv"
