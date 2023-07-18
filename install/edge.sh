#!/bin/bash

install_gpg_key() {
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
}

configure_repo() {
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" -y
}

install_edge() {
    sudo apt update && sudo apt install microsoft-edge-stable -y
}

echo "Installing Microsoft Edge"
install_gpg_key
configure_repo
install_edge
microsoft-edge --version
echo "Done!"
