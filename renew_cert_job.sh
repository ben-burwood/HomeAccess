#!/bin/sh

DOCKER_COMPOSE_DIR="../"

CRON_JOB="0 2 * * * cd $DOCKER_COMPOSE_DIR && ./renew_and_reload.sh"

# Check if the cron job already exists, if not, add it
(crontab -l | grep -F "$CRON_JOB") || (crontab -l; echo "$CRON_JOB") | crontab -

echo "Cron job added to renew Let's Encrypt certificates daily at 2:00 AM."
