#!/bin/bash
# https://code.visualstudio.com/docs/setup/linux

install_vscode() {
    curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o "code.deb" && \
    sudo dpkg -i code.deb && sudo apt install -f -y && \
    rm -f code.deb
}

echo "Installing VS Code"
install_vscode
code --version
echo "Done!"

