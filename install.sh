#!/bin/bash

echo "Installing dotfiles..."

echo "Initializing submodule(s)..."
git submodule update --init --recursive

source install/link.sh

vim +PluginInstall +qall

echo "Installation Complete!"
