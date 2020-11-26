NL=$'\n';
PROMPT="[%n %~]$NL# "
# PROMPT='%~ %# '

PATH=/usr/local/Cellar/mysql-client/8.0.19/bin:~/bin:$PATH

alias ll='ls -lF'
alias sed10='sed -ne ":a" -e "\$p;N;11,\$D;ba"'
alias sednl='sed -e ":a" -e "N" -e "$!ba" -e "s/\n/ /g"'

export GIT_TOKEN=100a0664ca9e1e12162ee8d87036d70221468c63
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gcl='git clone'

alias "wifi_on"="networksetup -setairportpower en0 on"
alias "wifi_off"="networksetup -setairportpower en0 off"
alias "wifi_status"="networksetup -getairportpower en0"
alias "wifi_restart"="networksetup -setairportpower en0 off && networksetup -setairportpower en0 on"

export GREP_OPTIONS='--color=auto'


