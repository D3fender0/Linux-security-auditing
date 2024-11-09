#!/bin/bash

# Array of important services to audit
yellow="\e[1;33m"
normal="\e[0m"


services=(
    "cron.service"
    "dbus.service"
    "docker.service"
    "containerd.service"
    "NetworkManager.service"
    "polkit.service"
    "systemd-logind.service"
    "systemd-timesyncd.service"
    "systemd-udevd.service"
    "upower.service"
    "user@1000.service"
)

# Display running services and filter by important services
echo  -e "${yellow}Auditing important running services:${normal}"
systemctl list-units --type=service --state=running | grep -E "$(IFS=\|; echo "${services[*]}")"
