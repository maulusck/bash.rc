# /etc/bash/bashrc.d/aliases_void.sh

# Void linux specific aliases

# show services
alias svall='sudo sv status /var/service/*'
alias sv='sudo sv'
alias vsv='sudo vsv'
alias svlogtail='sudo svlogtail'

# xbps shorts
alias xinstall='sudo xbps-install -Suvy'
alias xremove='sudo xbps-remove -oOvy'
alias xsearch='xbps-query -Rs'
