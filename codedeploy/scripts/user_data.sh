#!/bin/bash

cd ~

echo "Start" >> /tmp/user_data_debug.txt
echo "$(whoami)" >> /tmp/user_data_debug.txt 
echo "$(pwd)" >> /tmp/user_data_debug.txt

# patch stuff
sudo yum update -y

echo "patching done\n" >> /tmp/user_data_debug.txt

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

echo "which nvm:" >> /tmp/user_data_debug.txt
echo "$(which nvm)" >> /tmp/user_data_debug.txt


nvm install 14.18.1

echo "checking nvm list" >> /tmp/user_data_debug.txt
echo "$(nvm list)" >> /tmp/user_data_debug.txt


#install yarn
npm install yarn -g

echo "checking yarn -v" >> /tmp/user_data_debug.txt
echo "$(yarn -v)" >> /tmp/user_data_debug.txt

