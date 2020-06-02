#!/usr/bin/env bash

# $1 is the ip or hostname of the USG we are working with.
# $2 is the username of the USG
# $3 is the INTERFACE NAME we are updating.
# Please ensure that you have copied your ssh keys to the USG for this to work automatically. Ie. ssh-copy-id tim@192.168.1.100
#This will trigger the DynDNS Update. Sorry I am sure there is already a function for this in the router, but this was faster than searching the complex UBNT forums.

USG_HOSTNAME=$1
USG_USERNAME=$2
INTERFACE_NAME=$3

while [[ $USG_HOSTNAME = "" ]]
do
read -p "Please enter the hostname or IP of the USG: " USG_HOSTNAME
done

while [[ $USG_USERNAME = "" ]]
do
read -p "Please enter the username for the device: " USG_USERNAME
done

while [[ $INTERFACE_NAME = "" ]]
do
read -p "Please enter the interface name which you need to trigger update for dyndns (ie pppoe0 or eth0): " INTERFACE_NAME
done

# Command will be like this: update dns dynamic interface pppoe0
# ssh username@hostname "vbash -ic 'update dns dynamic interface pppoe0'"
ssh $USG_USERNAME@$USG_HOSTNAME "vbash -ic 'update dns dynamic interface $INTERFACE_NAME'"