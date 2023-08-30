#!/bin/bash

#The purpors of this script is to run a cron job every Friday at 11pm, update the server, list the upgradable packages in a created file that has the current date (e.g. update08.25.23.txt).
#Andrew Mullen - 8/28/23

#Create the cronjob, set the time you want the script to run (runs every Friday at 11 pm), and add the script to be run
#crontab -e
#* 23 * * 5 sh /home/ubuntu/update.sh



#Creates the current date varable
now=`date +"%m.%d.%Y"`

#Command to pull the current updates, list the upgradable packages and write them in to a text file that included the current date
sudo apt update && apt list --upgradable &> /home/ubuntu/upgradable${now}.txt

#Command to upgrade the packages
echo Y | sudo apt upgrade
