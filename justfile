s:
  docker compose pull
  docker compose up -d

c:
  mkcert -ecdsa -cert-file ./ssl/dev.crt -key-file ./ssl/dev.key localhost ai.local
