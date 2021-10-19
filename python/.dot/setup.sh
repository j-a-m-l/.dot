#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh_if_necessary

info "Installing Python"

pkg_install python

info "Installing PIP"

pkg_install python3-pip
