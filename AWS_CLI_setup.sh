#!/bin/bash

#download in the `awscliv2.zip` file
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sleep 10

#unzip the `awscliv2.zip`
unzip awscliv2.zip

#install AWS CLI
sudo ./aws/install

#Check the Version and run `aws configure` to set access keys and region
aws --version
sleep 10

# Set AWS access keys, region, and output
aws configure set aws_access_key_id 
aws configure set aws_secret_access_key 
aws configure set default.region us-east-1
aws configure set default.output json

#Test credentials: enter the command below
aws ec2 describe-instances
