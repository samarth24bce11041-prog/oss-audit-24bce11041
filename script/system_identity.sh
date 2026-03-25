#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="[Samarth Dwivedi]"
SOFTWARE_CHOICE="[ VLC Media Player]"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep "PRETTY_NAME" | cut -d'=' -f2)
CURRENT_DATE=$(date)

# --- Display ---
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student: $STUDENT_NAME"
echo "Software Choice: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home        : $HOME"
echo "Uptime      : $UPTIME"
echo "Distribution: $DISTRO"
echo "Current Date: $CURRENT_DATE"
echo "------------------------------------------"
echo "Message: This OS is powered by the Linux Kernel (GPL v2 License)."
echo "=========================================="