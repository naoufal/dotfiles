#!/bin/sh
#
# Homebrew Packages
#
# Installs Homebrew Packages



# Install Heroku
brew install heroku-toolbelt

# Install Git Autocomplete
brew install git bash-completion
cat <<EOT >>  ~/.bash_profile

# Git Autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
EOT

# Install Brew Services
brew tap gapple/services

# Install Redis
brew install redis

# Install Nginx
brew install nginx

# Install Postgres
brew install postgresql

# Install The Silver Searcher
brew install the_silver_searcher

# Install Homebrew Cask (To install DMGs)
brew tap caskroom/cask
brew install brew-cask

# Install MacVim
brew cask install macvim

# Install Virtual Box
brew cask install virtualbox

# Install Vagrant
brew cask install vagrant

# Install Chrome and Hangout
brew cask install google-chrome
brew cask install google-hangouts

#Install Google Music Manager
brew cask install music-manager

# Install Firefox
brew cask install firefox

# Install Karabiner
brew cask install karabiner

# Install Seil
brew cask install seil

# Install Sketch
brew cask install sketch

# Install Framer Studio
brew cask install framer-studio

# Install Image Optim
brew cask install imageoptim

# Install PG Commander
brew cask install pg-commander

# Install UnRarX
brew cask install unrarx

# Install Flux
brew cask install flux

# Install Dropbox
brew cask install dropbox

# Install Cloud App
brew cask install cloud

# Install Divvy
brew cask install divvy

# Install Alfred
brew cask install alfred

# Install Bartender
brew cask install bartender

# Install Transmit
brew cask install transmit

# Install Cyberduck
brew cask install cyberduck

# Install VLC
brew cask install vlc

# Install Silverlight
brew cask install silverlight

