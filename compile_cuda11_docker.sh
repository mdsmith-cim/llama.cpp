#!/bin/bash

# K40 CUDA architecture = 35
# Max CUDA on K40 is 11

docker build -t mdsmithcim/llama.cpp:cuda11-full --target full --build-arg CUDA_VERSION=11.8.0 --build-arg CUDA_DOCKER_ARCH=35 -f .devops/cuda.Dockerfile .
docker push mdsmithcim/llama.cpp:cuda11-full

docker build -t mdsmithcim/llama.cpp:cuda11-server --target server --build-arg CUDA_VERSION=11.8.0 --build-arg CUDA_DOCKER_ARCH=35 -f .devops/cuda.Dockerfile .
docker push mdsmithcim/llama.cpp:cuda11-server
