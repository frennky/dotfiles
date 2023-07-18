#!/bin/bash
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management

install_prerequisites() {
    sudo apt update && sudo apt install -y ca-certificates curl apt-transport-https
}

install_gpg_key() {
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
}

configure_repo() {
    echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
}

install_kubectl() {
    sudo apt update && sudo apt install -y kubectl
}

echo "Installing kubectl"
install_prerequisites
install_gpg_key
configure_repo
install_kubectl
kubectl version
echo "Done!"
