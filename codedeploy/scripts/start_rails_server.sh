. /home/ec2-user/.bash_profile
. /home/ec2-user/.bashrc
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin
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

export SECRET_KEY_BASE=$(bundle exec rake secret)

bundle config build.nokogiri --use-system-libraries
bundle

# need node and yarn
rails assets:precompile

bundle exec rake db:migrate
#bundle exec unicorn -E development -c /opt/current-deployment/config/unicorn.rb -D
bundle exec rails s -d


