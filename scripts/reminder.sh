#!/bin/bash

REM_FILE="reminders"

# Ensure reminders file exists
if [ ! -f "$REM_FILE" ]; then
    touch "$REM_FILE"
fi

# Function to display all reminders
view_reminders() {
    echo "📋 Current Reminders:"
    if [ ! -s "$REM_FILE" ]; then
        echo "No reminders found."
    else
        cat "$REM_FILE"
    fi
    echo
}

# Function to add a new reminder
add_reminder() {
    read -p "Enter reminder message: " message
    read -p "Enter time (HH:MM 24-hour format): " time
    echo "$time - $message" >> "$REM_FILE"
    echo "✅ Reminder added successfully!"
}

# Function to start the reminder check loop
start_reminder_service() {
    echo "🔔 Reminder service started... (Press Ctrl+C to stop)"
    while true; do
        current_time=$(date +%H:%M)
        while IFS= read -r line; do
            reminder_time=$(echo "$line" | cut -d'-' -f1 | xargs)
            reminder_msg=$(echo "$line" | cut -d'-' -f2- | xargs)
            if [ "$current_time" == "$reminder_time" ]; then
                notify-send "⏰ Reminder" "$reminder_msg"
                echo "🔔 Reminder: $reminder_msg"
                sleep 60
            fi
        done < "$REM_FILE"
        sleep 30
    done
}

# Main menu
while true; do
    echo "=============================="
    echo "        REMINDER MENU         "
    echo "=============================="
    echo "1. View Reminders"
    echo "2. Add Reminder"
    echo "3. Start Notification Service"
    echo "4. Exit"
    echo "=============================="
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1) view_reminders ;;
        2) add_reminder ;;
        3) start_reminder_service ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice! Try again." ;;
    esac
done
