#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

info "Installing R"

pkg_refresh_if_necessary
pkg_install r-base r-base-dev

# Used by `devtools` package
pkg_install libxml2-dev libcurl4-openssl-dev
