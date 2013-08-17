HowTo Batlog via Examples
=============================

Run this to see cool stuff:

    # Yes, actually run battest.perl 6 times
    ./battest.perl
    ./battest.perl
    ./battest.perl
    ./battest.perl
    ./battest.perl
    ./battest.perl
    ./view.sh

Now add battest to your cron:

    EDITOR=nano crontab -e
    * * * * * /path/to/battest.perl
    # Save and Exit

Dynamic data is saved as a spreadsheet in:

    ./batlog.csv

Static data is saved once as a spreadsheet in:

    ./batinfo.csv

To peek at data anytime, run:

    ./view.sh


Decay
====

Pay special attention to the decay percent.
This is how much life your battery has left
compared to when it was new, fresh off the shelf.


History
=======

1 Year of MacBook Air Battery Logs

This dataset is the result of my ongoing study of the battery health of
my 2012 MacBook Air. Logs were saved every 1 min that I was using the
computer.

[Slashdot Article](http://hardware.slashdot.org/story/13/08/15/1359248/studying-the-slow-decay-of-a-laptop-battery-for-an-entire-year)

[Blog Post](http://www.ifweassume.com/2013/08/the-de-evolution-of-my-laptop-battery.html)



Typical ./view.sh
================================

    ------ batlog.csv first 5 lines ------
    year  month  day  hour  minute  cycle  charge  max_charge  decay_percent  plugged_in  charging  charged  charge_time  deplete_time  amps                  volts  temperature
    2013  08     16   08    15      8      7195    7195        100.62         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     16   08    15      8      7195    7195        100.62         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     16   08    15      8      7195    7195        100.62         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     16   08    16      8      7195    7195        100.62         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     16   08    17      8      7195    7195        100.62         Yes         No        Yes      65535        629           18446744073709551349  8494   3030

    ------ batlog.csv last 5 lines ------
    year  month  day  hour  minute  cycle  charge  max_charge  decay_percent  plugged_in  charging  charged  charge_time  deplete_time  amps                  volts  temperature
    2013  08     17   02    23      8      7195    7195        100.63         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     17   02    24      8      7195    7195        100.63         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     17   02    24      8      7195    7195        100.63         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     17   02    24      8      7195    7195        100.63         Yes         No        Yes      65535        629           18446744073709551349  8494   3030
    2013  08     17   02    28      8      7195    7195        100.63         Yes         No        Yes      65535        629           18446744073709551349  8494   3030

    ------ batinfo.csv ------
    kernel  max_charge_new  manufacturer  device      serial               firmware
    12.4.1  7150            "SMP"         "bq20z451"  "D8632430LWSF90KAY"  1



Typical Battery Info: Full Dump
================================

To view your current battery data directly from the mac system utility, run:

    ioreg -rk BatterySerialNumber

Output looks like this:

    +-o AppleSmartBattery  <class AppleSmartBattery, id 0x100000222, registered, matched, active, busy 0 (0 ms), retain 6>
    {
      "TimeRemaining" = 0
      "AvgTimeToEmpty" = 65535
      "InstantTimeToEmpty" = 65535
      "ExternalChargeCapable" = No
      "CellVoltage" = (4269,4270,0,0)
      "PermanentFailureStatus" = 0
      "BatteryInvalidWakeSeconds" = 30
      "AdapterInfo" = 0
      "MaxCapacity" = 7171
      "Voltage" = 8539
      "DesignCycleCount70" = 65535
      "Manufacturer" = "SMP"
      "Location" = 0
      "CurrentCapacity" = 7171
      "LegacyBatteryInfo" = {"Amperage"=0,"Flags"=4,"Capacity"=7171,"Current"=7171,"Voltage"=8539,"Cycle Count"=8}
      "FirmwareSerialNumber" = 1
      "BatteryInstalled" = Yes
      "PackReserve" = 167
      "CycleCount" = 8
      "DesignCapacity" = 7150
      "OperationStatus" = 58435
      "ManufactureDate" = 17101
      "AvgTimeToFull" = 65535
      "BatterySerialNumber" = "D8632430LWSF90KAY"
      "PostDischargeWaitSeconds" = 120
      "Temperature" = 3041
      "MaxErr" = 1
      "ManufacturerData" = <000000000511000a12000000034a343303303041034c4743031b00>
      "FullyCharged" = Yes
      "InstantAmperage" = 0
      "DeviceName" = "bq20z451"
      "IOGeneralInterest" = "IOCommand is not serializable"
      "Amperage" = 0
      "IsCharging" = No
      "DesignCycleCount9C" = 1000
      "PostChargeWaitSeconds" = 120
      "ExternalConnected" = No
    }
