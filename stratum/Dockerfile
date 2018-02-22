ARG EXCHANGE=false

FROM gcc:4.9 as builder

ENV EXCHANGE=$EXCHANGE

COPY . /tmp

WORKDIR /tmp/iniparser

RUN make

WORKDIR /tmp

RUN apt-get update -y && apt-get install -y \
    libgmp-dev \
    librtmp-dev \
    libssh2-1-dev \
    libldap2-dev \
    libidn11-dev

# from https://github.com/coolsd/yiimp-1
RUN if $EXCHANGE; then sed -i 's/CFLAGS += -DNO_EXCHANGE/#CFLAGS += -DNO_EXCHANGE/' Makefile; fi
RUN make

FROM alpine:3.7

COPY --from=builder /tmp/stratum /usr/local/bin/stratum
COPY --from=builder /tmp/config.sample /var/config

ENTRYPOINT ["/usr/local/bin/stratum"]
CMD ["/var/config/scrypt.conf"]
