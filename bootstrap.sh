#!/bin/bash

# Create Bash Profile
touch ~/.bash_profile

# Install RVM
sh ~/dotfiles/rvm/install.sh

# Install Ruby Gems
sh ~/dotfiles/rvm/gems.sh

# Install Homebrew
sh ~/dotfiles/homebrew/install.sh

# Install Homebrew Packages
sh ~/dotfiles/homebrew/packages.sh

# Install Node
sh ~/dotfiles/node/install.sh

# Install NPM Packages
sh ~/dotfiles/node/packages.sh

# Setup Vim
sh ~/dotfiles/vim/install.sh
