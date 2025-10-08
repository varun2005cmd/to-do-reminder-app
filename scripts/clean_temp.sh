#!/bin/bash

# clean_temp.sh - Deletes temp, cache, and log files older than 7 days

TARGET_DIRS=("/tmp" "$HOME/.cache" "/var/tmp" "./logs")

echo "🧹 Cleaning old temporary and cache files..."

for dir in "${TARGET_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "→ Checking $dir ..."
        find "$dir" -type f -mtime +7 -exec rm -f {} \; 2>/dev/null
    fi
done

echo "✅ Cleanup complete!"

