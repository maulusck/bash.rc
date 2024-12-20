# /etc/bash/bashrc.d/prompt_purple.sh

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
	PS1="\[\033[0;36m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;36m\]\342\234\227\[\033[0;36m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;44m\]root\[\033[00;36m\]@\[\033[00;37m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;36m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;36m\]]\n\[\033[0;36m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"
else
	PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
	PS1="\[\033[0;36m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;36m\]\342\234\227\[\033[0;36m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;44m\]root\[\033[00;36m\]@\[\033[00;37m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;36m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;36m\]]\n\[\033[0;36m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"
    ;;
*)
    ;;
esac
