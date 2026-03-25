#!/bin/bash
# Script 3: Disk and Permission Auditor
# Purpose: Loops through directories to check size and ownership.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

# Check for software config directory (Example: VLC)
CONF_DIR="$HOME/.config/vlc"
if [ -d "$CONF_DIR" ]; then
    echo "------------------------------------------"
    echo "Software Config: $CONF_DIR exists."
    ls -ld "$CONF_DIR"
fi