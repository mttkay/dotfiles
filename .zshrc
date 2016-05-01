# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh

plugins=(git git-extras github brew gem gradle mvn sbt scala osx rvm themes colorize docker)

source $ZSH/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

ZSH_THEME="af-magic"
PROMPT='%{$FG[237]%}-- $(git_prompt_info)%{$reset_color%}
%(!.#.⭐  )'
RPROMPT='%{$FG[032]%}%2/%{$reset_color%}%'

source ~/.profile

# Aliases
alias gradle='gradle --daemon'
alias gradlew='./gradlew --daemon'
alias gw=gradlew

alias g='git'
alias gco='git checkout'
alias gpo='git push origin'
alias gb='git branch'
alias gf='git fetch'
alias gpr='git pull --rebase'
alias tree='tree -hCF -L 2'

alias bazooka='bazooka -srv.zone=dd'
alias bz='bazooka'
alias knife='bundle exec knife'

alias ls='ls -FGsh'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias cdp='cd ~/Projects'
alias cdmp='cd ~/Projects/mine'
alias cdandroid='cd $ANDROID_HOME'
alias cdl='cd ~/Projects/soundcloud/SoundCloud-Android'
alias cdc='cd ~/Projects/soundcloud/creators-android-novoda'
alias cdam='cd ~/Projects/soundcloud/api-mobile'
alias cdpp='cd ~/Projects/soundcloud/propeller'

alias zshconfig='atom ~/.zshrc'
alias zshreload='source ~/.zshrc'

alias rake='rake -t'

alias sshprod='ssh soundcloud@shell.int.s-cloud.net'
alias sshci='ssh mobile@chaos-slave.mobile.s-cloud.net'

alias pd='./piddog'

alias krepl=kotlinc-jvm

# Variables
#export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
#export JAVA6_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=$JAVA6_HOME
#export JDK_HOME=$JAVA_HOME
export ANDROID_HOME=~/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_SDK_HOME=$ANDROID_HOME
export ANDROID_AVD_HOME="$HOME/.android/avd"
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk/
export SCALA_HOME=/usr/local/Cellar/scala/2.10.0
export GRADLE_HOME=/usr/local/Cellar/gradle/1.6/
export GOPATH=$HOME/Projects/soundcloud/golang
export EDITOR=vim

# PATH setup
PATH=$PATH:/usr/local/sbin
PATH=$PATH:$HOME/bin
PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/android-4.2.2
PATH=$PATH:$HOME/.jenv/bin
PATH=$PATH:$GOPATH/bin
export PATH

# autoload -Uz promptinit
# promptinit
# prompt bart

#autoload -U compinit
#compinit -i

# Enable globbing for hidden files, advanced globbing
#setopt globdots
#setopt extendedglob
#setopt auto_menu
#setopt auto_cd

# Source all zsh config files excluding the plugins directory
#DOTFILES_DIR=$HOME/.dotfiles
#for config_file ($DOTFILES_DIR/**/*.zsh)
#  source $config_file

# init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Docker
eval "$(docker-machine env --shell=zsh default)"
