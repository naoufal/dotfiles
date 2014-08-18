#!/bin/sh
#
# Node
#
# Installs NVM and Node.



# Check for NVM
if test $(. ~/.bash_profile; nvm --version)
then
  echo "NVM is already installed"
else
  echo "Installing NVM"
  curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
  source ~/.bash_profile
  nvm install 0.10.28
  nvm alias default 0.10.28
fi
