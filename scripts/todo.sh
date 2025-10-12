#!/bin/bash

TASK_FILE="scripts/tasks.txt"

# Ensure directory exists
mkdir -p "$(dirname "$TASK_FILE")"

# Function to add a task
add_task() {
    read -p "Enter the task: " task
    if [[ -n "$task" ]]; then
        echo "$task" >> "$TASK_FILE"
        echo "✅ Task added successfully!"
    else
        echo "⚠️ Task cannot be empty!"
    fi
}

# Function to view tasks
view_tasks() {
    if [ ! -f "$TASK_FILE" ] || [ ! -s "$TASK_FILE" ]; then
        echo "📭 No tasks found."
    else
        echo "📝 Your Tasks:"
        nl -w2 -s'. ' "$TASK_FILE"
    fi
}

# Function to delete a task
delete_task() {
    if [ ! -f "$TASK_FILE" ] || [ ! -s "$TASK_FILE" ]; then
        echo "📭 No tasks to delete."
        return
    fi

    echo "Select the task number to delete:"
    nl -w2 -s'. ' "$TASK_FILE"
    read -p "Task number: " tnum

    # Validate numeric input
    if ! [[ "$tnum" =~ ^[0-9]+$ ]]; then
        echo "⚠️ Invalid input! Please enter a number."
        return
    fi

    total=$(wc -l < "$TASK_FILE")
    if (( tnum < 1 || tnum > total )); then
        echo "⚠️ Invalid task number! Please choose between 1 and $total."
        return
    fi

    # Confirm deletion
    read -p "Are you sure you want to delete task #$tnum? (y/n): " confirm
    if [[ "$confirm" != [Yy] ]]; then
        echo "❌ Deletion cancelled."
        return
    fi

    # Portable sed command (macOS + Linux)
    if sed --version >/dev/null 2>&1; then
        sed -i "${tnum}d" "$TASK_FILE"        # GNU sed
    else
        sed -i '' "${tnum}d" "$TASK_FILE"    # macOS BSD sed
    fi

    echo "✅ Task deleted successfully!"
}

# Main loop
while true; do
    echo "=========================="
    echo "       TO-DO LIST         "
    echo "=========================="
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Delete Task"
    echo "4. Exit"
    echo "=========================="
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) add_task ;;
        2) view_tasks ;;
        3) delete_task ;;
        4)
            echo "👋 Exiting To-Do List. Goodbye!"
            exit 0
            ;;
        *)
            echo "⚠️ Invalid option! Please select 1-4."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
    clear
done
