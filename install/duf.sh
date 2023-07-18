#!/bin/bash

readonly VERSION="0.8.1"

install_duf() {
    curl -LO "https://github.com/muesli/duf/releases/download/v${VERSION}/duf_${VERSION}_linux_amd64.deb" && \
    sudo dpkg -i "duf_${VERSION}_linux_amd64.deb" && \
    sudo apt install -f -y && \
    sudo rm "duf_${VERSION}_linux_amd64.deb"
}

echo "Installing duf"
install_duf
duf --version
echo "Done!"
