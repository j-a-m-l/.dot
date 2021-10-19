#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

info "Installing RVM"

gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

info "Installing Ruby"

source $HOME/.rvm/scripts/rvm
# NOTE: this command uses `apt-get` and asks for user password
rvm install 2.6

info "Installing gems"

gem install pry awesome_print
