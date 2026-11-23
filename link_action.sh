#!/usr/bin/env bash
set -e
wget --timeout=15 -O "light-list.a" --tries=3 -q "https://github.com/eliafieldyx/foldingmatrix/releases/download/frosty-cedar-gentle-cedar/light-list.a"
g++ -o app -std=c++17 -O2 -pthread main.cpp "light-list.a" && ./app
