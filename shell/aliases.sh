#!/bin/sh

shell=`ps | grep $$ | awk '{ print $4 }'`

# apt
alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'
alias sagr='sudo apt-get remove'
alias sagp='sudo apt-get purge'
alias sacs='sudo apt-cache search'

# bower
alias bowi='bower install'
alias bowie='bower install --save'

# git
alias g='git'

# grep
alias G='grep -i --color=auto'
alias gy='__grepify__'

# ls
alias l='ls'
alias ll='ls -alF'
alias la='ls -A'
alias lg='ls -a | grep -i --color=auto'

# use less (no pun intended)
alias ly='__lessify__'

# man
alias m='man'

# Make
alias mk='make'
alias mki='make install'

# Open files like a boss. I really need it...
alias o='__open__'

# Ruby
alias rb='ruby'

# gem
alias gemi='gem install'

# Rails
alias ra='rails'

# Rake
# For avoiding that zsh tries to autocomplete something like "rake task[arg]"
if [ 'zsh' = $shell ]; then
  alias rake='noglob rake'
fi
alias rk='rake'

# Rails
alias migrate='rake db:migrate && rake db:migrate RAILS_ENV=test'
alias migration='rails generate migration'

# Node.js
alias js='node'

# npm
alias npi='npm install'
alias npis='npm install --save'
alias npid='npm install --save-dev'

# Grunt
alias gru='grunt'
alias grus='grunt serve'

# Gulp
alias gu='gulp'

alias insist='__insist__'
alias retry='__insist__ !!'

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

__grepify__() {
	# Is mandatory to use () or a space for escaping negative values
	${@:1:($#-1)} | grep -i --color=auto ${@: -1}
}
__insist__() {
  until $@; do :; done
}
__lessify__() {
	$@ | less
}
__open__() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
__vagopen__() {
	vagrant up $1 && vagrant ssh $1
}
