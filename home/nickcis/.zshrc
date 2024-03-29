powerline-daemon -q
source /usr/share/powerline/bindings/zsh/powerline.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
export LS_COLORS=$LS_COLORS:'di=0;94:'

alias notification-complete='paplay /usr/share/sounds/freedesktop/stereo/complete.oga'

if [ -f /usr/share/nvm/init-nvm.sh ]; then
    source /usr/share/nvm/init-nvm.sh
else
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
