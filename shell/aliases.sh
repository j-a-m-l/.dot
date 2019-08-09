#!/bin/sh

# SSH
# Ignore the typo
alias shh='ssh'

alias dife='colordiff -u'

# Dokku
alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'

# Foreman
alias fore='foreman start'

# git
# alias g='git'

# git + GitHub TODO only if hub is available
alias g='hub'

# Make
alias mk='make'
alias mki='make install'

# Firefox
alias fox='firefox'
alias foxp='firefox -P '

# Open files like a boss. I really need it...
alias o='__open__'

# netstat
alias open_ports1='netstat -nap'
alias open_ports2='sudo netstat -ntlp'
alias kill_port='__kill_port__'

# Ping
alias pingo='__ping_192__'

# Safely remove an USB disk FIXME udisks doesn't exist now
alias safely_remove='sudo udisks --detach'

# Shutting down the short/long way
alias Shutdown='sudo shutdown -h -P now'
alias Restart='sudo shutdown -r now'

# SimpleHttpServer replaced by simplehttpserver (`npm install simplehttpserver -g`)
# alias simple_server='python -m SimpleHTTPServer'

__open__() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
__ping_192__() {
	ping "192.168.$1"
}
__kill_port__() {
  PORT_TO_KILL=$(sudo netstat -ntlp | grep ":$1" | awk 'match($7, /.*\//) { print substr($7, RSTART, RLENGTH - 1) }')

  [[ -n $PORT_TO_KILL ]] && sudo kill -9 $PORT_TO_KILL
}

ALIASES_PATH="$DOT_HOME/shell/aliases"
. "$ALIASES_PATH/minimal.sh"
. "$ALIASES_PATH/ag.sh"
. "$ALIASES_PATH/apt.sh"
. "$ALIASES_PATH/ark.sh"
. "$ALIASES_PATH/docker.sh"
. "$ALIASES_PATH/kde.sh"
. "$ALIASES_PATH/kontena.sh"
. "$ALIASES_PATH/ruby.sh"
. "$ALIASES_PATH/ionic.sh"
. "$ALIASES_PATH/javascript.sh"
. "$ALIASES_PATH/rust.sh"
. "$ALIASES_PATH/python.sh"
. "$ALIASES_PATH/haskell.sh"
. "$ALIASES_PATH/one_liners.sh"
. "$ALIASES_PATH/tmux.sh"
. "$ALIASES_PATH/vagrant.sh"
