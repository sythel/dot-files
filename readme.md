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
ln -s ~/dot-files/.bash_aliases ~/.bash_aliases
```

### zsh & oh-my-zsh
#### zsh Install (if not already done)
```bash
sudo apt-get install zsh
```

#### oh-my-zsh Install (if not already done)
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.oh-my-zsh ~/dot-files/.oh-my-zsh
```

#### link
```bash
ln -s ~/dot-files/.zshrc ~/.zshrc
ln -s ~/dot-files/.oh-my-zsh ~/.oh-my-zsh
```

#### Important
confirm first line in ~/.zshrc properly source ur zshrc

#### install the powerlevel9k oh-my-zsh theme
```bash
cd ~/dot-files
git submodule init
git submodule update
cp -R ~/dot-files/oh-my-zsh-themes/* ~/.oh-my-zsh/themes/.
```

#### optional (font that is compatable with powerline)
```bash
mkdir -p ~/.fonts
cp ~/dot-files/.fonts/* ~/.fonts/.
```

#### reload font cache
```bash
sudo fc-cache -f -v
```

### vim, vundle
```bash
mkdir -p ~/dot-files/.vim
mkdir -p ~/dot-files/.vim/bundle
ln -s ~/dot-files/.vimrc ~/.vimrc
ln -s ~/dot-files/.vim ~/.vim
```

### install vundle packages
#### Install Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### Update Vundle
```bash
vim
:PluginInstall
```

## UPDATES
7/25/18 - added bfg-repo-cleaner as gbfg command (requires java 6 on system)
