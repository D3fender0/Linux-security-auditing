#!/bin/bash
yellow="\e[1;33m"
normal="\e[0m"

# System Information
echo -e "${yellow}System Information${normal}"
sudo dmidecode --type 1

# CPU Information
echo -e "${yellow}CPU Information${normal}"
rows=("model name" "flags" "bugs" "cache size" "cpu cores" "stepping" "vendor_id" "microcode")

for row in "${rows[@]}"; do
   grep -m 1 "$row" /proc/cpuinfo || echo "$row: Not found"
done

# USB Information
echo -e "${yellow}USB Information${normal}"
usb=$(lsusb)
echo "$usb"

# Hard Disk Details
echo -e "${yellow}Hard Disk Details${normal}"
hard_disk=$(lsblk)
echo "$hard_disk"


