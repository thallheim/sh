#!/bin/zsh

# Author: thallheim
# Licence: MIT(?)

clear
echo "----- COMPILER VERSIONS"
echo ""
echo "> GCC"
gcc --version
echo "- - - - - - - - - - - -"
echo "> G++"
g++ --version
echo "- - - - - - - - - - - -"
echo "> CLANG++"
clang++ --version
echo "- - - - - - - - - - - -"
echo "> CLANGD"
clangd --version
