#!/bin/sh

echo "Restarting ${CERTBOT_CONTAINER_NAME} Container"
curl --unix-socket /var/run/docker.sock -X POST http://v1.24/containers/${CERTBOT_CONTAINER_NAME}/restart

sleep 120

echo "Reload NGINX within ${NGINX_CONTAINER_NAME} Container"
curl --unix-socket /var/run/docker.sock -X POST http://v1.24/containers/${NGINX_CONTAINER_NAME}/restart
