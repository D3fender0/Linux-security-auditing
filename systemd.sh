#!/bin/bash

yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow}system performance${normal}"

# 1. CPU Usage
echo "1. Checking CPU Usage"
echo "Using top to display CPU usage:"
top -b -n 1 | head -n 10  # Run top in batch mode to capture output
echo

echo "------------------------------------------------------------------------------------------"
echo "2.Using mpstat for CPU stats per core (requires sysstat package):"
mpstat -P ALL 1 1
echo


echo "------------------------------------------------------------------------------------------"




echo "3.Using df for disk space usage of filesystems:"
df -h
echo


echo "------------------------------------------------------------------------------------------"

# 4. Network Usage
echo "4. Checking Network Usage"
echo "Using netstat to display active network connections and listening ports:"
netstat -tuln
echo

echo "------------------------------------------------------------------------------------------"






# 6. System Load and Uptime
echo "5. Checking System Load and Uptime"
echo "Current load average and uptime:"
uptime
echo


echo "------------------------------------------------------------------------------------------"





#Some commands require packages like sysstat, iftop, and iotop. Install them as needed using:
sudo apt install sysstat iftop iotop

                                                                                                                                                                                                                                            
┌──(root㉿kali)-[/home/kali/Linux-security-auditing]
└─# cat systemd.sh 
#!/bin/bash

yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow}system service${normal}"

# 1. CPU Usage
echo "1. Checking CPU Usage"
echo "Using top to display CPU usage:"
top -b -n 1 | head -n 10  # Run top in batch mode to capture output
echo

echo "------------------------------------------------------------------------------------------"
echo "2.Using mpstat for CPU stats per core (requires sysstat package):"
mpstat -P ALL 1 1
echo


echo "------------------------------------------------------------------------------------------"




echo "3.Using df for disk space usage of filesystems:"
df -h
echo


echo "------------------------------------------------------------------------------------------"

# 4. Network Usage
echo "4. Checking Network Usage"
echo "Using netstat to display active network connections and listening ports:"
netstat -tuln
echo

echo "------------------------------------------------------------------------------------------"






# 6. System Load and Uptime
echo "5. Checking System Load and Uptime"
echo "Current load average and uptime:"
uptime
echo


echo "------------------------------------------------------------------------------------------"





#Some commands require packages like sysstat, iftop, and iotop. Install them as needed using:
sudo apt install sysstat iftop iotop
