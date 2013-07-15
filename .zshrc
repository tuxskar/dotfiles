# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
DEFAULT_USER="skar"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip python django)

source $ZSH/oh-my-zsh.sh

#tmux setup
export EDITOR="vim"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Customize to your needs...
export PATH=/home/skar/bin:~/bin:/home/skar/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/android-sdks/tools:~/android-sdks/platform-tools


alias busca="apt-cache search"
alias instala="sudo apt-get install"
alias gs="git status"
alias ga="git add "
alias gc="git commit -m "
alias gau="git add -u "
alias pytestv="python -m unittest discover -v -p '*_test.py'"
alias pytest="python -m unittest discover -p '*_test.py'"
alias pytest-cover="nosetests --with-cov --cov-report term-missing --cov ordenley ordenley/tests/"
alias pytest-covers="nosetests --with-cov --cov-report term --cov ordenley ordenley/tests/"
alias buscafile='find . -name "*.py" -exec grep -H "algo" {} \;'
alias assistance-on='gsettings set org.gnome.desktop.interface toolkit-accessibility true'
alias orden-ssh="git remote set-url origin git@github.com:tuxskar/ord-en-ley.git"
alias orden-https="git remote set-url origin https://github.com/tuxskar/ord-en-ley.git"

source /usr/local/bin/virtualenvwrapper.sh
