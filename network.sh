#!/bin/bash

# makes reports folder
mkdir -p reports
# file path
file_path="reports/network.log"

# saves network info block
{
    # prints ip header
    echo "Your IP address is:"
    # gets ip address
    ip -br addr show
    echo ""

    # prints dns header
    echo "DNS servers are:"
    # gets dns servers
    grep "nameserver" /etc/resolv.conf
    echo ""

    # prints ping header
    echo "Ping Test:"
    # pings google to check internet
    if ping -c 3 google.com 2>&1; then
        # prints connected status
        echo "Status: Internet Connected!"
    else
        # prints disconnected status
        echo "Status: Internet Disconnected!"
    fi
} > "$file_path"

# prints success message
echo "Network report saved to $file_path"
