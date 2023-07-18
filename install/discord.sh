#!/bin/bash

install_discord() {
    curl -L "https://discord.com/api/download?platform=linux&format=deb" -o discord.deb && \
    sudo dpkg -i discord.deb && sudo apt install -f -y && \
    rm discord.deb
}

echo "Installing Discord"
install_discord
echo "Done!"
