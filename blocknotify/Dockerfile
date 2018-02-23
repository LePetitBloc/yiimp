ARG secret="tu8tu5"

FROM alpine:3.7 as builder

RUN apk add --no-cache make g++ \
&&  rm -rf /var/cache/apk/*

COPY . /tmp

WORKDIR /tmp

RUN sed -i "s/tu8tu5/${secret}/" blocknotify.cpp \
&&  make

FROM alpine:3.7

COPY --from=builder /tmp/blocknotify /usr/local/bin/blocknotify

ENTRYPOINT ["/usr/local/bin/blocknotify"]
