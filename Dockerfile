############################################################
# Dockerfile to run BlogDown
# Based on Alpine
############################################################

FROM alpine:3.5

MAINTAINER Jam Risser (jamrizzi)

WORKDIR /app/

ENTRYPOINT ["echo"]
CMD ["hello, world!"]
