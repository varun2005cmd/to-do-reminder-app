#!/bin/bash

TASK_FILE="tasks.txt"

# Check if the file exists
if [ ! -f "$TASK_FILE" ]; then
    echo "❌ No task file found! Add one using todo.sh"
    exit 1
fi

# Check if the file is empty
if [ ! -s "$TASK_FILE" ]; then
    echo "⚠️  Task file is empty. Add some tasks first!"
    exit 0
fi

# Display pending tasks (not marked as [x])
echo "🌞 Good day! Here are your pending tasks:"
grep -v "^\[x\]" "$TASK_FILE" || echo "🎉 No pending tasks — all caught up!"
