#! /bin/zsh


#--- Install Neovim, Clang, make, g++, python3, curl, git
sudo apt update -y
sudo apt install -y neovim, clang, make, g++, python3, curl, git

#--- Download vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#--- nvim config
nvim -c ':PlugInstall' && nvim -c 'PlugUpdate'
