#!/bin/bash

# Define color codes
yellow="\e[1;33m"
normal="\e[0m"

# List of default system accounts to exclude
default_accounts=(
    "root"
    "daemon"
    "bin"
    "sys"
    "sync"
    "games"
    "man"
    "lp"
    "mail"
    "news"
    "uucp"
    "proxy"
    "www-data"
    "backup"
    "list"
    "irc"
    "_apt"
    "nobody"
    "systemd-network"
    "mysql"
    "tss"
    "strongswan"
    "systemd-timesync"
    "redsocks"
    "rwhod"
    "iodine"
    "messagebus"
    "miredo"
    "redis"
    "usbmux"
    "mosquitto"
    "tcpdump"
    "sshd"
    "_rpc"
    "dnsmasq"
    "statd"
    "avahi"
    "stunnel4"
    "Debian-snmp"
    "_gvm"
    "speech-dispatcher"
    "sslh"
    "postgres"
    "pulse"
    "saned"
    "inetsim"
    "lightdm"
    "geoclue"
    "king-phisher"
    "polkitd"
    "nm-openvpn"
    "rtkit"
    "colord"
    "nm-openconnect"
    "_gophish"
)

# Convert default_accounts array to a pattern for grep
exclude_pattern=$(printf "|^%s$" "${default_accounts[@]}")
exclude_pattern=${exclude_pattern:1}  # Remove leading '|'

# Print header
echo -e "${yellow}User Accounts${normal}"

# List all users from /etc/passwd, excluding default accounts
user_accounts=$(cut -d: -f1 /etc/passwd | grep -Ev "$exclude_pattern" | sort)

# Print the list of users
for user in $user_accounts; do
    echo "$user"
done
