#!/bin/bash

# makes reports folder
mkdir -p reports
# log file path
logfile="reports/snapshot.log"
# gets current date
current_date=$(date)
# gets username
user_name=$(whoami)
# gets current dir
dir=$(pwd)
# gets os name
os=$(uname)

# creates snapshot header
echo "=== System Snapshot ===" > "$logfile"
# saves date
echo "Today is: $current_date" >> "$logfile"
# saves username
echo "Your username is: $user_name" >> "$logfile"
# saves user id info
id >> "$logfile"
# saves os name
echo "Your Operating system is: $os" >> "$logfile"
# saves current dir
echo "Your current directory is: $dir" >> "$logfile"
# lists home dir contents
ls -la ~ >> "$logfile"

# prints success message
echo "Snapshot successfully saved to $logfile"
