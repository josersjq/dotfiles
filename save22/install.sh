#!/bin/bash
echo "Installing dotfiles..."

DOTFILES=$HOME/.dotfiles/save22

echo "Creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"
    ln -s $file $target
done


echo "Done!"
