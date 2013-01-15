# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Vim
alias v='vim'

# Grep
alias gi='grep -i'

# Apt
alias sagi='sudo apt-get install'

# Ruby
alias rb='ruby'

# I really need it...
# gnome-open
open() {
	nohup xdg-open $1 > /dev/null 2>&1 &
}
alias o='open'

alias Shutdown='sudo shutdown -h -P now'
alias Reset='sudo shutdown -r now'
