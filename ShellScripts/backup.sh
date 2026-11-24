#!/bin/bash

# Check whether an argument was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a folder path."
    exit 1
fi

# Check whether the folder exists
if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Get folder name
FOLDER_NAME=$(basename "$1")

# Create backup filename
BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$FOLDER_NAME"

# Check whether backup was successful
if [ $? -eq 0 ]; then
    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "File: $BACKUP_FILE"
    echo "Size: $SIZE"

    echo "$(date): SUCCESS - $BACKUP_FILE ($SIZE)" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed."
    echo "$(date): FAILED - $1" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
