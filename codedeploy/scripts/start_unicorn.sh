. /home/ec2-user/.bash_profile
. /home/ec2-user/.bashrc
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin
cd /opt/current-deployment
bundle config build.nokogiri --use-system-libraries
bundle
bundle exec rake db:migrate
bundle exec unicorn -E development -c /opt/current-deployment/config/unicorn.rb -D
