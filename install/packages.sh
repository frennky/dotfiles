#!/bin/bash

readonly PACKAGES=(bat
                   htop
                   jq 
                   tmux
                   tree 
                   ncdu
                   net-tools
                   vim)

install_packages() {
    [[ ${#PACKAGES[@]} != 0 ]] \
        && sudo apt install -y ${PACKAGES[*]}

    # fix bat naming issue
    ln -s /usr/bin/batcat /usr/local/bin/bat
}

echo "Installing packages"
install_packages
echo "Done!"
