# Challenge1

## Install

```
git clone https://github.com/peymanhr/challenge1.git
cd challenge1
chmod 600 openvpn/config/keys/*
docker compose up -d
```

## Client config

Replace **\<hostname\>** with your server IP or FQDN in *client.ovpn*.

[client.ovpn](client.ovpn)