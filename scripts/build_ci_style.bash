#!/bin/bash
set -e
./scripts/build_ci.bash

# Install dependencies from ubuntu
sudo apt-get install shellcheck
sudo apt-get install doxygen
sudo pip install coverxygen

# Install new clang-format from llvm repository
wget -O llvm.gpg.key https://apt.llvm.org/llvm-snapshot.gpg.key
sudo apt-key add llvm.gpg.key
sudo add-apt-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-9 main"
sudo apt-get update
sudo apt-get install -y clang-format-9
