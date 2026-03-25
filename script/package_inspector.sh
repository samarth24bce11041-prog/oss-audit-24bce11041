#!/bin/bash
# Script 2: FOSS Package Inspector
# Purpose: Checks if the chosen software is installed and prints its philosophy.

PACKAGE="vlc" # Change this to your chosen software package name

echo "Inspecting package: $PACKAGE"

# Check if package is installed (using dpkg for Debian/Ubuntu)
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy notes
case $PACKAGE in
    vlc)
        echo "Philosophy: VLC - Built by students, ensuring multimedia remains free and open for all." ;;
    apache2)
        echo "Philosophy: Apache - The web server that built the open internet." ;;
    mysql-server)
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." ;;
    firefox)
        echo "Philosophy: Firefox - A nonprofit fighting for a healthy, open web." ;;
    *)
        echo "Philosophy: An open-source tool contributing to the global digital commons." ;;
esac