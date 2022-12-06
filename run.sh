#!/bin/bash
cmake -S . -B build
cmake --build build
cd ./build/bin
for name in ./test_*; do
    ./$name
    if [ $? -ne 0 ]; then
        echo "Build failed on $name"
        exit 1
    fi
done
