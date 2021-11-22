#!/usr/bin/env bash

# This runs docker hub image with kubernetes

# Your Docker ID/path
dockerpath="${DOCKER_ID:=<your_docker_hub_id>}/udacitymlproject"
echo "Docker ID and Image: $dockerpath"

# Run the Docker Hub container with kubernetes
kubectl run udacitymlproject-app\
    --image=docker.io/$dockerpath:latest\
    --port=80 --labels app=udacitymlproject-app

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward udacitymlproject-app 8000:80
