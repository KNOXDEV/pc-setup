#!/bin/bash

source ./functions.sh

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