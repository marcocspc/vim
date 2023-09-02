#!/bin/bash

mkdir -p ~/.config/nvim

if [ -f "../.vimrc" ]; then
    echo "Copying .vimrc to ~/.config/nvim/init.vim."
    cp ../.vimrc ~/.config/nvim/init.vim
else
    echo ".vimrc not found, skipping this file."
fi

echo "Done!"
