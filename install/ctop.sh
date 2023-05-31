#!/bin/bash

readonly VERSION="0.7.7"

install_ctop() {
    sudo curl -L "https://github.com/bcicen/ctop/releases/download/v${VERSION}/ctop-${VERSION}-linux-amd64" -o /usr/local/bin/ctop
    sudo chmod +x /usr/local/bin/ctop
}

echo "Installing ctop"
install_ctop
echo "Done!"
