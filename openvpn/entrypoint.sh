#!/bin/bash

/usr/sbin/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

exec "$@"