
	mv /root/.bashrc /root/.bashrc.bak

 	mv /etc/screenrc /etc/screenrc.bak

 	cd /root/
  
	wget -O .bashrc /root/ https://raw.githubusercontent.com/s0trcwd1/pub/main/bashrc

	cd /etc/
 
	wget -O screenrc /etc/ https://raw.githubusercontent.com/s0trcwd1/pub/main/screenrc


	wgcp -P /root/ -O .bashrc /root/ https://raw.githubusercontent.com/s0trcwd1/pub/main/bashrc


	wget -P /etc/ -O screenrc /etc/ https://raw.githubusercontent.com/s0trcwd1/pub/main/screenrc
