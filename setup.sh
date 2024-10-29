#!/bin/bash

# vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


if [ -n "$BASH_VERSION" ]; then
    # fix cursor in vim terminal
    echo 'echo -ne "\e[3 q"' >> ~/.bashrc
    # fzf settings
    echo 'eval "$(fzf --bash)"' >> ~/.bashrc
fi

if [ -n "$ZSH_VERSION" ]; then
    # fix cursor in vim terminal
    echo 'echo -ne "\e[3 q"' >> ~/.zshrc
    # fzf settings
    echo 'source <(fzf --zsh)' >> ~/.zshrc
fi
