#!/bin/bash

readonly VERSION="0.1.0"

install_dog() {
    # install dependencies
    echo "deb http://security.ubuntu.com/ubuntu focal-security main" \
        |  sudo tee /etc/apt/sources.list.d/focal-security.list
    sudo apt update
    sudo apt install -y libssl1.1
    curl -LO "https://github.com/ogham/dog/releases/download/v${VERSION}/dog-v${VERSION}-x86_64-unknown-linux-gnu.zip"
    sudo unzip -d dog "dog-v${VERSION}-x86_64-unknown-linux-gnu.zip"
    sudo mv ./dog/bin/dog /usr/local/bin/
    sudo chmod +x /usr/local/bin/dog
    sudo rm -rf "./dog/" "dog-v${VERSION}-x86_64-unknown-linux-gnu.zip"
}

echo "Installing dog"
install_dog
echo "Done!"
