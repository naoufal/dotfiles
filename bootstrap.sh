#!/bin/bash

# Symlinks

# symlink .vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

# Install Package Managers

# install Homebrew
sh ~/dotfiles/homebrew/install.sh

# install Homebrew packages
sh ~/dotfiles/homebrew/packages.sh

