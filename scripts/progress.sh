#!/bin/bash

TASK_FILE="scripts/tasks.txt"

# Check if task file exists
if [ ! -f "$TASK_FILE" ]; then
    echo "No task file found. Run todo.sh to create one."
    exit 1
fi

# If file is empty
if [ ! -s "$TASK_FILE" ]; then
    echo "No tasks found."
    exit 0
fi

# Count total tasks
total_tasks=$(grep -c ".*" "$TASK_FILE")

# Count completed tasks (marked with [x])
completed_tasks=$(grep -c "^\[x\]" "$TASK_FILE" 2>/dev/null)

# Count pending tasks
pending_tasks=$((total_tasks - completed_tasks))

# Display progress
echo "=============================="
echo "        TASK PROGRESS          "
echo "=============================="
echo "Total Tasks:     $total_tasks"
echo "Completed:       $completed_tasks ✅"
echo "Pending:         $pending_tasks ⏳"
echo "------------------------------"

if [ $total_tasks -gt 0 ]; then
    percent=$((completed_tasks * 100 / total_tasks))
    echo "Progress:        $percent%"
else
    echo "Progress:        0%"
fi
echo "=============================="
echo

# Ask if user wants to mark tasks complete
read -p "Would you like to update a task status? (y/n): " ans
if [[ $ans =~ ^[Yy]$ ]]; then
    nl -w2 -s'. ' "$TASK_FILE"
    read -p "Enter the task number to toggle status: " num
    sed -i "${num}s/^\[x\]/\[ \]/;t;${num}s/^\[ \]/\[x\]/" "$TASK_FILE"
    echo "Task status updated!"
fi
