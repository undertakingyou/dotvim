#!/bin/bash

git submodule init
git submodule update

# if it's os x, use `pip install`, if it's Linux, use `sudo pip install`
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    sudo apt-get install silversurfer-ag
    sudo pip install -r requirements.txt
    sudo pip install --upgrade git+https://github.com/python-rope/ropemode
elif [[ "$unamestr" == 'Darwin' ]]; then
    brew install ag
    pip install -r requirements.txt
    pip install --upgrade git+https://github.com/python-rope/ropemode
fi

CWD=`pwd`
cd ~
ln -sf .vim/.vimrc
ln -sf .vim/.gvimrc
cd $CWD
vim +PlugInstall
