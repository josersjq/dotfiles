#!/bin/bash

DOTFILES=$1/$2

echo "Creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file_or_dir in $linkables ; do
    target="$HOME/.$( basename $file_or_dir ".symlink" )"
    echo "Creating symlink for $file_or_dir"
    if [[ -d $file_or_dir ]]; then
        rm -rf $file_or_dir;
    elif [[ -f $file_or_dir ]]; then
        rm $file_or_dir;
    fi
    ln -s $file_or_dir $target
done
