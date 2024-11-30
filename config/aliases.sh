# /etc/bash/bashrc.d/aliases.sh

# BEGIN ALIASES

# edit aliases
[ $(id -u) -eq 0 ] && export aliases_file="/etc/bash/bashrc.d/custom.sh" || export aliases_file="$HOME/.bashrc"
alias aliases="touch $aliases_file ; test -w $aliases_file && nano $aliases_file && source $aliases_file"

# enable color support of ls and also add handy aliases
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
# some more ls aliases
alias ll="ls -lh"
alias la="ls -lha"
alias l="ls -CF"
alias lisa="ls -lisa"
alias dd="dd status=progress"
alias _="sudo"
alias _i="sudo -i"
alias _I="sudo -i"

#  CUSTOM ALIASES

alias q="exit"
alias cl="clear"
alias rm="rm -i"
alias ls..="ls .."
alias cd..="cd .."
alias cd-="cd -"
alias off="poweroff"
alias cl="clear"
alias ipa="ip a"
alias ipr="ip r"
alias tmuxa="tmux attach"
alias _="sudo"
alias please="sudo"
alias fucking="sudo"
alias _i="sudo su -"
alias x="startx"
alias cat="bat"
alias bat="batcat"
alias rsync="rsync --progress"
alias fwcmd="firewall-cmd"

# infallible wget
alias wget="wget -c -t0 -T15"

# recursive wget
alias wget-directory="wget -c -t0 -T15 -r -np -e robots=off -R \"*.html*\""

# functions

# loop things
function loop(){
        while true; do (${@:2} && sleep $1 && clear) done
}; export -f loop
