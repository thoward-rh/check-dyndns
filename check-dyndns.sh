#!/usr/bin/env bash

# $1 is the A name record to check. ie myname.hopto.org

HOSTNAME=$1
# Prompt for input if no host name is given.
while [[ $HOSTNAME = "" ]]
do
read -p "Please enter the DNS name you want to check: " HOSTNAME
done

# Get the IPs we need to check.
DNS_IP=`dig +short $HOSTNAME`
NAT_IP=`dig +short myip.opendns.com @resolver1.opendns.com`

# Print the details of what we are checking.
echo 'The URL we are checking is: '$HOSTNAME
echo 'The dns host record for '$HOSTNAME' is: '$DNS_IP
echo 'The NAT IP  detected is: '$NAT_IP
if [ $DNS_IP = $NAT_IP ]
then
    echo 'Yes, the IP for '$HOSTNAME' matches'
    exit 0
else
    echo  'Sorry the IPs do not match. Please check your host name is correct or update your dyndns.'
    exit 1
fi

# if nothing verified or gets to this point.
exit 3