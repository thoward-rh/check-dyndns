# check-dyndns
This will check if your dyndns record is the same as your NAT IP address. This should be useful for troubleshooting that your dyndns is working fine and updated correctly.

# preparation
make sure you enable execution for the script
```
$chmod +x check-dyndns.sh
```

# usage
If you want to include the DNS name to check when calling the script (replace www.my-dyndns.com with your dyndns record):
```
$./check-dyndns.sh www.my-dyndns.com
```
If you want to enter the DNS name from within the script you will be prompted for the DNS name to perform the match.
```
$./check-dyndns.sh www.my-dyndns.com
Please enter the URL you want to check: 
```
