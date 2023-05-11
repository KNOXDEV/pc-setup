# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

# 1. Install our official public software signing key
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor > /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 2. Add our repository to your list of repositories
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list

# 3. Update your package database and install terraform
sudo apt update && sudo apt install -y terraform


if ask_permission "install helm too?"; then
  curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
  sudo apt-get update && sudo apt-get install helm
fi