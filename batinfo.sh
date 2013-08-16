value() {
  eval "ioreg -rk BatterySerialNumber | perl -ne 'print \$1 if /\"$1\" = (.+)/'"
}

comma_value() {
  echo -n ,
  value $1
}


echo kernel,max_charge_new,manufacturer,device,serial,firmware

uname -r | tr -d '\n'
comma_value DesignCapacity
comma_value Manufacturer
comma_value DeviceName
comma_value BatterySerialNumber
comma_value FirmwareSerialNumber
echo
