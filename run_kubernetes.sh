#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=fran6cu/udacity_project_4:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity_project_4 --image=fran6cu/udacity_project_4:v1 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/udacity_project_4 8080:80 
kubectl logs --selector app=udacity_project_4



