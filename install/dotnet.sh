#!/bin/bash
# https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#register-the-microsoft-package-repository

install_dotnet() {
    declare repo_version=$(if command -v lsb_release &> /dev/null; then lsb_release -r -s; else grep -oP '(?<=^VERSION_ID=).+' /etc/os-release | tr -d '"'; fi)
    curl -L https://packages.microsoft.com/config/ubuntu/$repo_version/packages-microsoft-prod.deb -o packages-microsoft-prod.deb && \
    sudo dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb && \
    sudo apt update && sudo apt install dotnet-sdk-7.0 -y -f
}

echo "Installing DotNet CLI"
install_dotnet
dotnet version
echo "Done!"
