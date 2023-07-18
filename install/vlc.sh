#!/bin/bash

install_vlc() {
    sudo apt update && sudo apt install vlc -y
}

echo "Installing VLC"
install_vlc
vlc --version
echo "Done!"
