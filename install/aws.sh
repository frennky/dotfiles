#!/bin/bash
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

install_aws_cli() {
    curl -L "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip ./aws/
}

echo "Installing AWS CLI"
install_aws_cli
aws --version
echo "Done!"
