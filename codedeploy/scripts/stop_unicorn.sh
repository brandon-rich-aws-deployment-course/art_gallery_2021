kill -9 $(cat /tmp/unicorn.pid)
if [ -L /opt/current-deployment ]; then
  unlink /opt/current-deployment
fi
