date "+%Y-%m-%d %H:%M:%S" >> ~/batlog.dat
/usr/sbin/ioreg -l | grep "\"CycleCount" >> ~/batlog.dat
/usr/sbin/ioreg -l | grep CurrentCapacity >> ~/batlog.dat
/usr/sbin/ioreg -l | grep ExternalConnected >> ~/batlog.dat
