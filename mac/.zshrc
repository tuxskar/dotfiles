# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="awesomepanda"
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django python osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Apache maven
export M2_HOME=/Users/tuxskar/.apache-maven-3.1.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export JAVA_HOME=/Library/Java/Home

# Android exports 
export ANDROID_HOME=/Users/tuxskar/adt-bundle-mac/sdk
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_TOOLS=$ANDROID_HOME/tools
export PATH=$ANDROID_TOOLS:$PATH

export PATH=/usr/local/bin:$PATH
export HOMEBREW_GITHUB_API_TOKEN='bf48b8f4d58de24f128945bb52a2799dd0555549'
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

alias gs='git status '
export LC_CTYPE="es_ES.utf-8"
#export VIRTUALENVWRAPPER_PYTHON=/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export PYENV_ROOT=/usr/local/opt/pyenv
#source virtualenvwrapper.sh


#postgresql
export PATH=$PATH:/Library/PostgreSQL/9.3/bin
export PG_HOST=localhost

# Raspberry pi
alias craspi='ssh raspi'
alias cxraspi='ssh -X raspi'
export PG_HOST=localhost

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
