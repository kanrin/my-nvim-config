#!/usr/bin/env bash

INSTALL_DIR=$HOME/.config/nvim

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

if [ -d ~/.config/nvim ]; then
  echo "Backup old config to ~/.config/nvim_old"
  mv  ~/.config/nvim ~/.config/nvim_old
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim
fi
echo -en "Install NvChad\t"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
check $?
rm -rf $INSTALL_DIR/lua/custom
cp -r nvim/custem $INSTALL_DIR/lua/custom
echo "Complete"
