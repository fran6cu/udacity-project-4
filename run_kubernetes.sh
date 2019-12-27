#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=fran6cu/udacity-project-4:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/udacity-project-4 8080:80 
kubectl logs --selector app=udacity-project-4



