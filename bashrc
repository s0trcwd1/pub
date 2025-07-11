export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -al'
alias l='ls $LS_OPTIONS -lA'
alias xshell='stty sane'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias yg='you-get --no-caption'
alias pop='you-get --itag='
alias fla='firewall-cmd --list-all'
alias srss='systemctl restart strongswan -l'
alias eth0='ifconfig enp1s0 | grep pack'
alias lll='ls -alh'
alias python='python3'
alias pp6='ping6 -n'
alias sssl='systemctl status strongswan -l'
alias nu='netstat -anupl'
alias nt='netstat -antpl'
alias tunn='tcpdump -nni tun0 host'
alias scmd='system --reload'
alias screenqq='screen -D -r'
alias screens='screen -ls'
alias fcmd='systemctl restart firewalld  -l'
alias fcmd2='firewall-cmd --reload'
alias grepv='grep -Ev "^$|[#;]"'
alias grepi='grep -i'
alias ssrswalld='systemctl restart firewalld'
alias ssrstwalld='systemctl stop firewalld'
alias sswalld='systemctl status firewalld'
alias flist='firewall-cmd --zone=public --list-all'
cd /data/
alias tcpp='tcpdump -nni any'
alias tun='tcpdump -nni tun0 ! ip6 and host !'
alias aBaiduPCS-Go='BaiduPCS-Go ls -asc'
alias dBaiduPCS-Go='BaiduPCS-Go ls -desc'
alias tBaiduPCS-Go='BaiduPCS-Go ls -time'
alias nBaiduPCS-Go='BaiduPCS-Go ls -name'
alias sBaiduPCS-Go='BaiduPCS-Go ls -size'
alias yyttt='yt-dlp -o "%(title)s.%(ext)s"'
alias yyttp='yt-dlp -o "%(playlist)s.%(ext)s"'
alias yyttpt='yt-dlp -o "%(playlist)s.%(title)s.%(ext)s"'     
alias llll="ls -l | awk '{print $9}'"
export PATH="$PATH:/opt/bin"
alias cbaliyunpan="aliyunpan ls -name --asc"
alias clbaliyunpan="aliyunpan ll -name --asc"
alias tcbaliyunpan="aliyunpan ls --time"
stty sane
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

