#!/bin/bash
yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow} memory information${normal}"
m_file="/proc/meminfo"
find=$(cat $m_file)
dis=$(echo "$find" |  head -n 5)

zombie_process=$(ps -A -o pid,stat,comm | awk '{if ($2 ~ /Z|X/) print$1}')
echo "memory infomation"
echo "$dis"


