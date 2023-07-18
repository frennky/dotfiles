#!/bin/bash
# https://github.com/derailed/k9s

install_k9s() {
    curl -LO https://github.com/derailed/k9s/releases/download/v0.27.4/k9s_Linux_amd64.tar.gz && \
    sudo tar -xzf k9s_Linux_amd64.tar.gz -C /usr/local/bin k9s && \
    rm k9s_Linux_amd64.tar.gz
}

echo "Installing K9s"
install_k9s
k9s version
echo "Done!"
