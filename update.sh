#!/bin/bash

#The purpose of this script is to run a cron job every Friday at 11pm, update the server, and list the upgradable packages in a created file that has the current date (e.g. update08.25.23.txt).
#Andrew Mullen - 8/28/23

#Create the cronjob, set the time you want the script to run (runs every Friday at 11 pm), and add the script to be run
#crontab -e
#0 23 * * 5 sh /home/ubuntu/update.sh



#Creates the current date variable
now=`date +"%m.%d.%Y"`

#Command to pull the current updates, list how many packages can be upgraded that outputs to the screen (ex. x packages can be upgraded.) and 
#write them into a text file that includes the current date && apt list --upgradable
sudo apt update &> /home/ubuntu/upgradable${now}.txt

#Command to upgrade the packages echo Y | 
sudo apt upgrade
