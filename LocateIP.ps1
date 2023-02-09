# This script prints out the location of a given IP address

# Creates a string parameter for input
param([string]$lookupIP= "")

# Prompts user for an input
if ($lookupIP -eq "" ) { $lookupIP = read-host "Enter IP address to locate" }

# An API call to ip-api.com to get the location of the IP address
$Location = Invoke-RestMethod -Method Get -Uri "http://ip-api.com/json/$lookupIP"

# Prints out the location
write-output $Location

# Exits the script successfully
exit 0
