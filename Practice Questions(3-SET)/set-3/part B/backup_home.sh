#!/bin/bash

# Define backup directory with timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backups/home_backup_$TIMESTAMP"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Copy /home to the backup directory, excluding cache and socket files
rsync -a --exclude='*.sock' --exclude='.cache' /home "$BACKUP_DIR"

# Define archive name
ARCHIVE_NAME="/backups/home_backup_$TIMESTAMP.tar.gz"

# Compress the backup, excluding socket files
tar --exclude=*.sock --exclude=.cache -czf "$ARCHIVE_NAME" -C "$BACKUP_DIR" .

# Verify the archive integrity
if tar -tzf "$ARCHIVE_NAME" &>/dev/null; then
    echo "Backup successfully created: $ARCHIVE_NAME"
else
    echo "Backup failed or is corrupted!"
    exit 1
fi

# Cleanup: Remove uncompressed backup folder after compression
rm -rf "$BACKUP_DIR"

echo "Backup completed successfully!"

