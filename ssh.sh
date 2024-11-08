#!/bin/bash


yellow="\e[1;33m"
normal="\e[0m"

echo -e "${yellow}ssh information${normal}" 

# SSH Service Status
ssh_status=$(systemctl is-active ssh)
echo "SSH Service Status: $ssh_status"

# SSH Configuration Check
echo "SSH Configuration Check:" 
grep "^PermitRootLogin no" /etc/ssh/sshd_config 
grep "^PasswordAuthentication no" /etc/ssh/sshd_config 
grep "^ChallengeResponseAuthentication no" /etc/ssh/sshd_config 
grep "^UsePAM yes" /etc/ssh/sshd_config 
grep "^X11Forwarding no" /etc/ssh/sshd_config 
grep "^Port " /etc/ssh/sshd_config 

# SSH Key Management
for user in $(cut -f1 -d: /etc/passwd); do
    if [ -f /home/$user/.ssh/authorized_keys ]; then
        echo "Authorized keys for $user:" 
        cat /home/$user/.ssh/authorized_keys 
    fi
done

# Firewall Settings
echo "Firewall Settings:" 
sudo ufw status 


# SSH Logs
echo "SSH Logins (Last 10 entries):" 
sudo tail -n 10 /var/log/auth.log 


# SSH Version
ssh -V



echo "SSH Audit Completed - $(date)
