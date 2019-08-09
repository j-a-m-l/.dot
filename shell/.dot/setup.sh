#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh_if_necessary

#
# Shell
#

info "Installing bash"

pkg_install bash

info "Installing fish"

pkg_install fish

info "Installing zsh"

pkg_install zsh

#
# CLI utilities
#

info "Installing fzf"

# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install --key-bindings --completion --no-update-rc

info "Installing more CLI utilities"

# Useful for listing paths
pkg_install tree

# Simple way to batch rename files
pkg_install rename

# Set the shell
$shell="bash"
$user=$(whoami)
chsh --shell $(which "$shell") "$user"
# fish
# chsh --shell (which "$shell") "$user"
