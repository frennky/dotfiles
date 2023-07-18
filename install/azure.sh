#!/bin/bash
# https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

install_prerequisites() {
    sudo apt update && sudo apt install ca-certificates curl apt-transport-https lsb-release gnupg -y
}

install_gpg_key() {
    sudo mkdir -p /etc/apt/keyrings && \
    curl -sLS https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/keyrings/microsoft.gpg > /dev/null && \
    sudo chmod go+r /etc/apt/keyrings/microsoft.gpg
}

configure_repo() {
    AZ_REPO=$(lsb_release -cs)
    echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
}

install_azure_cli() {
    sudo apt update && sudo apt install azure-cli -y
}

echo "Installing Azure CLI"
install_prerequisites
install_gpg_key
configure_repo
install_azure_cli
az version
echo "Done!"
