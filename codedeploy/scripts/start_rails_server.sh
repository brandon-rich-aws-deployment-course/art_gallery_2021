. /home/ec2-user/.bash_profile
. /home/ec2-user/.bashrc
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin


# install nvm
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 14.18.1

#install yarn
npm install yarn -g

# symlink it so it's in the PATH
echo "BMR DEBUG YARN"
ln -s -f "$(npm bin --global)"/yarn /usr/bin/yarn
echo "BMR WHICH YARN"
echo $(which yarn)
echo "BMR DONE"




cd /opt/current-deployment



echo "BMR DEBUG POINT"
export RDS_PORT=5432
export RDS_DB_NAME="postgres"
export RDS_PASSWORD=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresPassword --with-decryption --query Parameters[0].Value)
export RDS_USERNAME=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresUsername --with-decryption --query Parameters[0].Value)
export RDS_HOSTNAME=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresEndpoint --with-decryption --query Parameters[0].Value)
echo "BMR PRINT ENV"
env
echo "BMR DONE PRINT ENV"

echo "BMR WHICH YARN2"
echo $(which yarn)
echo "BMR DONE"

export SECRET_KEY_BASE=$(bundle exec rake secret)

bundle config build.nokogiri --use-system-libraries
bundle

# need node and yarn
rails assets:precompile

bundle exec rake db:migrate
#bundle exec unicorn -E development -c /opt/current-deployment/config/unicorn.rb -D
bundle exec rails s -d


