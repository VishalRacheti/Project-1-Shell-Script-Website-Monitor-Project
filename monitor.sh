#!/bin/bash

# ----------------------------
# Website Monitoring Script
# ----------------------------

# Website URL to monitor
URL="https://google.com"

# Log file path
LOGFILE="/var/log/website_monitor.log"

# Get current timestamp
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Send HTTP request
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Check if the website is up
if [ $STATUS_CODE -eq 200 ]; then
    echo "$DATE - $URL is UP (Status: $STATUS_CODE)" >> $LOGFILE
else
    echo "$DATE - $URL is DOWN (Status: $STATUS_CODE)" >> $LOGFILE
    # Send alert
    echo "Alert: $URL is DOWN (Status: $STATUS_CODE) at $DATE" | mail -s "Website Down Alert" vishalracheti7070@gmail.com
fi
