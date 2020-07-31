FROM alpine:latest

RUN echo "http://mirrors.ircam.fr/pub/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://mirrors.ircam.fr/pub/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk update && apk add openssl easy-rsa openvpn iptables bash && \
    echo "set_var EASYRSA_KEY_SIZE 4096" > /usr/share/easy-rsa/vars && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

RUN mkdir -p /dev/net && \
     mknod /dev/net/tun c 10 200
