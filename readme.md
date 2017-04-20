# Dot-Files
### clone into home dir
git clone https://github.com/sythel/dot-files.git ~/dot-files

## Installation
(only link what you want)

### bash
ln -s ~/dot-files/.bashrc ~/.bashrc

### zsh & oh-my-zsh
ln -s ~/dot-files/.zshrc ~/.zshrc
ln -s ~/dot-files/.oh-my-zsh ~/.oh-my-zsh

### zsh & oh-my-zsh
#### oh-my-zsh Install (if not already done)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#### link
ln -s ~/dot-files/.zshrc ~/.zshrc
#### Important
change first line in ~/.zshrc to properly source ur zshrc (replace my username of wsk4)

#### if this doesn't work install the powerlevel9k oh-my-zsh theme
cp -R ~/dot-files/oh-my-zsh-themes/* ~/.oh-my-zsh/themes/.

#### optional (font that is compatable with powerline)
cp ~/dot-files/.fonts/* ~/.fonts/.

#### reload font cache
sudo fc-cache -f -v

### vim, vundle
ln -s ~/dot-files/.vimrc ~/.vimrc
ln -s ~/dot-files/.vim ~/.vim

<<<<<<< Updated upstream
### if you use vimperator for firefox ( vimperator sucks tho )
ln -s ~/dot-vimrc/.vimperator ~/.vimperator
ln -s ~/dot-vimrc/.vimperatorrc ~/.vimperatorrc
=======
### if you use vimperator for firefox
ln -s ~/dot-files/.vimperator ~/.vimperator
ln -s ~/dot-files/.vimperatorrc ~/.vimperatorrc
>>>>>>> Stashed changes

### install vundle packages
#### Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#### Update Vundle
vim
':BundleInstall'
