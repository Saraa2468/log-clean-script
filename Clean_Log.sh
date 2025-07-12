#!/bin/bash
LOG_DIR="logs"
DAYS_OLD=1
ACHIVE_DIR="archive"

mkdir -p "$LOG_DIR"
mkdir -p "$ARCHIVE_DIR"
touch "$LOG_DIR/file1.log"
touch -d "2 days ago" "$LOG_DIR/oldfile.log"
echo "cleaning logs older than $DAYS_OLD days in $LOG_DIR..."

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_OLD -exec mv {} "$ARCHIVE_DIR" \;

echo "logs moved to $ARCHIVE_DIR"
