	wget https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/syy40bcookiesbytb.sh


	sed "s/rclone\ copy\ .\/\ \/data\/syy40/rclone\ copy\ .\/\ \/data\/${i}/" syy40bcookiesbytb.sh



targz
#

    wget  "https://github.com/s0trcwd1/pub/raw/refs/heads/main/openvpnTHIRD.tat.gz"


cd /data/

rm -rf /etc/openvpn/*

tar -zxvf openvpnTHIRD.tat.gz

ls -al  /etc/openvpn/

cp -r openvpn/*  /etc/openvpn/

ls -al  /etc/openvpn/     

systemctl restart openvpn@server



#
    apt install screen -y
    
    wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/i.sh"
    bash i.sh

systemctl restart ssh

systemctl restart sshd

hostnamectl set-hostname 


#


 	mv /etc/screenrc /etc/screenrc.bak

	
 	
	wget -P /etc/ https://raw.githubusercontent.com/s0trcwd1/pub/main/screenrc



###

##rclone sftp


[sjc]

type = sftp

host = xxx

port = xxx

user = root

key_file = ~/.ssh/id_rsa

shell_type = unix

#

    https://www.soulchild.cn/post/1782/

#

openvpn

    
    wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/openvpn-install.sh"
    
    chmod +x openvpn-install.sh

#
     cd /etc/openvpn/

     mv -f checkpsw.sh checkpsw.sh.bak
     
     wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/checkpsw.sh"
 
#    
     chmod 755 checkpsw.sh

     mv -f psw-file psw-file.bak

     echo 'username1 password1' >> /etc/openvpn/psw-file



#

# 追加以下内容
    
    echo "
    
    script-security 3

    auth-user-pass-verify /etc/openvpn/checkpsw.sh via-env

    username-as-common-name

    verify-client-cert none" >> /etc/openvpn/server.conf


#
    systemctl restart openvpn@server

    systemctl status openvpn@server | nl

#

ovpv

auth-user-pass

Alpine:

     mkdir -p /dev/net
     
     mknod /dev/net/tun c 10 200 

     chmod 600 /dev/net/tun


#

     wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/openvpn-install.alpine.sh"
    
     apk add bash

     bash openvpn-install.sh


