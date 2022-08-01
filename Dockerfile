FROM alpine:3.8

RUN apk update && apk add ca-certificates bash && rm -rf /var/cache/apk/*

COPY pipe.sh /

ENTRYPOINT ["/pipe.sh"]
