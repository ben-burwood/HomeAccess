FROM alpine:latest

RUN apk update && apk add curl

COPY ./restart.sh /scripts/restart.sh
COPY ./startup.sh /scripts/startup.sh
RUN chmod +x /scripts/*.sh

COPY ./crontab /crontabs/crontab

CMD [ "sh", "/scripts/startup.sh" ]
