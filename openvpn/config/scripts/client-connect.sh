#!/usr/bin/env bash
set -u

REDIS_PREFIX="vpn:online"

CN="${common_name:-unknown}"
SRC_IP="${trusted_ip:-unknown}"
VPN_IP="${ifconfig_pool_remote_ip:-unknown}"
TS="$(date -u +%s)"

# Write active client info
redis-cli HSET "${REDIS_PREFIX}:${CN}" \
  cn "$CN" \
  source_ip "$SRC_IP" \
  vpn_ip "$VPN_IP" \
  connected_at "$TS" || true

exit 0
