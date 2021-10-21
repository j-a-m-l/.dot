#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

#
# Firefox
#

info "Installing Firefox"

pkg_refresh_if_necessary
pkg_install firefox

# TODO only if KDE
# https://addons.mozilla.org/en-US/firefox/addon/plasma-integration/
pkg_install plasma-browser-integration
