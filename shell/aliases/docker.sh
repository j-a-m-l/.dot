# Docker
alias do_='docker'
alias dok='docker'
alias dob='docker build'
alias dop='docker ps'
alias dopa='docker ps -a'
alias doa='docker attach'
alias doe='docker exect'
alias doet='docker exect -it'
alias dor='docker run'
alias dori='docker run -it'

alias do_stop_all='docker stop `docker ps -aq`'
alias do_rmv='docker rm -v'
alias do_clean='docker rm `docker ps -q -f status=exited`'
alias do_purge='docker rm `docker ps -q`'
alias do_purge_all='docker rm `docker ps -aq`'

alias doi='docker image'
alias doi_l='docker image ls'
alias doi_la='docker image ls --all'
alias doi_rm='docker rmi'
alias doi_rmf='docker rmi --force'
alias doi_pa='docker image prune --all'
alias doi_purge='docker rmi `docker image ls -q`'

# Docker Compose
alias dc_='docker-compose' # To not override the `dc` command
alias dc_u='docker-compose up'
alias dc_d='docker-compose down'
alias dc_dv='docker-compose down --volumes'
alias dc_s='docker-compose stop'

# TODO: better approach for auto-completions
. /usr/share/bash-completion/completions/docker
complete -F _docker do_
. /usr/local/etc/bash_completion.d/docker-compose
complete -F _docker_compose dc_
