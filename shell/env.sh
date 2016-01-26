#!/bin/sh

# TODO Each platform on its file

# Load RVM into a shell session *as a function*
source_it $HOME/.rvm/scripts/rvm

# Add RVM to PATH for scripting FIXME only first time
export PATH=$PATH:$HOME/.rvm/bin

# This loads NVM using its proper directory
export NVM_DIR=$HOME/.nvm
source_it $NVM_DIR/nvm.sh

# Add Node.js path, from NVM FIXME
# export PATH=$PATH:$NVM_BIN

# jsctags path FIXME
# export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH

# Python
export PYTHONSTARTUP=$HOME/.pythonrc.py

# Haskell (Binaries installed using Cabal) TODO versions
export PATH=$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:$PATH

# Qt SDK paths TODO
QTSDK_LOCATION=$HOME/QtSDK/Desktop/Qt/474/gcc/bin
if [ -d "$QTSDK_LOCATION" ] ; then
    PATH=$PATH:$QTSDK_LOCATION
fi
QTSDK_LOCATION=$HOME/QtSDK/QtCreator/bin
if [ -d "$QTSDK_LOCATION" ] ; then
    PATH=$PATH:$QTSDK_LOCATION
fi

# Ant
ANT_HOME=/opt/apache-ant
if [ -d "$ANT_HOME" ] ; then
	export ANT_HOME
	export PATH=$PATH:$ANT_HOME/bin
fi

# Android
export ANDROID_HOME=/opt/adt/sdk/tools
export ANDROID_PLATFORM_TOOLS=/opt/adt/sdk/platform-tools
export PATH=$PATH:$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS

# Golang
source_it $HOME/.gvm/scripts/gvm
