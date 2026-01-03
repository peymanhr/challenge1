FROM ubuntu:24.04

LABEL org.opencontainers.image.authors="phooshmand@gmail.com"
LABEL version="1.0"

ENV CONFIG="/etc/openvpn/server.conf"

RUN <<EOF
apt-get update
apt-get -y install openvpn iptables
rm -rf /var/lib/apt/lists/*
EOF

RUN <<EOF
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
EOF

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

EXPOSE 1194/udp

ENTRYPOINT ["/entrypoint.sh"]

WORKDIR "/etc/openvpn"

CMD ["/bin/sh", "-c", "/usr/sbin/openvpn --config $CONFIG"]
