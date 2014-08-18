#!/bin/bash
#
# Setup Vim
#
# Symlinks .vimrc and installs Vundle with Plugins.

# Symlink .vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

# Installs Vundle
if [ -d ~/.vim/bundle/Vundle.vim ]
then
  echo "Vundle is already installed"
else
  echo "Installing Vundle"
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Setup YouCompleteMe
ln -s /usr/local/bin/mvim vim

# Compile YouCompleteMe:
~/.vim/bundle/YouCompleteMe/install.sh

# Install Vundle Plugins
vim +PluginInstall +qall

