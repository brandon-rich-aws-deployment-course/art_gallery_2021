sudo amazon-linux-extras install ruby3.0 -y
sudo yum install -y sqlite-devel ruby-devel gcc-c++ gcc libxml2 libxml2-devel libxslt libxslt-devel postgresql-devel
#sudo gem install io-console
sudo gem install bundler


sudo yum update -y

# install nvm
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 14.18.1

#install yarn
npm install yarn -g
