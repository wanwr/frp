FROM docker.1ms.run/alpine:latest

COPY repositories /etc/apk/repositories

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]