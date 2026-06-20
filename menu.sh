#!/bin/bash

# loops the menu
while true; do
    # clears terminal
    clear
    # prints options
    echo "1) Run Snapshot Tool -> output: reports/"
    echo "2) Run Audit Tool -> output: reports/"
    echo "3) Run Disk Space Checker Tool -> terminal"
    echo "4) Run Network Tool -> reports/"
    echo "5) Run All"
    echo "6) Exit"

    # gets user choice
    read -p "Enter choice [1-6]: " choice

    # runs chosen tool
    case $choice in
        1)
            bash snapshot.sh
            ;;
        2)
            bash audit.sh
            ;;
        3)
            python3 DiskDriver.py
            ;;
        4)
            bash network.sh
            ;;
        5)
            # runs everything
            echo "Running all tools..."
            bash snapshot.sh
            bash audit.sh
            python3 DiskDriver.py
            bash network.sh
            ;;
        6)
            # exits menu
            echo "Exiting SysAdminTool..."
            break
            ;;
        *)
            # handles bad input
            echo "Invalid option! Please press Enter to try again."
            ;;
    esac

    # pauses before clearing screen
    if [[ "$choice" != "6" ]]; then
        read -p "Press [Enter] to return to the menu..." temp_placeholder
    fi
done
