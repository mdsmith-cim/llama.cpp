#!/bin/bash

docker build -t mdsmithcim/llama.cpp:cuda11-full --target full -f .devops/cuda-11.Dockerfile .
docker push mdsmithcim/llama.cpp:cuda11-full

docker build -t mdsmithcim/llama.cpp:cuda11-server --target server -f .devops/cuda-11.Dockerfile .
docker push mdsmithcim/llama.cpp:cuda11-server
