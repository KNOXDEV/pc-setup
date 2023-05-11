# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

# 1. Install our official public software signing key
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor > /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 2. Add our repository to your list of repositories
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list

# 3. Update your package database and install terraform
apt update && apt install -y terraform


if ask_permission "install helm too?"; then
  curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
fi