# go from stable to testing
sudo sed -i 's/stable/testing/g' /etc/apt/sources.list
sudo sed -i 's/bookworm/testing/g' /etc/apt/sources.list
sudo sed -i 's/stable-security/testing-security/g' /etc/apt/sources.list
sudo sed -i 's/bookworm-security/testing-security/g' /etc/apt/sources.list

# sometimes you need to run upgrade a few times
sudo apt update && sudo apt -y full-upgrade
sudo apt update && sudo apt -y upgrade