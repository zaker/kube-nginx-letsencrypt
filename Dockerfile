FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    certbot \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/letsencrypt

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
