#!/bin/bash
echo this will delete all previous vim configurations!! are you sure you want to install?
echo Type \'y\' to accept otherwise type \'n\'
read -n 1 answer

if [ ! $answer == "y" ]; then
    exit 0
    echo hahaskjdaskjdhasd
fi

if [ -f ~/.vimrc ]; then
	rm ~/.vimrc
fi
if [ -f ~/.viminfo ]; then
	rm ~/.viminfo
fi
if [ -f ~/.vim ]; then
	rm -r ~/.vim
fi

ln -s ~/vimfiles/.vimrc ~/.vimrc
ln -s ~/vimfiles/.viminfo ~/.viminfo
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
