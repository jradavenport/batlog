#!/usr/bin/perl

use strict;
use warnings;

use File::Basename;
use POSIX qw(uname strftime);

my $BATDIR = dirname($0);

my $batinfo = "$BATDIR/batinfo.csv";
my $batdata = "$BATDIR/batlog.csv";

my @ioreg = split /\n/, `/usr/sbin/ioreg -rk BatterySerialNumber`;

batinfo() unless (-s $batinfo);

unless (-s $batdata) {
  open BATDATA, '>', $batdata or die "Can't write $batdata";
  print BATDATA "year,month,day,hour,minute,cycle,charge,max_charge,decay_percent,plugged_in,charging,charged,charge_time,deplete_time,amps,volts,temperature\n";
  close BATDATA;
}
batdata();

exit;

sub ioreg_value {
  my ($arg) = @_;
  for (@ioreg) {
    if (/"$arg" = (.+)/) {
      return $1;
    }
  }
  die "Couldn't find value $arg";
}

sub batinfo {
  open BATINFO, '>', $batinfo or die "Can't write $batinfo";
  print BATINFO "kernel,max_charge_new,manufacturer,device,serial,firmware\n";

  my @data;
  my ($os, $host, $kernel, $date, $arch) = uname();
  push(@data, $kernel);
  push(@data, ioreg_value('DesignCapacity'));
  push(@data, ioreg_value('Manufacturer'));
  push(@data, ioreg_value('DeviceName'));
  push(@data, ioreg_value('BatterySerialNumber'));
  push(@data, ioreg_value('FirmwareSerialNumber'));
  print BATINFO join(",", @data)."\n";
  close BATINFO;
}

sub batdata {
  open BATDATA, '>>', $batdata or die "Can't append $batdata";

  my @data;
  # Date in UTC time in case you cross time zones
  push(@data, strftime "%Y,%m,%d,%H,%M", gmtime);
  push(@data, ioreg_value('CycleCount'));
  push(@data, ioreg_value('CurrentCapacity'));
  my $maxcap = ioreg_value('MaxCapacity');
  my $descap = ioreg_value('DesignCapacity');
  push(@data, $maxcap);
  # Calcuate battery decay as percentage
  my $decay = $maxcap * 100 / $descap;
  push(@data, sprintf('%0.2f', $decay));
  push(@data, ioreg_value('ExternalConnected'));
  push(@data, ioreg_value('IsCharging'));
  push(@data, ioreg_value('FullyCharged'));
  push(@data, ioreg_value('AvgTimeToFull'));
  push(@data, ioreg_value('InstantTimeToEmpty'));
  push(@data, ioreg_value('Amperage'));
  push(@data, ioreg_value('Voltage'));
  push(@data, ioreg_value('Temperature'));
  print BATDATA join(",", @data)."\n";
  close BATDATA;
}
