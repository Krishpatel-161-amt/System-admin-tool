#!/bin/bash

mkdir -p reports
file_path='reports/network.log'

#This is collect IP address and active Interface
{
echo "Your ip adress is:"   
ip -br addr show  
echo ""  

#This grabs the DNS server info
echo "DNS servers are:"  
grep "nameserver" /etc/resolv.conf  
echo ""  

#Ping test for connectivity
echo "Ping Test:"  
if ping -c 3 google.com   2>&1; then
	echo "Status: Internet Connected!"  
else 
	echo "Status: Internet Disconnected!"  
fi
} > "$file_path"

echo "Network report saved to $file_path"
