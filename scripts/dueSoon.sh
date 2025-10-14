#!/bin/bash
# dueSoon.sh — lists tasks due in the next 24 hours

echo "🕒 Checking for tasks due within 24 hours..."

# Assuming tasks are stored in data/tasks.json
if [ ! -f "data/tasks.json" ]; then
  echo "❌ No task file found (data/tasks.json missing)"
  exit 1
fi

# Filter tasks due in next 24h
jq '.tasks[] | select(((.due | fromdate) - now) < 86400 and ((.due | fromdate) - now) > 0)' data/tasks.json