info() {
  echo -e "\n\t» $1\n"
}
# Source a file if it exists and it isn't empty
source_it() {
	if [ -s $1 ]; then
		. $1
	fi
}

pkg_refreshed=0
pkg_refresh_if_necessary() {
  if [ "$pkg_refreshed" -lt 1 ]; then
    pkg_refreshed=1
    info "Updating the package sources"
    sudo apt-get update
  fi
}

pkg_refresh() {
  pkg_refreshed=1
  info "Updating the package sources"
  sudo apt-get update
}

pkg_install() {
  local packages="$@"
  info "Installing packages \`$packages\` using the distro sources"
  sudo apt install $packages
}

pkg_remove() {
  local packages="$@"
  info "Removing packages \`$packages\`"
  sudo apt-get remove $packages
}

pkg_source() {  shopt -s autocd
  info "Adding \`$1\` as a distro source"
  sudo add-apt-repository "$1"
}

# Get the latest available release on GitHub
gh_latest_release() {
  local url="https://api.github.com/repos/$1/releases/latest"
  local version=$(curl --silent -X GET $url | jq --raw-output '.tag_name')
  echo "$version"
}

module_stow() {
  local module="$1"
  local module_path="$DOT_HOME/$module"
  info "Stowing module \`$module\`"
  cd "$module_path"
  stow --target "$HOME"
}

export info
export source_it
export pkg_refresh
export pkg_install
export pkg_source
export gh_latest_release
export module_stow
