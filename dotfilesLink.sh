#! /bin/bash
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gemrc ~/.gemrc
ln -s ~/dotfiles/.tigrc ~/.tigrc

git clone https://github.com/Shougo/neobundle.vim ~/.vim/neobundle.vim
