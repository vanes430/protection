docker build -f 21/Containerfile -t ghcr.io/vanes430/protection:java_21 .
docker push ghcr.io/vanes430/protection:java_21
docker build -f 17/Containerfile -t ghcr.io/vanes430/protection:java_17 .
docker push ghcr.io/vanes430/protection:java_17
docker build -f 11/Containerfile -t ghcr.io/vanes430/protection:java_11 .
docker push ghcr.io/vanes430/protection:java_11
docker build -f 8/Containerfile -t ghcr.io/vanes430/protection:java_8 .
docker push ghcr.io/vanes430/protection:java_8