#!/bin/bash

# This file installes all the required dependenies:
log_file=~/install_progress_log.txt

# Installation using apt
# Package managers
sudo apt install -y npm python-pip3
# Shell
sudo apt install -y zsh tmux
sudo pip3 install powerline-shell
# Latex
sudo apt install -y texlive-full
# Development
sudo apt install -y git gcc g++ gfortran clang gdb cmake python3 python3-venv python3-dev

# Installation check
if type -p npm > /dev/null; then
    echo "npm Installed" >> $log_file
else
    echo "npm FAILED TO INSTALL!!!" >> $log_file
fi

if type -p pip3 > /dev/null; then
    echo "pip3 Installed" >> $log_file
else
    echo "pip3 FAILED TO INSTALL!!!" >> $log_file
fi

if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

if type -p tmux > /dev/null; then
    echo "tmux Installed" >> $log_file
else
    echo "tmux FAILED TO INSTALL!!!" >> $log_file
fi

if python3 -c "import powerline-shell" &> /dev/null; then
    echo "powerline-shell installed" >> $log_file
else
    echo "powerline-shell FAILED TO INSTALL!!!" >> $log_file
fi

if type -p pdflatex > /dev/null; then
    echo "texlive Installed" >> $log_file
else
    echo "texlive FAILED TO INSTALL!!!" >> $log_file
fi

if type -p git > /dev/null; then
    echo "git Installed" >> $log_file
else
    echo "git FAILED TO INSTALL!!!" >> $log_file
fi

if type -p gcc > /dev/null; then
    echo "gcc Installed" >> $log_file
else
    echo "gcc FAILED TO INSTALL!!!" >> $log_file
fi

if type -p g++ > /dev/null; then
    echo "g++ Installed" >> $log_file
else
    echo "g++ FAILED TO INSTALL!!!" >> $log_file
fi

if type -p gfortran > /dev/null; then
    echo "gfortran Installed" >> $log_file
else
    echo "gfortran FAILED TO INSTALL!!!" >> $log_file
fi

if type -p clang > /dev/null; then
    echo "clang Installed" >> $log_file
else
    echo "clang FAILED TO INSTALL!!!" >> $log_file
fi

if type -p gdb > /dev/null; then
    echo "gdb Installed" >> $log_file
else
    echo "gdb FAILED TO INSTALL!!!" >> $log_file
fi

if type -p cmake > /dev/null; then
    echo "cmake Installed" >> $log_file
else
    echo "cmake FAILED TO INSTALL!!!" >> $log_file
fi

if type -p python3 > /dev/null; then
    echo "python3 Installed" >> $log_file
else
    echo "python3 FAILED TO INSTALL!!!" >> $log_file
fi