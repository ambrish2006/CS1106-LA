#!/bin/bash

# Define archive directory and filename
ARCHIVE_DIR="/var/log/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_FILE="$ARCHIVE_DIR/logs_backup_$TIMESTAMP.tar.gz"

# Ensure the backup directory exists
sudo mkdir -p "$ARCHIVE_DIR"

# List all .log files before archiving
echo "Listing all .log files in /var/log:"
find /var/log -type f -name "*.log"

# Archive all .log files
echo "Archiving log files to $ARCHIVE_FILE..."
sudo tar -czf "$ARCHIVE_FILE" /var/log/*.log 2>/dev/null

# Truncate the original log files (clear contents without deleting)
echo "Clearing log files..."
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Confirm operation
echo "Operation completed! Archived logs:"
ls -lh "$ARCHIVE_FILE"

echo "Log files after clearing:"
find /var/log -type f -name "*.log" -exec ls -lh {} \;

