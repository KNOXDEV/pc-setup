
# my preferred extensions
sudo apt install -y gnome-shell-extension-autohidetopbar gnome-shell-extension-dashtodock gnome-shell-extension-desktop-icons-ng gnome-shell-extension-no-annoyance


# prefer adw-gtk3 theme
wget -qO- "https://github.com/lassekongo83/adw-gtk3/releases/download/v4.1/adw-gtk3v4-1.tar.xz" | sudo tar xJ -C /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'