HEADERS=year,month,day,hour,minute,cycle,charge,max_charge,plugged_in,charging,charged,charge_time,deplete_time,amps,volts,temperature

# Get this battest.sh script's directory - stackoverflow style
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -s "$DIR/batinfo.csv" ]
then
  $DIR/batinfo.sh >> $DIR/batinfo.csv
fi

if [ ! -s "$DIR/batlog.csv" ]
then
  echo $HEADERS >> $DIR/batlog.csv
fi

$DIR/batdata.sh >> $DIR/batlog.csv
