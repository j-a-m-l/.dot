#!/bin/sh

shell=`ps | grep $$ | awk '{ print $4 }'`

# apt
alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'

# Bundle
alias be='bundle exec'

# git
alias g='git'

# grep
alias ge='grep -i'

# Grunt
alias grach='grunt && grunt watch'

# ls
alias l='ls'
alias ll='ls -alF'
alias la='ls -A'
alias lg='ls -a | grep -i'

# Open like a boss. I really need it...
alias o='__open__'

# Ruby
alias rb='ruby'

# Rake
# For avoiding that zsh tries to autocomplete something like "rake task[arg]"
if [ 'zsh' = $shell ]; then
  alias rake='noglob rake'
fi
alias rk='rake'

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
