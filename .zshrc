PROMPT='%~ %# '

PATH=~/scripts:$PATH

alias ls='ls -lF'
alias sed10='sed -ne":a" -e "\$p;N;11,\$D;ba"'

export GIT_TOKEN=''
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gcl='git clone'
alias repos="curl -i -H \"Authorization: token $GIT_TOKEN\" \
      https://api.github.com/user/repos | sed -n '/full_name/p'"

alias "wifi_on"="networksetup -setairportpower en0 on"
alias "wifi_off"="networksetup -setairportpower en0 off"
alias "wifi_status"="networksetup -getairportpower en0"
