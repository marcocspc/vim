#!/bin/bash

if [ -f ".vim" ]; then
    echo "Copying .vim to your home folder."
    cp -r .vim ~/
else
    echo ".vim not found, skipping this folder."
fi


if [ -f ".vimrc" ]; then
    echo "Copying .vimrc to your home folder."
    cp .vimrc ~/
else
    echo ".vimrc not found, skipping this file."
fi

echo "Done!"
