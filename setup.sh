#!/bin/bash

function install_deb_url() {
	TEMP_DEB="$(mktemp)" &&
	wget -O "$TEMP_DEB" $1 &&
	sudo dpkg -i "$TEMP_DEB"
	rm -f "$TEMP_DEB"
}

function install_font() {
	sudo wget $1 -P "~/.local/share/fonts/"
	fc-cache
}

function ask_permission() {
	while true; do
		echo -n "$1 (y/n) "
	    read yn
	    case $yn in
	        [Yy]* ) return 0; break;;
	        [Nn]* ) return 1;;
	        * ) echo "Please answer yes or no.";;
	    esac
	done
}

# get ready to install some repos
sudo apt update && sudo apt install -y \
    ca-certificates \
    curl \
    wget \
    gnupg \
    lsb-release

for mod in ./modules/*.sh; do
	if ask_permission "run $(basename $mod)?"; then
		bash $mod
	fi
done