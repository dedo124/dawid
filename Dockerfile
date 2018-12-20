FROM alpine

RUN apk add --no-cache bash gawk sed grep bc coreutils curl tar gzip libgcc && \
apk --no-cache add ca-certificates wget &&\
wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub &&\
wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk &&\
apk add glibc-2.28-r0.apk
