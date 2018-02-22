ARG secret="tu8tu5"

FROM gcc:4.9 as builder

COPY . /tmp

WORKDIR /tmp

RUN sed -i "s/tu8tu5/${secret}/" blocknotify.cpp \
&&  make

FROM alpine:3.7

COPY --from=builder /tmp/blocknotify /usr/local/bin/blocknotify

ENTRYPOINT ["/usr/local/bin/blocknotify"]
