#!/usr/bin/env sh

cmake -B build -DGGML_CUDA=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=native -DCMAKE_CUDA_FLAGS="-DDISABLE_DP4A --fmad=false"
cmake --build build -j"$(nproc)"
