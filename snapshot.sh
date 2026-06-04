mkdir -p reports
logfile="reports/snapshot.log"
date=$(date)
user_name=$(whoami)
dir=$(pwd)
os=$(uname)

echo "=== System Snapshot ===" > "$logfile"

echo "Today is: $date" >> "$logfile"

echo "Your username is: $user_name" >> "$logfile"

id >> "$logfile"

echo "Your Operating system is: $os" >> "$logfile"

echo "Your current directory is: $dir" >> "$logfile"

ls -la ~ >> "$logfile"

echo "Snapshot successfully saved to reports/snapshot.log"
