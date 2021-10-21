#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh

#
# Vim
# TODO: optional
#

pkg_install vim
# Required by `vim-hug-neovim-rpc`, `nvim-yarp` and `deoplete`
pip3 install pynvim

#
# Gvim
# TODO: optional
#

pkg_install vim-gtk3

#
# Neovim
# TODO: optional
#

# FIXME problems with ubunutu disco
pkg_source ppa:neovim-ppa/stable
pkg_install software-properties-common neovim

# TODO: CoC extensions
# vim -c 'CocInstall -sync coc-json coc-html|q'

#
# Configuration
#

mkdir "$HOME/.cache/vim"

# TODO Python modules?
# TODO update-alternatives
