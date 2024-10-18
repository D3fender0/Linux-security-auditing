#!/bin/bash
yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow} memory information${normal}"
m_file="/proc/meminfo"
find=$(cat $m_file)
dis=$(echo "$find" |  head -n 5)



