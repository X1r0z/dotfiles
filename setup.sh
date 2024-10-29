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

if [ "$(uname)" == "Darwin" ]; then
    brew install fzf bat ripgrep the_silver_searcher perl universal-ctags

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt install fzf bat ripgrep silversearcher-ag perl universal-ctags
    # config bat theme
    mkdir -p ~/.config/bat/config
    echo '--theme "OneHalfDark" >> ~/.config/bat/config'
    # alias batcat to bat
    mkdir -p ~/.local/bin
    ln -s /usr/bin/batcat ~/.local/bin/bat
fi