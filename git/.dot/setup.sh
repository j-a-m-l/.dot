#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

#
# git
#

info "Installing git"

pkg_refresh_if_necessary
pkg_install git

#
# hub
#

info "Fetching and installing the latest version of hub"

hub_repository="github/hub"
hub_version=$(gh_latest_release $hub_repository)
# Version "0.1.0" instead of "v0.1.0"
hub_version="${hub_version#?}"
hub_filename="hub-linux-amd64-$hub_version"
curl -L "https://github.com/$hub_repository/releases/download/v$hub_version/$hub_filename.tgz" > "$hub_filename.tgz"
tar xvf "$hub_filename.tgz"
cd "$hub_filename"
sudo ./install
cd ../
rm -rf "$hub_filename.tgz" "$hub_filename"

# TODO First time that is used it generates a personal access token
# hub

# Keep in mind autocompletion! (enable `github` plugin in Oh My Zsh)

#
# lab
#

info "Fetching and installing the latest version of lab"

curl -s https://raw.githubusercontent.com/zaquestion/lab/master/install.sh | sudo bash

# TODO

# Gitsome FIXME notifications
# sudo apt install gitsome

# https://github.com/donnemartin/gitsome/blob/master/COMMANDS.md#gh-configure
# gh configure

# TODO autocomplete

# alias gitsome="docker run -ti --rm -v $(pwd):/src/                \
#                   -v ${HOME}/.gitsomeconfig:/root/.gitsomeconfig  \
#                   -v ${HOME}/.gitconfig:/root/.gitconfig          \
#                   mariolet/gitsome"

# https://github.com/jonas/tig
