#!/bin/bash 

report="reports/report.log"
hname=$(hostname)
date=$(date)
mkdir -p reports
echo "Your Hostname is $hname"> "$report"

echo "" >> "$report" 

echo "Today is $date" >> "$report"

echo "" >> "$report"

echo "--- all user accounts ---" >> "$report"
echo "" >> "$report"
cat /etc/passwd >> "$report"

echo "" >> "$report"

echo "--- all login accounts ---" >> "$report"
echo "" >> "$report"
grep "/bin/bash" /etc/passwd >> "$report"

echo "" >> "$report"

echo "--- Sensitive Files world-writable ---" >> "$report"
echo "" >> "$report"
find ~ -type d -name ".*" -prune -o -type f -perm -o+w -print >> "$report" 2> "reports/error.log"

