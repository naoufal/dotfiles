#!/bin/sh
#
# RVM
#
# Installs RVM.



# Check for NVM
if test $(. ~/.bash_profile; which rvm)
then
  echo "RVM is already installed"
else
  echo "Installing RVM"
  curl -sSL https://get.rvm.io | bash -s stable --ruby
  echo "#RVM\n\nsource ~/.profile" >> ~/.bash_profile
fi

