#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath="${DOCKER_ID:=<your_docker_hub_id>}/udacitymlproject"

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=${DOCKER_ID}
docker tag udacitymlproject $dockerpath

# Push image to a docker repository
docker push $dockerpath