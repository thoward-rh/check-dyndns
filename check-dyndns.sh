#!/usr/bin/env bash

# $1 is the A name record to check. ie myname.hopto.org

URL=$1

echo $1
if [ $URL = ""]
then
read -p "Please enter the URL you want to check: " URL
fi

DNS_IP=`dig +short $URL`
NAT_IP=`dig +short myip.opendns.com @resolver1.opendns.com`

echo 'The URL we are checking is: '$URL
echo 'The dns host record for '$URL' is: '$DNS_IP
echo 'The NAT IP  detected is: '$NAT_IP
if [ $DNS_IP = $NAT_IP ]
then
    echo 'Yes, the IP for '$URL' matches'
    exit 0
else
    echo  'Sorry the IPs do not match. Please update your dyndns'
    exit 1
fi

exit 0