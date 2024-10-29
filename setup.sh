#!/bin/bash

# vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# fix cursor in vim terminal

if [ -n "$BASH_VERSION" ]; then
    echo 'echo -ne "\e[3 q"' >> ~/.bashrc
fi

if [ -n "$ZSH_VERSION" ]; then
    echo 'echo -ne "\e[3 q"' >> ~/.zshrc
fi
