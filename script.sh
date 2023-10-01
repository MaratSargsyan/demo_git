#!/bin/bash

# Set source and backup directories
source_dir="Your/path"
backup_dir="Your/path"

# Create a timestamp for the backup folder
timestamp=$(date +%Y%m%d%H%M%S)

# Backup the source directory to a new folder with a timestamp
cp -r "$source_dir" "$backup_dir/backup_$timestamp"

# List all backup folders, sort them by modification time (oldest first),
# and delete all but the last 5
ls -1t "$backup_dir" | tail -n +6 | xargs -I {} rm -r "$backup_dir/{}"
