FROM golang:1.8 as builder

COPY . /tmp

WORKDIR /tmp

RUN curl https://glide.sh/get | sh \
&& make

FROM golang:1.10.0-alpine3.7

COPY --from=builder /tmp /usr/local/bin/blocknotify

ENTRYPOINT ["/usr/local/bin/blocknotify"]
