sudo yum install nginx -y
sudo service nginx stop
sudo rm /etc/nginx/nginx.conf  # CodeDeploy doesn't support overwrite of pre-existing files.  it only replaces files it created.
sudo ln -s -f /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive /opt/current-deployment
