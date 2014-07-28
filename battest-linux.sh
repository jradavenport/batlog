# Test if we get a path for the output file
if [ ! -z $1 ]
then
    outpath=$1
else
    outpath="$HOME/batlog.dat"
fi

# If the file does not exits, create it(touch ignores files that exist)
touch $outpath

# Add the date
date >> $outpath

# Add battery info
batpath=$(upower -e | sed -n 2p)
batinfo=$(upower -i $batpath)
echo $batinfo >> $outpath

# Add pipe for easy parsing
echo "|" >> $outpath

