# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler gem git git-extras rails rvm vagrant go mvn)

# Customize to your needs...
# not needed anymore: changing /etc/paths fixed the folders order issue
# export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

source $ZSH/oh-my-zsh.sh

source "$HOME/dotfiles/.aliases"
source "$HOME/dotfiles/.shell_common_settings"

# autojump
[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# disable autocorrection
unsetopt correct_all

# export RUBYOPT="-ropenssl"
# export CC=gcc-4.2

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
