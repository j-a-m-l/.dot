#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

pkg_refresh
pkg_install curl
pkg_install jq
pkg_install stow
