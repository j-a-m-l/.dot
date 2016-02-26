# Docker
alias dok='docker'
alias doi='docker images'
alias dop='docker ps'
alias dopa='docker ps -a'
alias doa='docker attach'
alias dor='docker run'
alias dori='docker run -it'
alias dob='docker build'
alias doi_clean='docker rmi `docker images -q -f dangling=true`'
alias doi_purge='docker rmi `docker images -q`'
alias dop_clean='docker rm `docker ps -q -f status=exited`'
alias dop_stop_all='docker stop `docker ps -aq`'
alias dop_purge='docker rm `docker ps -q`'
alias dop_purge_all='docker rm `docker ps -aq`'
# TODO doi_local
# TODO doi_local_latest
# TODO doi_local_non_latest

# Docker Compose
alias do_c='docker-compose'
alias do_cu='docker-compose up'
alias do_cs='docker-compose stop'
