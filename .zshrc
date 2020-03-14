PROMPT='%~ %# '

PATH=~/scripts:$PATH

alias ls='ls -lF'

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gcl='git clone'

alias "wifi_on"="networksetup -setairportpower en0 on"
alias "wifi_off"="networksetup -setairportpower en0 off"
alias "wifi_status"="networksetup -getairportpower en0"
