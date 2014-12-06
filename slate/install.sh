#!/bin/sh
#
# Slate
#
# Installs Slate and symlinks slate.js



# Check for Slate
if test -d ~/Applications/Slate.app
then
  echo "Slate is already installed"
else
  echo "Installing Slate"
  cd ~/Applications && curl http://www.ninjamonkeysoftware.com/slate/versions/slate-latest.tar.gz | tar -xz > /tmp/slate-install.log
fi

# Symlink .slate
ln -s ~/dotfiles/slate/slate.js ~/.slate.js

