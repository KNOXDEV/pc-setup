
sudo apt update && sudo apt install -y xorg

sudo sed -i 's/#WaylandEnable=false/WaylandEnable=false/g' /etc/gdm3/daemon.conf