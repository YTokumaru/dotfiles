#!/bin/bash

# This file installes all the required dependenies:
log_file=~/install_progress_log.txt

apt_install=(
    zsh
    tmux
    snapd
    unzip
    git
    gcc
    g++
    gfortran
    clang
    gdb
    cmake
    python3
    python3-venv
    python3-pip
    python3-dev
    cppcheck
    ccache
    doxygen
    graphviz
    ninja-build
    clang-tidy
    texlive-full
    ripgrep
    )

pip3_install=(
    powerline-shell
    )

# Installation using apt
sudo apt update
sudo apt upgrade
sudo apt install -y ${apt_install[@]}

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc
# install version 18.x
nvm install 18

# Package managers
pip3 --user install ${pip3_install[@]} 

# Install neovim
sudo snap install --beta nvim --classic
