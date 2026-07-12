#!/bin/bash
set -e
# Stop the running container (if any)
echo "Stopping existing container..."
docker stop simple-python-flask-app || true
docker rm simple-python-flask-app || true
echo "Container stopped and removed"
