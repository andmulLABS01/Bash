#!/bin/bash

#The purpose of this script is to provide a menu for users about what information they want to check.
#Andrew Mullen - 9/12/23


#Put in a loop statement to continue until the user exits.
while true; do

#Display the menu
	echo Sys Info Menu:
	echo "1. Currently logged users"
	echo "2. Your shell directory"
	echo "3. Home Directory"
	echo "4. OS name & version"
	echo "5. Current working directory"
	echo "6. Number of users logged in"
	echo "7. Hard disk information"
	echo "8. CPU information"
	echo "9. Memory information"
	echo "10. File system information"
	echo "11. Currently running processes"
	echo "12. Exit"

#Record the users' selection into the variable "choice"
	read -p "Choose an option: " choice
 

#Use the case statement to execute the command based on the user's choice. Add error catching
	case $choice in
	  1)
		who
		;;
	  2)
		echo $SHELL
		;;
	  3)
		echo $HOME
		;;
	  4)
		cat /etc/os-release
		;;
	  5)
		pwd
		;;
	  6)
		who | wc -l
		;;
	  7)
		df -h
		;;
	  8)
		cat /proc/cpuinfo
		;;
	  9)
		free -h
		;;
	  10)
		df -T
		;;
	  11)
		ps aux
		;;
	  12)
		echo "Exiting..."
		exit 0
		;;
	  *)
		echo "Invalid option. Please choose a valid option (1-12)."
		continue #error handling
		;;
	esac

#Ask the user if they want to continue. Record the users choice into 'continue'.
  read -p "Do you want to continue? (y/n) " continue

#If the user's choice is not 'y', exit the script.
  if [ "$continue" != "y" -o "$continue" != "Y" ]; then
    echo "Exiting..."
    exit 0
  fi
done
