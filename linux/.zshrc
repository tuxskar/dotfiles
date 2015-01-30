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
plugins=(git django python virtualwrapper)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Android exports 
#export ANDROID_HOME=/Users/tuxskar/adt-bundle-mac/sdk
#export ANDROID_SDK=$ANDROID_HOME
#export ANDROID_TOOLS=$ANDROID_HOME/tools
#export PATH=$ANDROID_TOOLS:$PATH

#export PATH=/usr/local/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
#export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:${PKG_CONFIG_PATH}
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export LC_CTYPE="es_ES.utf-8"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh



#postgresql
#export PATH=$PATH:/Library/PostgreSQL/9.3/bin
#export PG_HOST=localhost

alias instala='sudo apt-get install '
alias busca='apt-cache search '
alias gs='git status '

#django-extensions
alias urls_for='workon gst; python manage.py show_urls | grep '
alias buscar='grep -rn '

#Virtualenvwrapper
alias wn="workon "
alias ges="workon gst"
alias vges="workon gst; vim ."
#+ django
alias rges="workon gst; python manage.py runserver_plus"
alias sges="workon gst; python manage.py shell_plus"

#python django
alias sp="python manage.py shell_plus"
alias rp="python manage.py runserver_plus"
alias rs="python manage.py runserver"
alias s="python manage.py shell"

#voice for devs app
alias dev-voice="sh /home/tuxskar/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh"

#Environmnent unity
alias ur="setsid unity"

# ssh Connections
alias cgst="cat ~/.ssh/gst_pass | xclip -sel clip; ssh gst"
alias cgst2="cat ~/.ssh/gst2_pass | xclip -sel clip; ssh gst2"
alias cigst="cat ~/.ssh/igst_pass | xclip -sel clip; ssh igst"
alias cmyigst="cat ~/.ssh/mysql-igst_pass | xclip -sel clip; ssh mysql-igst"
alias cdemogst="cat ~/.ssh/gst_demo_pass | xclip -sel clip; ssh gst_demo"
alias ckami="cat ~/.ssh/kami_pass | xclip -sel clip; ssh kami"

# Wan
alias wan="cd /home/tuxskar/projects/wan/intrepidJS/wantrepidJS"
alias vwan="wan ; vim ."
alias rwan="wan ; nodemon app"
alias nowan="cd /home/tuxskar/projects/wan/intrepidJS/wantrepidJS/modules/nodewan"
alias vnowan="nodewan ; vim ."

NPM_PACKAGES="/home/tuxskar/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

alias nexus-pkg="echo AUF-F-4060465 | xclip -sel clip"
alias bit_wt="cat ~/.pass/bitbucket_wtelecom | xclip -sel clip"

