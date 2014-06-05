#!/bin/sh

shell=`ps | grep $$ | awk '{ print $4 }'`

# apt
alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'
alias sagr='sudo apt-get remove'
alias sagp='sudo apt-get purge'

# git
alias g='git'

# grep
alias G='grep -i --color=auto'

# ls
alias l='ls'
alias ll='ls -alF'
alias la='ls -A'
alias lg='ls -a | grep -i --color=auto'

# Open files like a boss. I really need it...
alias o='__open__'

# Ruby
alias rb='ruby'

# gem
alias gemi='gem install'

# Rake
# For avoiding that zsh tries to autocomplete something like "rake task[arg]"
if [ 'zsh' = $shell ]; then
  alias rake='noglob rake'
fi
alias rk='rake'

# Node.js
alias js='node'

# npm
alias npi='npm install'

# Grunt
alias gru='grunt'

# Safely remove an USB disk
alias safely_remove='sudo udisks --detach'

# Shutting down the easy way
alias Shutdown='sudo shutdown -h -P now'
alias Restart='sudo shutdown -r now'

# SimpleHttpServer
alias simple_server='python -m SimpleHTTPServer'

# Tmuxinator
alias tm='tmuxinator'

# Python
alias py='python'
alias ipy='ipython'

# pip
alias pipi='pip install'

# Vagrant
alias vag='vagrant'
alias vags='vagrant ssh'
alias vago='__vagopen__'
alias vend='vagrant suspend'

# Vim
alias v='vim'

__open__() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
__vagopen__() {
	vagrant up $1 && vagrant ssh $1
}
