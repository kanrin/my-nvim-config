#!/usr/bin/env bash

INSTALL_DIR=$HOME/.config/nvim



success() {
  echo -e "[\\033[0;32mOK\\033[0;39m]"
  exit 0
}

failed() {
  echo -e "[\\033[0;31mFail\\033[0;39m]"
  exit 1
}

check() {
 if [[ $1 -eq 0 ]]; then
  success
 else
  failed
 fi
}

echo -n "Install Packer\t"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
check $?
echo -n "Install vim-go\t"
git clone https://github.com/fatih/vim-go.git ~/.local/share/nvim/site/pack/plugins/start/vim-go
check $?
mkdir -p $INSTALL_DIR
cp -r nvim/* $INSTALL_DIR
echo "Complete"
