#!/bin/bash
if [ -f tasks.txt ]; then
  echo "🌞 Good day! Here are your pending tasks:"
  grep -v "\[x\]" tasks.txt
else
  echo "No tasks found! Add one using todo.sh"
fi
