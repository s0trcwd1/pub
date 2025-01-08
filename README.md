
	mv /root/.bashrc /root/.bashrc.bak

 	mv /etc/screenrc /etc/screenrc.bak

	wget -P /root/ https://raw.githubusercontent.com/s0trcwd1/pub/main/bashrc

 	mv /root/bashrc /root/.bashrc

	wget -P /etc/ https://raw.githubusercontent.com/s0trcwd1/pub/main/screenrc



###
	mkdir -p ~/.ssh/
 
	cd ~/.ssh/

 	mv authorized_keys authorized_keys.bak.bak

	wget "https://raw.githubusercontent.com/s0trcwd1/pub/main/authorized_keys"
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

    curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh

    chmod +x openvpn-install.sh

#
     cd /etc/openvpn/

     mv -f checkpsw.sh checkpsw.sh.bak
     
     wget "https://raw.githubusercontent.com/s0trcwd1/pub/refs/heads/main/checkpsw.sh"
 
#

     mv -f psw-file psw-file.bak

     echo 'username1 password1' >> /etc/openvpn/psw-file



#

# 追加以下内容

    vi /etc/openvpn/server.conf
    
script-security 3

auth-user-pass-verify /etc/openvpn/checkpsw.sh via-env

username-as-common-name

verify-client-cert none

/etc/openvpn/server.conf


    systemctl restart openvpn@server

    systemctl status openvpn@server | nl

#

ovpv

auth-user-pass
