!/bin/bash


yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow}kernel information${normal}"
version=$(uname -r)
echo "kernalversion:${version}" 

sysctl -a | grep '^net.'|head -n 2

sysctl -a | grep '^vm.'|head -n 2

sysctl -a | grep '^kernel.'|tail -n 2


