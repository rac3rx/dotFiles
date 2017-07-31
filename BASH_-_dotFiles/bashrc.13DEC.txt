# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export http_proxy=http://192.168.0.3:8888
export https_proxy=http://192.168.0.3:8888

#
# POWERLINE
#
#if [ -d "$HOME/.local/bin" ]; then
#        PATH="$HOME/.local/bin:$PATH"
#fi

#if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi

#
# 256 colors
#
export TERM=xterm-256color
#
# HISTORY
#
export HISTCONTROL=ignorespace
#export HISTTIMEFORMAT="%m/%d/%y %T"
#export HISTTIMEFORMAT="%h/%d - %H:%M:%S "
#1002  Apr/30 - 11:46:16 grep duncan /var/log/maillog
export HISTTIMEFORMAT="%H:%M:%S/%d%h%y "
#alias hfix='history -n && history | sort -k2 -k1nr | uniq -f1 | sort -n | cut -c8- > ~/.tmp$$ && history -c && history -r ~/.tmp$$ && history -w && rm ~/.tmp$$'  
#HISTCONTROL=ignorespace  
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"  
shopt -s extglob  
HISTSIZE=100000
HISTFILESIZE=100000
export HISTIGNORE="!(+(*\ *))"  
#PROMPT_COMMAND="hfix; $PROMPT_COMMAND" 
#
# prevent PROMPT_COMMAND variable from clobbering screen window/tab titles 
#
if [ -e /etc/sysconfig/bash-prompt-screen ]; then
    PROMPT_COMMAND=/etc/sysconfig/bash-prompt-screen
else
## RHEL 7
    PROMPT_COMMAND='printf "\033k%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'

## RHEL 6
    PROMPT_COMMAND='printf "\033]0;%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
fi

TERM=xterm-256color
export PATH=$PATH:~/bin

#
# kanban bash
#
alias k=kanban
export EDITOR=vim
