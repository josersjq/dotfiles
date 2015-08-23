#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "Creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"
    ln -s $file $target
done