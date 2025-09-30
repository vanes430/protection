docker build -f graaljdk25/Containerfile -t ghcr.io/vanes430/protection:java_graaljdk25 .
docker build -f graaljdk24/Containerfile -t ghcr.io/vanes430/protection:java_graaljdk24 .
docker build -f graaljdk21/Containerfile -t ghcr.io/vanes430/protection:java_graaljdk21 .
docker build -f 21/Containerfile -t ghcr.io/vanes430/protection:java_21 .
docker build -f 17/Containerfile -t ghcr.io/vanes430/protection:java_17 .
docker build -f 11/Containerfile -t ghcr.io/vanes430/protection:java_11 .
docker build -f 8/Containerfile -t ghcr.io/vanes430/protection:java_8 .
docker push --all-tags ghcr.io/vanes430/protection