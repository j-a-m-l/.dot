# ls
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'

# Vim
alias v='vim'

# grep
alias ge='grep -i'

# apt
alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'

# Ruby
alias rb='ruby'

# git
alias g='git'

# Python
alias py='python'
alias ipy='ipython'

# Vagrant
alias vag='vagrant'
alias vago='vagrant up && vagrant ssh'
alias vagend='vagrant suspend'

# I really need it...
# gnome-open
open() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
alias o='open'

# Easy way
alias Shutdown='sudo shutdown -h -P now'
alias Restart='sudo shutdown -r now'

# Private alias (paths, etc.)
. ~/.dot.private/shell/aliases.sh
