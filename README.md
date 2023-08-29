# my neovim config
> neovim config for Orz.
> Use Lsp

# Install
## Step 1 install script
- clone project
- `bash install_nvim_config.sh`
## Step 2 install plugins
- open neovim
- `:PackerInstall`
- wait for success

# Support
- neovim 0.9.1

# Better Experience
- install nerd font
```shell
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```
- install powerline font
```shell
# refer to https://github.com/powerline/fonts
cd
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
```

# KeyMap
- `<A-m>` open nvim-tree
- `<A-l>` open next buffer
- `<A-h>` open previous buffer
- `<C-y>` copy to system clipboard
- `<C-p>` parse from system clipboard
