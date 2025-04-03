#!/bin/bash

# Define the archive name
ARCHIVE_NAME="log_backup_$(date +%F).tar.gz"

# Create and compress the tar archive
tar -czf $ARCHIVE_NAME /var/log

# List the created archive
echo "Created archive:"
ls -lh $ARCHIVE_NAME

