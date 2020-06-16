#!/bin/sh

# TODO Each platform on its file

#
# Essential
#

# TODO
export EDITOR=vim

#
# JS
#

[ -s "$DOT_HOME/js/.dot/env.sh" ] && \. "$DOT_HOME/js/.dot/env.sh"

#
# Ruby
#

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

#
# Python
#

# export PYTHONSTARTUP=$HOME/.pythonrc.py

# pip uses this directory too
export PATH=$PATH:$HOME/.local/bin

#
# Haskell
#

# Haskell (Binaries installed using Cabal) TODO versions
# export PATH=$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:$PATH

#
# Rust
#

# Add Cargo to PATH
export PATH=$PATH:$HOME/.cargo/bin

# Rust source code path (for Racer)
export RUST_SRC_PATH="$HOME/.rust/rustc-1.6.0/src"

#
# fzf
# 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#
# ripgrep
#

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# To use console mode to prompt for passwords
# export GPG_TTY=$(tty)

#
# Erlang
#

# if [ ! -d "$ERL_LIBS" ] ; then
# 	ERL_LIBS=/usr/lib/erlang/lib
# 	if [ -d "$ERL_LIBS" ] ; then
# 		export ERL_LIBS
# 	fi
# fi

#
# QT
#

# Qt SDK paths TODO
# QTSDK_LOCATION=$HOME/QtSDK/Desktop/Qt/474/gcc/bin
# if [ -d "$QTSDK_LOCATION" ] ; then
#     PATH=$PATH:$QTSDK_LOCATION
# fi
# QTSDK_LOCATION=$HOME/QtSDK/QtCreator/bin
# if [ -d "$QTSDK_LOCATION" ] ; then
#     PATH=$PATH:$QTSDK_LOCATION
# fi

# Ant
# ANT_HOME=/opt/apache-ant
# if [ -d "$ANT_HOME" ] ; then
# 	export ANT_HOME
# 	export PATH=$PATH:$ANT_HOME/bin
# fi

# Android
# export ANDROID_HOME=/opt/adt/sdk/tools
# export ANDROID_PLATFORM_TOOLS=/opt/adt/sdk/platform-tools
# if [ -d "$ANDROID_HOME" ] ; then
# 	export PATH=$PATH:$ANDROID_HOME
# fi
# if [ -d "$ANDROID_PLATFORM_TOOLS" ] ; then
# 	export PATH=$PATH:$ANDROID_PLATFORM_TOOLS
# fi
# Gradle
# export PATH=$PATH:/opt/gradle/gradle-4.4.1/bin
