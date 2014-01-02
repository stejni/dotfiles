#!/bin/bash

ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle.git
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

chsh -s $(which zsh)
