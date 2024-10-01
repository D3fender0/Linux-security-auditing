#!/bin/bash
red='\e[1;31m'
normal='\e[0m'
   
echo -e " ${red}╔════════════════════════════════════════╗ "
echo "            LINUX SECURITY AUDITING TOOL            "
echo -e " ╚════════════════════════════════════════╝${normal}"
echo "###################################################################################"


# List all users from /etc/passwd
cut -d: -f1 /etc/passwd | sort > /tmp/passwd_usr

# List all users who logged in from 'last' command
last | awk '{print $1}' | sort | uniq > /tmp/loggin_usr

# Compare the two lists
comm -23 /tmp/passwd_usr /tmp/loggin_usr | uniq 2>/dev/null

