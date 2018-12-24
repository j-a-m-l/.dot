#!/bin/sh

# Dokku
alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'

# Foreman
alias fore='foreman start'

# git
alias g='git'

# Make
alias mk='make'
alias mki='make install'

# Open files like a boss. I really need it...
alias o='__open__'

# netstat
alias open_ports1='netstat -nap'
alias open_ports2='sudo netstat -ntlp'

# Ping
alias pingo='__ping_192__'

# Safely remove an USB disk
alias safely_remove='sudo udisks --detach'

# Shutting down the short way
alias Shutdown='sudo shutdown -h -P now'
alias Restart='sudo shutdown -r now'

# SimpleHttpServer
alias simple_server='python -m SimpleHTTPServer'

# Tmuxinator
alias tm='tmuxinator'

# Vagrant
alias vag='vagrant'
alias vags='vagrant ssh'
alias vago='__vagopen__'
alias vend='vagrant suspend'

__open__() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
__ping_192__() {
	ping "192.168.$1"
}
__vagopen__() {
	vagrant up $1 && vagrant ssh $1
}

ALIASES_PATH="$HOME/.dot/shell/aliases"
source_it "$ALIASES_PATH/minimal.sh"
source_it "$ALIASES_PATH/aliases/ubuntu.sh"
source_it "$ALIASES_PATH/docker.sh"
source_it "$ALIASES_PATH/kde.sh"
source_it "$ALIASES_PATH/ruby.sh"
source_it "$ALIASES_PATH/javascript.sh"
source_it "$ALIASES_PATH/rust.sh"
source_it "$ALIASES_PATH/python.sh"
source_it "$ALIASES_PATH/haskell.sh"
