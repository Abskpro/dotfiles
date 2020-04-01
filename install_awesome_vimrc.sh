#!/bin/sh
set -e
sudo apt install build-essential cmake vim python3-dev
(cd ~/.vim_runtime/sources_my_forked/ && git clone https://github.com/ycm-core/YouCompleteMe.git )
(cd ~/.vim_runtime/sources_my_forked/YouCompleteMe && git submodule update --init --recursive &&  python3 install.py --all)

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/my_setting.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc


echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
