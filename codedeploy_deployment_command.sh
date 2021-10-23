aws deploy create-deployment \ 
 --application-name blog \
 --deployment-config-name CodeDeployDefault.OneAtATime \
 --deployment-group-name blog_deployment_group \
 --description "Demo Deployment" \
 --github-location repository=brandonrich/ruby-hello,commitId=$(git rev-parse HEAD)
