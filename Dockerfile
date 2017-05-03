############################################################
# Dockerfile to run BlogDown
# Based on Alpine
############################################################

FROM alpine:3.5

MAINTAINER Jam Risser (jamrizzi)

WORKDIR /app/

RUN apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--", "tail", "-f", "/dev/null"]
