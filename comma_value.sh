#!/bin/bash
BATDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -n ,
$BATDIR/value.sh $1
