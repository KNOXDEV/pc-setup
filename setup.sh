#!/bin/bash

source ./functions.sh

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