#!/bin/bash

# Always refer to the file relative to the script location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TASK_FILE="$SCRIPT_DIR/tasks.txt"

# Check if task file exists
if [ ! -f "$TASK_FILE" ]; then
    echo "❌ No task file found! Add one using todo.sh"
    exit 1
fi

# Check if it's empty
if [ ! -s "$TASK_FILE" ]; then
    echo "⚠️  Task file is empty. Add some tasks first!"
    exit 0
fi

# Show pending tasks
echo "🌞 Good day! Here are your pending tasks:"
grep -v "^\[x\]" "$TASK_FILE" || echo "🎉 No pending tasks — all caught up!"
