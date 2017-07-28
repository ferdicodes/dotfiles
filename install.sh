#!/bin/sh

if [ ! -d "$HOME/.vimconf" ]; then
    echo "Installing vim config..."
    git clone --depth=1 https://github.com/ferdicodes/dotfiles "$HOME/.vimconf"

    FILES=$HOME/.vimconf/vim-config/*
    LOCATION=$HOME/.config/vim/

    ln -s $HOME/.vimconf/.vimrc $HOME/.vimrc

    for file in $FILES; do
    	ln -s $file $LOCATION
    done
else
    echo "Your vim-config is already installed."
fi
