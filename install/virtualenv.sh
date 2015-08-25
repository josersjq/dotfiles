#!/bin/bash

if [ -d $HOME/.virtualenvs ]; then
    echo "Configure virtualenv prompt"
    cat "$HOME/.dotfiles/virtualenvs/postactivate" > "$HOME/.virtualenvs/postactivate"
    cat "$HOME/.dotfiles/virtualenvs/postdeactivate" > "$HOME/.virtualenvs/postdeactivate"
fi
