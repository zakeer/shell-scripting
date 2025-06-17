#! /usr/bin/bash

while true
do
    echo "======================"
    echo "     MAIN MENU"
    echo "======================"
    echo "1. Show current date and time"
    echo "2. Show disk usage"
    echo "3. Show logged-in users"
    echo "4. Show system uptime"
    echo "5. Exit"
    echo "Enter your choice (1-5):"
    read choice

    case $choice in
        1)
            echo "Current date and time:"
            date
            ;;
        2)
            echo "Disk usage:"
            df -h
            ;;
        3)
            echo "Logged-in users:"
            who
            ;;
        4)
            echo "System uptime:"
            uptime
            ;;
        5)
            echo "Exiting... Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please select 1 to 5."
            ;;
    esac

    echo ""  # blank line for readability
    sleep 2  # pause before showing the menu again
done

