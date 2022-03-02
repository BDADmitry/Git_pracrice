FROM ubuntu:18.04

LABEL maintainer="deman271@gmail.com"

RUN apt-get update \
    && apt-get install -y apache2 apache2-utils \
    && apt-get clean && \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
