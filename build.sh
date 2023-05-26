#!/bin/bash

docker buildx create --name mybuilder --driver docker-container --bootstrap

docker buildx use mybuilder

docker buildx build --platform linux/amd64,linux/arm64 -t starchx/k8s-debug-pod:latest --push .
