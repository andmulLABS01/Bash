#!/bin/bash

#The purporse of this script is to SSH or SCP into a server and copy a file over into the home directory with the same source file name.
#Andrew Mullen - 9/6/23

#Create the list of options
items=("1 - ssh" "2 - scp")
scp=("1 - Local --> Remote" "2 - Remote --> Local")

#Display the menu
for i in "${items[@]}"; do
   echo " ${i}"
done

#Get the user's selection
read -p "Select an option to continue " selection

#Check user's selection
if [[ $selection -eq 1 ]]; then 
   read  -p "Please enter remote system IP address " ip; 
   read  -p "Please enter user name " un;
   read  -p "$un@$ip's password: " pw;
ssh $un@$ip $pw
else
if [[ $selection -eq 2 ]]; then
   read  -p "Please enter remote system IP address " ip;
   read  -p "Please enter user name " un; 

#Display the scp menu
for s in "${scp[@]}"; do
   echo " ${s}"
done

#Get the user's selection
read -p "Select an option to continue " selection2
echo "do I work?"
else
echo "Try again"
fi
