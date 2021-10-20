#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

info "Installing polybar"

pkg_refresh_if_necessary

# https://github.com/polybar/polybar/wiki/Compiling
pkg_install polybar
