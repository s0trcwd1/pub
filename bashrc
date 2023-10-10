
####  find /mnt/blockstorage/data/bili -type f -exec cp /dev/null {} 2>&1 \;

 

# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Add

#\cp -a /var/log/openvpn/ /mnt/blockstorage/index/log/
# \cp  /var/log/openvpn/openvpn.log /mnt/blockstorage/index/ty/openvpn_tcp.log

#nl /mnt/blockstorage/index/ty/openvpn_tcp.log >/mnt/blockstorage/index/ty/openvpn_tcpnl.log


alias yg='you-get --no-caption'
#alias ytbb='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]'
#alias ygyg='you-get --no-caption --itag'

alias pop='you-get --itag='

#alias yg='you-get --no-caption --skip-existing-file-size-check -I'
#alias yg='you-get --no-caption --skip-existing-file-size-check'
alias fla='firewall-cmd --list-all'
alias srss='systemctl restart strongswan -l'

alias eth0='ifconfig eth0 | grep pack'
alias haxa='ssh root@haxa.iikk.ml'
alias haxb='ssh root@haxb.iikk.ml'
alias vc1='ssh root@vc1.iikk.ml'
alias vc2='ssh root@vc2.iikk.ml'

alias nata='ssh root@nata.iikk.ml'
alias natb='ssh root@natb.iikk.ml'
alias lll='ls -alh'
alias ll='ls -al'
alias python='python3'
alias pp6='ping6 -n'

alias nu='netstat -anupl'
alias nt='netstat -antpl'

alias tunn='tcpdump -nni tun0 host'
#alias sctl= 'systemctl'
alias scmd='system --reload'
alias screenqq='screen -D -r'
alias screens='screen -ls'

alias fcmd='systemctl restart firewalld  -l'
alias fcmd2='firewall-cmd --reload'
#alias grepv='grep -v "\#"'
alias grepv='grep -Ev "^$|[#;]"'
alias grepi='grep -i'
#alias grepvv='grep -v "^$"'
alias ssrswalld='systemctl restart firewalld'
alias ssrstwalld='systemctl stop firewalld'

alias sswalld='systemctl status firewalld'
alias flist='firewall-cmd --zone=public --list-all'
alias tcpp='tcpdump -nni any'
alias bts='systemctl start transmission-daemon.service'
alias btd='systemctl stop transmission-daemon.service'
alias btss='systemctl status transmission-daemon.service'
alias qbits='systemctl start qbittorrent.service'
alias qbitd='systemctl stop qbittorrent.service'
alias qbitss='systemctl status qbittorrent.service'





alias nylist='lll -Sart /data/ny/'
alias nylist2='ls -1 -Sart /data/ny/'
alias nylist3='ls -1 -Sart /data/ny/oooo/'

#alias tun0='tcpdump -nni tun0 ! port 22'
#alias tun='tcpdump -nni tun0 ! ip6 and ! host'
alias tun='tcpdump -nni tun0 ! ip6 and host !'
alias yytt='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]'


#title
alias yyttt='yt-dlp -o "%(title)s.%(ext)s"'

#playlist
alias yyttp='yt-dlp -o "%(playlist)s.%(ext)s"'

#playlist_title
alias yyttpt='yt-dlp -o "%(playlist)s.%(title)s.%(ext)s"'     


alias llll="ls -l | awk '{print $9}'"
export PATH="$PATH:/opt/bin"

cd /mnt/blockstorage/sh/
#cd /n/
#End
##############

alias cbaliyunpan="aliyunpan ll -name --asc"


# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

. "/root/.acme.sh/acme.sh.env"

#screen -wipe
