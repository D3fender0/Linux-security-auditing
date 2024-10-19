#!/bin/bash

# Define colors
yellow="\e[1;33m"
normal="\e[0m"

# Print header
echo -e "${yellow}User account${normal}"

# List all users from /etc/passwd
user_account=$(cut -d: -f1 /etc/passwd | sort)
echo "${user_account}"

# List all users who logged in from 'last' command
echo "Recently used"
recently_used=$(last | awk '{print $1}' | sort | uniq | head -n 5)
echo "${recently_used}"
