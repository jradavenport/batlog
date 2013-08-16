#!/bin/bash
eval "/usr/sbin/ioreg -rk BatterySerialNumber | perl -ne 'print \$1 if /\"$1\" = (.+)/'"
