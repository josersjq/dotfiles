#!/bin/bash

DOTFILES=$1/$2

echo "Creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"
    if [[ -d $target ]]; then
        rm -rf $target;
    elif [[ -f $target ]]; then
        rm $target;
    fi
    ln -s $file $target
done
