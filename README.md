
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
