. /home/ec2-user/.bash_profile
. /home/ec2-user/.bashrc
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin
cd /opt/current-deployment
bundle config build.nokogiri --use-system-libraries
bundle
bundle exec rake db:migrate
#bundle exec unicorn -E development -c /opt/current-deployment/config/unicorn.rb -D
bundle exec rails s -d \
 RDS_PORT=5432 \
 RDS_DB_NAME="postgres" \
 RDS_PASSWORD=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresPassword --with-decryption --query Parameters[0].Value) \
 RDS_USERNAME=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresUsername --with-decryption --query Parameters[0].Value) \
 RDS_ENDPOINT=$(aws ssm get-parameters --region us-east-1 --names CodeDeployPostgresEndpoint --with-decryption --query Parameters[0].Value)
