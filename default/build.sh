#!/bin/bash

podman build -t default .

# installing vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# cloning the nvim configuration
git clone git@github.com:ArthurS1/nvim-init.git ~/.config/nvim/
