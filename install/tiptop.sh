#!/bin/bash
# https://github.com/nschloe/tiptop

install_tiptop() {
    pip install tiptop
}

echo "Installing tiptop"
install_tiptop
tiptop --version
echo "Done!"