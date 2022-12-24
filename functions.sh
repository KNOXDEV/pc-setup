
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