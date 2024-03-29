#!/bin/bash

function install_deb_url() {
	TEMP_DIR="$(mktemp -d)" &&
	TEMP_DEB="$TEMP_DEB/file.deb" &&
	wget -O "$TEMP_DEB" $1 &&
	sudo apt install "$TEMP_DEB"
	rm -rf "$TEMP_DIR"
}

function install_font() {
	wget $1 -P ~/.local/share/fonts/
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
    lsb-release \
    software-properties-common

for mod in ./modules/*.sh; do
	# you can pass an argument to filter scripts you're interested in
	if [[ "$mod" != *"$1"* ]]; then
		continue
	fi
	if ask_permission "run $(basename $mod)?"; then
		. $mod
	fi
done