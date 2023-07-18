#!/bin/bash
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

install_prerequisites() {
    sudo apt update && sudo apt install -y gnupg software-properties-common
}

install_gpg_key() {
    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
}

configure_repo() {
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
}

install_terraform() {
    sudo apt update && sudo apt install terraform -y
}

echo "Installing Terraform CLI"
install_prerequisites
install_gpg_key
configure_repo
install_terraform
terraform version
echo "Done!"
