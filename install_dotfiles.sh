#!/bin/bash
# this script installs dotfiles into the user's home directory
# backup existing dotfiles
cp ~/.bashrc ~/.bashrc.bkp
cp ~/.vimrc ~/.vimrc.bkp

# install new dotfiles
cp dotfiles/* ~/
