batlog
======

1 Year of MacBook Air Battery Logs

This dataset is the result of my ongoing study of the battery health of 
my 2012 MacBook Air. Logs were saved every 1 min that I was using the 
computer.

The data file is a litle ugly, but nothing a simple parser can't fix.

To run the cron script, set up your crontab:

    $ crontab -e

and enter this:

    * * * * * /path/to/your/repo/battest.sh

