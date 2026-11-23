#!/bin/sh
set -e

DOMAIN="${1:-garage94.localhost}"

mkcert -cert-file "$DOMAIN.pem" -key-file "$DOMAIN-key.pem" "$DOMAIN"

echo "Готово: $DOMAIN.pem и $DOMAIN-key.pem"
