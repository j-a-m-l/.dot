#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh

#
# Vim
#

pkg_install vim

#
# Gvim
#

pkg_install vim-gtk3

#
# Neovim
#

# FIXME problems with ubunutu disco
pkg_source ppa:neovim-ppa/stable
pkg_install software-properties-common neovim

#
# Configuration
#

mkdir "$HOME/.cache/vim"

# TODO Python modules?
# TODO update-alternatives
