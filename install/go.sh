#!/bin/bash
# https://go.dev/doc/install

install_go() {
    rm -rf /usr/local/go
    curl -L https://go.dev/dl/go1.20.4.linux-amd64.tar.gz | tar -C /usr/local -xz
    echo '# add golang to path' >> ~/.bashrc
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    source ~/.bashrc
}

echo "Installing Golang"
install_go
go version
echo "Done!"
