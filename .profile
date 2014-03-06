source "$HOME/.aliases"
source "$HOME/.shell_common_settings"

# Shell history settings
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# Prompt style
#export PS1="\u@\h:\[\033[0;32m\]\w\[\033[0m\]$ "
export PS1="\[\033[0;32m\]\w\[\033[0m\]$ "

