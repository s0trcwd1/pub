targz
#

    wget  "https://github.com/s0trcwd1/pub/raw/refs/heads/main/openvpnTHIRD.tat.gz"

#
    
    wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/i.sh"
    bash i.sh

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




        wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/i.sh"
   
#


        wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh

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


