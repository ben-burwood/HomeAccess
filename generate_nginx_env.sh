#!/bin/sh

envsubst '$SERVER_NAME' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf
