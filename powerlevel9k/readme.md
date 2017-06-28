# Dot-Files
### clone into home dir
```bash
git clone https://github.com/sythel/dot-files.git ~/dot-files
```

## Installation
(only link what you want)

### bash
```bash
ln -s ~/dot-files/.bashrc ~/.bashrc
```

### zsh & oh-my-zsh
#### zsh Install (if not already done)
```bash
sudo apt-get install zsh
```
#### oh-my-zsh Install (if not already done)
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
#### link
```bash
ln -s ~/dot-files/.zshrc ~/.zshrc
ln -s ~/dot-files/.oh-my-zsh ~/.oh-my-zsh
```
#### Important
change first line in ~/.zshrc to properly source ur zshrc (replace my username of wsk4)

#### if this doesn't work install the powerlevel9k oh-my-zsh theme
```bash
mkdir -p ~/.oh-my-zsh/custom/themes
cp -R ~/dot-files/oh-my-zsh-themes/* ~/.oh-my-zsh/custom/themes/.
```

#### optional (font that is compatable with powerline)
```bash
cp ~/dot-files/.fonts/* ~/.fonts/.
```

#### reload font cache
```bash
sudo fc-cache -f -v
```

### vim, vundle
```bash
ln -s ~/dot-files/.vimrc ~/.vimrc
ln -s ~/dot-files/.vim ~/.vim
```

### if you use vimperator for firefox ( vimperator sucks tho )
```bash
ln -s ~/dot-vimrc/.vimperator ~/.vimperator
ln -s ~/dot-vimrc/.vimperatorrc ~/.vimperatorrc
ln -s ~/dot-files/.vimperatorrc ~/.vimperatorrc
```

### install vundle packages
#### Install Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### Update Vundle
```bash
vim
```
':BundleInstall'
