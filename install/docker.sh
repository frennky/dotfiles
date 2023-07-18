#!/bin/bash
# https://docs.docker.com/engine/install/ubuntu/

remove_conflicting_packages() {
    for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
}

install_prerequisites() {
    sudo apt update && sudo apt install ca-certificates curl gnupg -y
}

install_gpg_key() {
    sudo install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
}

configure_repo() {
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
}

install_docker_cli() {
    sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
}

echo "Installing Docker"
remove_conflicting_packages
install_prerequisites
install_gpg_key
configure_repo
install_docker_cli
docker --version
echo "Done!"
