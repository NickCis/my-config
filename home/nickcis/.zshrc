# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/site-contrib/powerline.zsh

export EDITOR=`which vim`

alias docker-rmi-none='sudo docker images | grep '"'"'<none>'"'"' | awk '"'"'{print $3}'"'"' | xargs -I{} sudo docker rmi {}'
alias docker='sudo docker'

export DOCKER_HOST=tcp://localhost:4243

if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

alias ll='ls -l'
alias la='ls -a'
export ANDROID_HOME=/opt/android-sdk

docker-ip() {
  sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

# Copy bash behaviour of ESC-backspace
bindkey "^[^?" vi-backward-kill-word

export GOPATH=~/.go
export PATH=$PATH:~/.go/bin
