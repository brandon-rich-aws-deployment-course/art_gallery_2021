if [ -f /opt/current-deployment/tmp/pids/server.pid ]; then
	kill -9 $(cat /opt/current-deployment/tmp/pids/server.pid)
fi
if [ -L /opt/current-deployment ]; then
  unlink /opt/current-deployment
fi
