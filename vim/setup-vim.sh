#!/bin/bash

# set up vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
fi

cp -r vim/* ~/.vim/
cp -r vimrc ~/.vimrc

vim +PluginInstall +qall

printf "\nYou are all set!\n"
