#!/bin/bash

# report file path
report="reports/report.log"
# gets the hostname
hname=$(hostname)
# gets current date
current_date=$(date)

# makes reports folder
mkdir -p reports

# saves hostname
echo "Your Hostname is $hname" > "$report"
echo "" >> "$report"
# saves date
echo "Today is $current_date" >> "$report"
echo "" >> "$report"
# prints header for user accounts
echo "--- all user accounts ---" >> "$report"
echo "" >> "$report"
# gets all users
cat /etc/passwd >> "$report"
echo "" >> "$report"
# prints header for login accounts
echo "--- all login accounts ---" >> "$report"
echo "" >> "$report"
# finds bash users
grep "/bin/bash" /etc/passwd >> "$report"
echo "" >> "$report"
# prints header for writable files
echo "--- Sensitive Files world-writable ---" >> "$report"
echo "" >> "$report"
# finds writable files and ignores hidden dirs
find ~ -type d -name ".*" -prune -o -type f -perm -o+w -print >> "$report" 2> "reports/error.log"
