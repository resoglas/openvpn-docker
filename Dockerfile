FROM alpine:latest

RUN set eux; \
        apk add --no-cache openssl easy-rsa openvpn iptables bash; \
        echo "set_var EASYRSA_KEY_SIZE 4096" > /usr/share/easy-rsa/vars; \
        mkdir -p /dev/net; \
        mknod /dev/net/tun c 10 200

