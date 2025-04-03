#!/bin/bash

# Display current date
echo "Current Date: $(date)"

# Display logged-in users
echo "\nLogged-in Users:"
who

# Display system uptime
echo "\nSystem Uptime:"
uptime -p

# Display memory usage
echo "\nMemory Usage:"
free -h

