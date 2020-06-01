#!/usr/bin/env bash

# $1 is the A name record to check. ie myname.hopto.org

URL=$1
DNS_IP=`dig +short uluvus.hopto.org`
NAT_IP=`dig +short myip.opendns.com @resolver1.opendns.com`

if [ $URL = $NAT_IP ]
echo 'The URL we are check is: '$URL
echo 'The dns host record for '$URL 'is: '$DNS_IP
echo 'The NAT IP  detected is: '$NAT_IP
then
    echo "Yes, the IP matches"
    exit 0
else
    echo  "Sorry the IP do not match. Please update your dyndns"
    exit 1

fi

exit 0