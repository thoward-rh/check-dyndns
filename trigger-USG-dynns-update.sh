#!/usr/bin/env bash

# $1 is the inteface which needs to be updated.
# Please ensure that you have copied your ssh keys to the USG for this to work automatically. Ie. ssh-copy-id tim@192.168.1.100
#This will trigger the DynDNS Update.

USG_HOSTNAME=$1
INTERFACE_NAME=$2

# Command will be like this: update dns dynamic interface pppoe0
# ssh username@hostname "vbash -ic 'update dns dynamic interface pppoe0'"
ssh username@hostname "vbash -ic 'update dns dynamic interface $INTERFACE_NAME'"




