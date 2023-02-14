docker build . -t mp/gha-cache-server:latest
docker push $DOCKER_REGISTRY/mp/gha-cache-server:latest