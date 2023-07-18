#!/bin/bash

install_rpi_imager() {
    sudo apt install rpi-imager -y
}

echo "Installing Raspberry Pi Imager"
install_rpi_imager
rpi-imager --version
echo "Done!"
