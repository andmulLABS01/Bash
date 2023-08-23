#!/bin/bash


#First update system
sudo apt update

#enter the wait command to finish the update
wait

#download java run time environment
sudo apt install fontconfig openjdk-17-jre

#enter wait command finish the install
wait

#This is the Debian package repository of Jenkins to automate installation and upgrade.
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \/usr/share/keyrings/jenkins-keyring.asc > /dev/null

#Then add a Jenkins apt repository entry
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \https://pkg.jenkins.io/debian binary/ | sudo tee \/etc/apt/sources.list.d/jenkins.list > /dev/null

#run update command again  HOw to check for Jenkins package? check to see if this file exists (/etc/apt/sources.list.d/jenkins.list content in file)
sudo apt update

#enter the wait command to finish the update
wait

#put in check statement if/else

#install jenkins if found type y
sudo apt install jenkins

#enter wait command finish the install
wait

#run command to check the status of Jenkins How do I check if it is running? looking for [Active: active (running)]. What should I do if it's not?
systemctl status jenkins

#exit out of systemctl
q

#how to pull unlock code? Do we use haystack example to find the file if this directory changes
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#copy password
