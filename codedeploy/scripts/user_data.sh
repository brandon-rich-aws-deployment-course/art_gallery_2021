# if working interactively from SSM, get out of /usr/bin
# used for Beanstalk demo; not codedeploy.
# this code is used in start_rails_server.sh
cd ~

# patch stuff
sudo yum update -y

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 14.18.1

#install yarn
npm install yarn -g
