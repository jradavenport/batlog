HowTo Batlog via Examples
=============================

Run this to see cool stuff:

    # Yes, actually run battest.sh 6 times
    ./battest.sh
    ./battest.sh
    ./battest.sh
    ./battest.sh
    ./battest.sh
    ./battest.sh
    ./view.sh

Now add battest to your cron:

    EDITOR=nano crontab -e
    * * * * * /path/to/battest.sh
    # Save and Exit

Dynamic data is saved as a spreadsheet in:

    ./batlog.csv

Static data is saved once as a spreadsheet in:

    ./batinfo.csv

To peek at data anytime, run:

    ./view.sh

To view the data straight from the system utility, run:

    ioreg -rk BatterySerialNumber


History
=======

1 Year of MacBook Air Battery Logs

This dataset is the result of my ongoing study of the battery health of
my 2012 MacBook Air. Logs were saved every 1 min that I was using the
computer.


Typical Battery Info: Full Dump
================================

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
