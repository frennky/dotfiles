#!/bin/bash

install_omp() {
    sudo curl -L https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -o /usr/local/bin/oh-my-posh
    sudo chmod +x /usr/local/bin/oh-my-posh    
    echo '# initialize oh-my-posh' >> ~/.bashrc
    # initialize and configure theme
    # TODO eval "$(oh-my-posh init bash --config ~/jandedobbeleer.omp.json)" # file path or use url
    echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc
    source ~/.bashrc
    # verify
    oh-my-posh version
    # install fonts
    oh-my-posh font install Cousine
}

echo "Installing Oh-my-posh"
install_omp
echo "Don't forget to configure terminal to use installed Nerd Font."
echo "Done!"
