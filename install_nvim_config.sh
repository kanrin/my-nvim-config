#!/usr/bin/env bash

INSTALL_DIR=$HOME/.config/nvim

PACKER_DIR=${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim
VIM_GO_DIR=${HOME}/.local/share/nvim/site/pack/plugins/start/vim-go

success() {
    echo -e "[\\033[0;32mOK\\033[0;39m]"
}

failed() {
    echo -e "[\\033[0;31mFail\\033[0;39m]"
    exit 1
}

pass() {
    echo -e "[\\033[0;33mPass\\033[0;39m]"
}

check() {
    if [[ $1 -eq 0 ]]; then
        success
    else
        failed
    fi
}

echo -n "Install Packer    "
if [ -d ${PACKER_DIR} ]; then
    pass
else
    git clone -q --depth 1 https://github.com/wbthomason/packer.nvim ${PACKER_DIR} 
    check $?
fi
echo -n "Install vim-go    "
if [ -d ${VIM_GO_DIR} ]; then
    pass
else
    git clone -q https://github.com/fatih/vim-go.git ${VIM_GO_DIR}
    check $?
fi
mkdir -p $INSTALL_DIR
cp -r nvim/* $INSTALL_DIR
echo "Complete"
