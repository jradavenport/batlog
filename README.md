batlog
======
Tracking your Mac's battery useage, with data saved every minute!

As an example, includes 1 Year of my 2012 MacBook Air's. See blog post here: 
http://www.ifweassume.com/2013/08/the-de-evolution-of-my-laptop-battery.html

Note: The data file is a litle ugly, but nothing a simple parser can't fix.

#Install Guide

To run the script yourself, first download the `battest.sh` file. I renamed it using my terminal to be a hidden file like so:

    $ mv battest.sh .battest.sh


Next, set up your cron jobs using crontab. You can directly edit your current cron jobs by typing this in to the Terminal:

    $ crontab -e

and enter this line:

    * * * * * /path/to/your/repo/.battest.sh

or if you didn't rename it to be hidden, add this line:

    * * * * * /path/to/your/repo/battest.sh


However, if you have lots of various cron jobs like me running, you might want to keep a file sitting around with all your cron jobs listed out. I have another hidden file in my home directory called `.cron.username` (replace username, of course) that is full of these cron job lines, like above. You could call this file anything you want, and just use TextEdit to create it if you like. Just create this file with one line in it:

    * * * * * /path/to/your/repo/.battest.sh 

and then tell cron to look at it by typing:

    $ crontab .cron.username

At any time you can see what is in your cron job list by typing:

    $ crontab -l

Happy data gathering!
