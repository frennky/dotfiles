#!/bin/bash
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management

install_kubectl() {
    sudo apt-get update
    sudo apt-get install -y ca-certificates curl
    sudo apt-get install -y apt-transport-https
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
        | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
    echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" \
        | sudo tee /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update
    sudo apt-get install -y kubectl
}

echo "Installing kubectl"
install_kubectl
kubectl version
echo "Done!"
