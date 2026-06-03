#!/bin/bash

while true; do
	clear

echo "1) Run Snapshot Tool -> output: logs/"
echo "2) Run Audit Tool -> output: reports/"
echo "3) Run Disk Space Checker Tool -> terminal"
echo "4) Run Network Tool -> reports/"
echo "5) Run All"
echo "6) Exit"

read -p "Enter choice [1-6]: " choice

case $choice in
	1) bash snapshot.sh
	   ;;

	2) bash audit.sh
	   ;;

	3) python3 DiskDriver.py
	   ;;

	4) bash network.sh
	   ;;	

	5) echo "Running all tools..."
	   bash snapshot.sh
	   bash audit.sh
	   python3 DiskDriver.py
	   bash network.sh
	   ;;

	6) echo "Exiting SysAdminTool..."
	   break
	   ;;

	*) echo "Invalid option! Please press Enter to try again."
	   ;;
esac

# This pauses the screen so the user can actually read the tool's output 
 # before the loop clears the screen again.
if [[ $choice != 6 ]]; then
read -p "Press [Enter] to return to the menu..." temp_placeholder
fi
done

 
