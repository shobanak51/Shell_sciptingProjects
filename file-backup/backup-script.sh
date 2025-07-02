#!/bin/bash

# Directory to backup - change this to your folder path
SOURCE_DIR="/C/Users/prasa/Desktop/SQLProjects"

# Directory where backups will be saved
BACKUP_DIR="/C/Users/prasa/Desktop/SQLProjectsBackup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Timestamp for backup file name
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Backup file name
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
