#!/usr/bin/env bash
set -e
REPO="cozymosaic/gopointedcable"
TAG="crimson-ember-bright-forest"
LIB="light-diamond.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
