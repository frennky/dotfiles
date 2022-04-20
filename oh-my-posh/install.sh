#!/bin/bash

sudo curl -L https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -o /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
# copy themes
chmod u+rw ~/.poshthemes/*.json

echo '# initialize oh-my-posh' >> ~/.bashrc
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc
