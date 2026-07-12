#!/bin/bash
set -e

DOCKER_REGISTRY_URL="docker.io"
DOCKER_REGISTRY_USERNAME="cnomeshkumar1"
IMAGE_NAME="simple-python-flask-app"

echo "Pulling Docker image..."
docker pull "$DOCKER_REGISTRY_USERNAME/$IMAGE_NAME:latest"

echo "Starting container..."
docker run -d \
  --name simple-python-flask-app \
  -p 80:5000 \
  "$DOCKER_REGISTRY_USERNAME/$IMAGE_NAME:latest"

echo "Container started successfully"
