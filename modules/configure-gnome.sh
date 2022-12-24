
# my preferred extensions
sudo apt install -y gnome-shell-extension-autohidetopbar gnome-shell-extension-dashtodock \
	gnome-shell-extension-desktop-icons-ng gnome-shell-extension-no-annoyance \
	gnome-shell-extension-appindicator
gnome-extensions enable ding@rastersoft.com
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gnome-extensions enable hidetopbar@mathieu.bidon.ca
gnome-extensions enable noannoyance@daase.net
gnome-extensions enable ubuntu-appindicators@ubuntu.com

# prefer adw-gtk3 theme
wget -qO- "https://github.com/lassekongo83/adw-gtk3/releases/download/v4.1/adw-gtk3v4-1.tar.xz" | sudo tar xJ -C /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# wallpaper
curl https://i.imgur.com/SBKjnxm.jpeg -o ~/Pictures/wallpaper.jpeg
gsettings set org.gnome.desktop.background picture-uri "file://$(echo ~/Pictures/wallpaper.jpeg)"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$(echo ~/Pictures/wallpaper.jpeg)"