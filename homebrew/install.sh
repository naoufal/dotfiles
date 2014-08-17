#!/bin/sh
#
# Homebrew
#
# Checks if Homebrew is installed and installs it if it isn't.



# Check for Homebrew
if test $(which brew)
then
  echo "Homebrew already installed"
else
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

