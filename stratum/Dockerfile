ARG EXCHANGE=false

FROM alpine:3.7 as builder

ENV EXCHANGE=$EXCHANGE

RUN apk add --no-cache \
    make \
    g++ \
    gmp-dev \
    rtmpdump-dev \
    libssh2-dev \
    openldap-dev \
    libidn-dev \
    mariadb-dev \
    curl-dev

COPY . /tmp

WORKDIR /tmp/iniparser

RUN make

WORKDIR /tmp

# from https://github.com/coolsd/yiimp-1
RUN if $EXCHANGE; then sed -i 's/CFLAGS += -DNO_EXCHANGE/#CFLAGS += -DNO_EXCHANGE/' Makefile; fi \
&&  make

FROM alpine:3.7

RUN apk add --no-cache \
        gmp \
        mariadb-dev \
        curl-dev \
&&  rm -rf /var/cache/apk/*

COPY --from=builder /tmp/stratum /usr/local/bin/stratum
COPY --from=builder /tmp/config.sample /var/stratum/config
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /var/stratum/config

#ENTRYPOINT ["/usr/local/bin/stratum"]
ENTRYPOINT ["/docker-entrypoint.sh"]
