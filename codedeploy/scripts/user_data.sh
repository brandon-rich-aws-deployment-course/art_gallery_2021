# if working interactively from SSM, get out of /usr/bin
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


# install up-to-date sqlite (might skip this)
# wget https://www.sqlite.org/2019/sqlite-autoconf-3290000.tar.gz 
# tar xzvf sqlite-autoconf-3290000.tar.gz 
# cd sqlite-autoconf-3290000 
# ./configure --prefix=/opt/sqlite/sqlite3 
# make 
# sudo make install



# install Ruby 3.0
# sudo amazon-linux-extras install ruby3.0 -y


# install codedeploy agent.  could use SSM
# sudo yum update -y
# sudo yum install -y ruby wget
# cd /home/ec2-user
# wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
# chmod +x ./install
# sudo ./install auto
# sudo service codedeploy-agent start
