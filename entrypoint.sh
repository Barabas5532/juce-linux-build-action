#!/bin/bash

printenv
cmake -B build . && cmake --build build
