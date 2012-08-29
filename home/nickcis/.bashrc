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

function proml
{
	case $TERM in
		xterm*|*rxvt*)
			local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
			;;
		*)
			local TITLEBAR=''
			;;
	esac

	PS1="${TITLEBAR}\
		[\$(date +%H%M)]\
		[\u@\h:\w]\
		\$ "
	PS2='> '
	PS4='+ '
}
