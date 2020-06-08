# check-dyndns
This will check if your dyndns record is the same as your NAT IP address. This should be useful for troubleshooting that your dyndns is working fine and updated correctly.

## preparation
make sure you enable execution for the script
```
$chmod +x check-dyndns.sh
```

## usage
If you want to include the DNS name to check when calling the script (replace www.my-dyndns.com with your dyndns record):
```
$./check-dyndns.sh www.my-dyndns.com
```
If you want to enter the DNS name from within the script you will be prompted for the DNS name to perform the match.
```
$./check-dyndns.sh www.my-dyndns.com
Please enter the URL you want to check: 
```

# trigger-USG-dynns-update
This script is used to trigger a forced update of dyndns service from Ubiquiti USG. It should work for EdgeRouterX as well. Check to ensure you have accepted the SSH keys from the gateway first and follow the steps. This script could be modified to return the output at the USG. Will get around to that. It will not try to update DynDNS if it finds it is already up to date.
