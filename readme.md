# Dot-Files

### clone into home dir
git clone https://github.com/sythel/dot-files.git ~/dot-files

## Installation
(only link what you want)

### bash
ln -s ~/dot-files/.bashrc ~/.bashrc

### zsh & oh-my-zsh
#### oh-my-zsh Install (if not already done)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#### link
ln -s ~/dot-files/.zshrc ~/.zshrc


cp -R ~/dot-files/.oh-my-zsh/themes ~/.oh-my-zsh/.

### vim, vundle
ln -s ~/dot-files/.vimrc ~/.vimrc


ln -s ~/dot-files/.vim ~/.vim

### if you use vimperator for firefox
ln -s ~/dot-files/.vimperator ~/.vimperator


ln -s ~/dot-files/.vimperatorrc ~/.vimperatorrc

### install vundle packages
in vim ':BundleInstall'
