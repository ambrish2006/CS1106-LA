#!/bin/bash

# Define backup directory
BACKUP_DIR="/var/log/backups"

# Create the backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Define archive name with current date
ARCHIVE_NAME="$BACKUP_DIR/backup_$(date +%Y/%m/%d).tar.gz"

# Compress all .log files into the archive
tar -czf $ARCHIVE_NAME /var/log/*.log 2>/dev/null

# List the created archive
echo "Created archive: $ARCHIVE_NAME"
ls -lh $ARCHIVE_NAME

