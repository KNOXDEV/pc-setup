
source ./functions.sh

sudo apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting

install_font "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
install_font "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
install_font "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
install_font "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /usr/share/zsh-powerlevel10k/

# create the .zshrc
cp /etc/zsh/newuser.zshrc.recommended ~/.zshrc
echo 'source /usr/share/zsh-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo 'source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc
echo 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc

echo 'source ~/.profile' >>~/.zshrc

# actually change shells
sudo chsh -s /usr/bin/zsh knox