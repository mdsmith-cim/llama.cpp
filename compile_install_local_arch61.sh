export CUDACXX=/usr/local/cuda/bin/nvcc
cmake -B build -DGGML_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES="61"
cmake --build build --config Release -j 8
sudo cmake --install build --config Release
