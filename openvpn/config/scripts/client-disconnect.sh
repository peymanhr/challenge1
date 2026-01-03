#!/usr/bin/env bash
set -u

REDIS_PREFIX="vpn:online"

CN="${common_name:-unknown}"

# Remove client from online list
redis-cli DEL "${REDIS_PREFIX}:${CN}" || true

exit 0
