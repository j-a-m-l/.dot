#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

info "Installing i3"

pkg_refresh_if_necessary
pkg_install i3

info "Installing tools to manage i3"

pkg_install xdotool wmctrl

# TODO: i3 too?
pip3 install i3ipc

# Launcher
# pkg_install synapse

# KDE integration: avoids that the desktop hides some windows
sudo mv /usr/bin/ksplashqml /usr/bin/ksplashqml.old

info "Installing Nitrogen to display the wallpapers"

pkg_install nitrogen
