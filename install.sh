#!/bin/sh

DOT_FILES=`pwd`
# TODO
DOT_PRIVATE_FILES="$HOME/.private.example"

USER_FOLDER="$HOME"
ZSH_PATH="/usr/bin/zsh"

# TODO name and colors
# TODO status
run () {
  printf "\r\033[2K [ \033[00;32mSUCCESS\033[0m ] on $1\n"
  #printf "\r\033[2K [\033[0;31mERROR\033[0m] on $1\n"
  #echo ''
  #exit
}

# TODO ln status
# TODO optionally override
link_to_dot () {
  src="$DOT_FILES/$1"
  dst="$USER_FOLDER/.${1##*/}"

  ln -s $src $dst
  run "linking $src to $dst"
}

# TODO ln status
# TODO optionally override (showing diff)
link_to_dot_private () {
  src="$DOT_PRIVATE_FILES/$1"
  dst="$USER_FOLDER/.${1##*/}"

  ln -s $src $dst
  run "linking $src to $dst"
}


link_to_dot 'profile'

# X session
link_to_dot 'xinitrc'
ln -s "$DOT_FILES/xinitrc" "$USER_FOLDER/.xsessionrc"

# Xdefaults (urxvt)
link_to_dot 'Xdefaults'

# Bash
link_to_dot 'bash/bashrc'
link_to_dot 'bash/bash_logout'

# TODO env

# Zsh TODO
# rm -rf "$OH_MY_ZSH/custom/*"
# ln -s "$DOT_FILES/zsh/oh-my-zsh/custom.zsh" "$OH_MY_ZSH/custom/custom.zsh"
# TODO asks pass
# chsh $ZSH_PATH
# TODO my theme

# Xmonad
link_to_dot 'xmonad'

# i3
link_to_dot 'i3'

# Ack
link_to_dot 'ack/ackrc'

# Vim
link_to_dot 'vim'
link_to_dot 'vim/vimrc'
link_to_dot 'vim/gvimrc'
mkdir "$USER_FOLDER/.vim.backup"

# Emacs
link_to_dot 'emacs.d'

# Octave
link_to_dot 'octave/octaverc'

# Ruby
link_to_dot 'ruby/gemrc'
link_to_dot 'ruby/irbrc'
link_to_dot 'ruby/pryrc'
link_to_dot 'ruby/rdebugrc'

# Rake global tasks
ln -s "$DOT_FILES/ruby/rake" "$USER_FOLDER/.rake"

# Python
link_to_dot 'python/pythonrc.py'
link_to_dot 'python/pdbrc'

# JS
link_to_dot 'js/jshintrc'

# Vimperator
link_to_dot 'vimperatorrc'

#
# Private TODO
#

# Git
link_to_dot_private 'git/gitconfig'

# Tmux TODO
# link_to_dot_private
