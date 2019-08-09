#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

info "Installing X tools"

pkg_refresh_if_necessary
pkg_install xsetbacklight
