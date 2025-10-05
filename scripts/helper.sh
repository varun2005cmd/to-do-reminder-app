#!/bin/bash

# Function to check if a file exists, else create it
ensure_file_exists() {
if [ ! -f "$1" ]; then
touch "$1"
echo "Created missing file: $1"
fi
}
