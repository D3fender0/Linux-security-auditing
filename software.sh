#!/bin/bash

yellow="\e[1;33m"
normal="\e[0m"


echo -e "${yellow} software${normal}"
# Create the output file in /tmp directory
OUTPUT_FILE="/tmp/package-list.txt"

# Ensure the output file is empty before starting
> "$OUTPUT_FILE"

# Using apt (Advanced Package Tool)
echo "1. List all installed packages with apt" >> "$OUTPUT_FILE"
apt list --installed >> "$OUTPUT_FILE"
echo "--------------------------------------" >> "$OUTPUT_FILE"
echo >> "$OUTPUT_FILE"

# Using dpkg (Debian Package Management System)
echo "3. List all installed packages with dpkg" >> "$OUTPUT_FILE"
dpkg -l >> "$OUTPUT_FILE"
echo "--------------------------------------" >> "$OUTPUT_FILE"
echo >> "$OUTPUT_FILE"

echo "Output has been written to $OUTPUT_FILE"

