#!/bin/bash
yellow="\e[1;33m"
normal="\e[0m"
echo "${yellow} Process Monitoring${normal}"
zombie_process=$(ps -A -o pid,stat,comm | awk '{if ($2 ~ /Z|X/) print$1}')

if [ -z "$zombie_process" ]; then
   echo "no zombie process found"
else
   echo "found zombie process with PID"
   echo "$zombie_process"
fi

bottlenecks=$(ps -A -o pid,stat,comm | awk '{if ($2=="D") print$1}')

if [ -z "$bottlenecks" ];then
   echo "NO process were waiting for I/O requests"

else
        echo "one or more iinformation which were waiting to get I/O request"
        echo "status 'D' indicate the bottlenecks"
       echo "$bottlenecks"
fi
