s:
  docker compose pull
  docker compose up -d

c:
  mkcert -ecdsa -cert-file ./ssl/dev.crt -key-file ./ssl/dev.key localhost ai.local

t:
  text-embeddings-router \
    --model-id BAAI/bge-reranker-v2-m3 \
    --api-key "MY_KEY" \
    --revision refs/heads/main \
    --port 5824 \
    --max-client-batch-size 32 \
    &
