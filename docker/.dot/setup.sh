#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

#
# Docker Repository
#

# TODO error / stop if not Ubuntu
info "Installing the Docker repository (Ubuntu only)"

pkg_refresh_if_necessary
pkg_install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# TODO try first with the current release before using the hardcoded one
# NOTE `focal` has not release yet
# docker_stable_release="$(lsb_release -cs)"
docker_stable_release="disco"
pkg_source "deb [arch=amd64] https://download.docker.com/linux/ubuntu $docker_stable_release stable"

#
# Docker CE (https://docs.docker.com/install/linux/docker-ce/ubuntu/)
#

info "Installing the Docker CE"

pkg_refresh
pkg_remove docker docker-engine docker.io
pkg_install docker-ce

# TODO assert the result
# sudo docker run hello-world

# TODO optional
# To use Docker as a non-root user
user=$(whoami)
sudo usermod -aG docker "$user"

#
# Docker Compose https://docs.docker.com/compose/install/
#

info "Installing the Docker Compose"

compose_repository="docker/compose"
compose_version=$(gh_latest_release $compose_repository)
# NOTE: with bash
sudo curl -L https://github.com/$compose_repository/releases/download/$compose_version/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# TODO assert the result
# docker-compose --version

# TODO
# https://docs.docker.com/compose/completion/
# mkdir -p ~/.zsh/completion
# curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
# Bash (sometimes /etc/bash_completion.d/ is used too)
# sudo curl -L https://raw.githubusercontent.com/docker/compose/1.25.4/contrib/completion/bash/docker-compose -o /usr/local/etc/bash_completion.d/docker-compose

# TODO autocompletion
# fpath=(~/.zsh/completion $fpath)
# autoload -Uz compinit && compinit -i
# exec $SHELL -1
