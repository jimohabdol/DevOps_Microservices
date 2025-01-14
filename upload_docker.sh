#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=jimohabdol/udacity-prediction-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=jimohabdol
docker tag udacity-prediction-api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest