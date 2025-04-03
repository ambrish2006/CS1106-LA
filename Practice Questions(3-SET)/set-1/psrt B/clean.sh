#!/bin/bash

# List all .tmp files in /tmp
echo "Temporary files before deletion:"
ls /tmp/*.tmp 2>/dev/null

# Remove all .tmp files from /tmp
rm -f /tmp/*.tmp

echo "Temporary files after deletion:"
ls /tmp/*.tmp 2>/dev/null || echo "All .tmp files deleted."

