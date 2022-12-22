# go from stable to testing
sudo sed -i 's/stable main/testing main/g' /etc/apt/sources.list
sudo sed -i 's/bullseye main/testing main/g' /etc/apt/sources.list
sudo sed -i 's/stable-security main/testing-security main/g' /etc/apt/sources.list
sudo sed -i 's/bullseye-security main/testing-security main/g' /etc/apt/sources.list

sudo apt update && sudo apt upgrade