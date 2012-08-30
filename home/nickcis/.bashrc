#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h'
alias la='ls -a'
alias ll='ls -l'
eval $(dircolors -b)
PS1='[\u@\h \W]\$ '

export GREP_COLOR="1;33"
alias grep='grep --color=auto'

export LESS="-R"

export EDITOR="vim"
