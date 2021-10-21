#!/bin/bash

source $DOT_HOME/_lib_/utils.sh

# Default folder for storing virtual machines (instead of `~/VirtualBox VMs`)
default_machine_folder="$HOME/.virtual-box-machines/"

#
# VirtualBox
#

info "Installing VirtualBox with extensions"

pkg_refresh_if_necessary
# The extension pack is necessary for some USB devices, such as Ledger
pkg_install virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack

user=$(whoami)
sudo adduser "$user" vboxusers

# These settings are stored on `~/.config/VirtualBox/VirtualBox.xml` which states clearly that it should not be edited
vboxmanage setproperty machinefolder "$default_machine_folder"

# Logout to allow that VirtualBox uses those permissions
# TODO refresh permissions without logging out
info "YOU NEED TO LOG OUT TO MAKE USE OF SOME VIRTUALBOX PERMISSIONS (USB, ETC.)"
