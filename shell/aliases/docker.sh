# Docker
alias dok='docker'
alias dob='docker build'
alias dop='docker ps'
alias dopa='docker ps -a'
alias doa='docker attach'
alias dor='docker run'
alias dori='docker run -it'

alias doi='docker images'
alias doia='docker images ls --all'
alias doi_clean='docker rmi `docker images -q -f dangling=true`'
alias doi_purge='docker rmi `docker images -q`'

alias do_rm='docker rm -v'
alias do_clean='docker rm `docker ps -q -f status=exited`'
alias do_stop_all='docker stop `docker ps -aq`'
alias do_purge='docker rm `docker ps -q`'
alias do_purge_all='docker rm `docker ps -aq`'

# Docker Compose
alias do_c='docker-compose'
alias do_cu='docker-compose up'
alias do_cs='docker-compose stop'
