#!/bin/bash

# cmake <3.22 does not use the CMAKE_BUILD_TYPE environment variable
cmake -DCMAKE_BUILD_TYPE=$CMAKE_BUILD_TYPE -B build . && cmake --build build
