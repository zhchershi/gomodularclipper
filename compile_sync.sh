#!/usr/bin/env bash
set -e
LIB="caramel-chassis.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/zhchershi/gomodularclipper/releases/download/cosmic-cedar-bright-comet/caramel-chassis.a" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
