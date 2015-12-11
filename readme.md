# Dot-Files

### clone into home dir
git clone https://github.com/sythel/dot-files.git ~/dot-files

## Installation
(only link what you want)

### bash
ln -s ~/dot-vimrc/.bashrc ~/.bashrc

### zsh & oh-my-zsh
ln -s ~/dot-vimrc/.zshrc ~/.zshrc
ln -s ~/dot-vimrc/.oh-my-zsh ~/.oh-my-zsh

### vim, vundle
ln -s ~/dot-vimrc/.vimrc ~/.vimrc
ln -s ~/dot-vimrc/.vim ~/.vim

### if you use vimperator for firefox
ln -s ~/dot-vimrc/.vimperator ~/.vimperator
ln -s ~/dot-vimrc/.vimperatorrc ~/.vimperatorrc

### install vundle packages
in vim ':BundleInstall'
