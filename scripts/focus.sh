#!/bin/bash
LOG_FILE="focus_sessions.log"

echo "============================="
echo "     🧘 Focus Mode Timer     "
echo "============================="
echo ""
read -p "Enter task name: " task
read -p "Enter focus duration (minutes): " duration

start_time=$(date +"%H:%M:%S")
end_time=$(date -d "$duration minutes" +"%H:%M:%S")

  GNU nano 8.6                                                                                     scripts/focus.sh                                                                                     Modified
echo "Avoid distractions and stay productive!"

sleep $((duration * 60))

notify-send "Focus Mode Complete!" "Time’s up for your '$task' session."
echo "✅ Focus session ended at $(date +"%H:%M:%S")"

echo "Task: $task | Duration: $duration mins | Started: $start_time | Ended: $(date +"%H:%M:%S")" >> "$LOG_FILE"
echo "Session details saved in $LOG_FILE."




