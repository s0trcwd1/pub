
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

     echo 'username1 password1' >> /etc/openvpn/psw-file

     systemctl restart openvpn-server@server


#

# 追加以下内容
script-security 3
auth-user-pass-verify /etc/openvpn/checkpsw.sh via-env
username-as-common-name
verify-client-cert none

/etc/openvpn/server.conf



#

ovpv

auth-user-pass
