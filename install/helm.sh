#!/bin/bash
# https://helm.sh/docs/intro/install/#from-apt-debianubuntu

install_prerequisites() {
    sudo apt update && sudo apt install apt-transport-https -y
}

install_gpg_key() {
    curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
}

configure_repo() {
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
}

install_helm() {
    sudo apt update && sudo apt install helm -y
}

echo "Installing Helm"
install_prerequisites
install_gpg_key
configure_repo
install_helm
helm version
echo "Done!"
