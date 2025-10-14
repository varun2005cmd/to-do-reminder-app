#!/bin/bash

LOG_FILE="focus_sessions.log"

echo "============================="
echo "     🧘 Focus Mode Timer     "
echo "============================="
echo ""
read -p "Enter task name: " task
read -p "Enter focus duration (minutes): " duration

start_time=$(date +"%H:%M:%S")
end_time=$(date -d "+$duration minutes" +"%H:%M:%S" 2>/dev/null)

if [ -z "$end_time" ]; then
  # fallback for macOS (no `-d` flag)
  end_time=$(date -v +"${duration}M" +"%H:%M:%S" 2>/dev/null)
fi

echo ""
echo "Avoid distractions and stay productive!"
echo "Focus session for '$task' started at $start_time and will end around $end_time."
echo ""

# Wait for given duration
sleep $((duration * 60))

# Notification (works only if `notify-send` is installed and desktop supports it)
if command -v notify-send &> /dev/null; then
  notify-send "Focus Mode Complete!" "Time’s up for your '$task' session."
else
  echo "Focus Mode Complete! Time’s up for your '$task' session."
fi

echo "✅ Focus session ended at $(date +"%H:%M:%S")"

echo "Task: $task | Duration: $duration mins | Started: $start_time | Ended: $(date +"%H:%M:%S")" >> "$LOG_FILE"
echo "Session details saved in $LOG_FILE."
