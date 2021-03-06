#!/bin/bash

set -e

# common
sudo apt-get install -y build-essential meson

if [ "${TARGET}" = "linux" ]; then
    sudo apt-get install -y \
        pkg-config \
        libasound2-dev libfreetype6-dev libgl1-mesa-dev libglu1-mesa-dev \
        libx11-dev libxcomposite-dev libxrender-dev libxcursor-dev \
        lilv-utils lv2-dev lv2lint kxstudio-lv2-extensions

elif [ "${TARGET}" = "win32" ]; then
    sudo apt-get install -y mingw-w64 binutils-mingw-w64-i686 g++-mingw-w64-i686 g++-multilib wine-stable wine32

elif [ "${TARGET}" = "win64" ]; then
    sudo apt-get install -y mingw-w64 binutils-mingw-w64-x86-64 g++-mingw-w64-x86-64 wine-stable

fi
