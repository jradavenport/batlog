DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo ------ batlog.csv first 5 lines ------
cat $DIR/batlog.csv | head -n6 | column -s, -t
echo

echo ------ batlog.csv last 5 lines ------
# Include headers
cat <(cat $DIR/batlog.csv | head -n1) <(cat $DIR/batlog.csv | tail -n5) | column -s, -t
echo

echo ------ batinfo.csv ------
cat $DIR/batinfo.csv | column -s, -t
