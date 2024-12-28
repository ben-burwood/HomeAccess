#!/bin/sh

crontab /crontabs/crontab
echo "Starting CRON Daemon"
crond -f
