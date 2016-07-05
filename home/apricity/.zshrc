# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/site-contrib/powerline.zsh

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

alias ll='ls -l'
alias la='ls -a'

docker-ip() {
  sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

# Copy bash behaviour of ESC-backspace
bindkey "^[^?" vi-backward-kill-word

export GOPATH=~/.go
export PATH=$PATH:~/.go/bin
