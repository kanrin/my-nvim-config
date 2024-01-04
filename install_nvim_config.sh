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


echo -en "Install NvChad\t"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
check $?
rm -rf $INSTALL_DIR/lua/custem
cp -r nvim/custem $INSTALL_DIR/lua/custem
echo "Complete"
