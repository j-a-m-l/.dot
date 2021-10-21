#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh_if_necessary

info "Installing Alacritty"

# Dependencies
pkg_install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

# TODO: infer latest version
cargo install --git https://github.com/alacritty/alacritty --tag v0.5.0

# Manual TODO: automate
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

# TODO: https://github.com/alacritty/alacritty/blob/master/INSTALL.md#shell-completions

# sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

#
# Shell
#

info "Installing bash"

pkg_install bash bash-completion

# info "Installing fish"

# pkg_install fish

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

# Alternative to `ls`
# FIXME: after Rust!
cargo install exa

# Set the shell
#$shell="bash"
#$user=$(whoami)
#chsh --shell $(which "$shell") "$user"

# fish
# chsh --shell (which "$shell") "$user"
