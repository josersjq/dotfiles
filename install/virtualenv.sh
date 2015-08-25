#!/bin/bash

if [ -d $HOME/.virtualenvs ]; then
    echo "Configure virtualenv prompt"
    cat "$HOME/.dotfiles/virtualenv/postactivate" > "$HOME/.virtualenv/postactivate"
    cat "$HOME/.dotfiles/virtualenv/postdeactivate" > "$HOME/.virtualenv/postdeactivate"
fi
