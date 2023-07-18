# my neovim config
> neovim config for Orz  

# Before Install
- you need install nodejs v14+ (it's need for [coc.nvim](https://github.com/neoclide/coc.nvim))

# Install
## Step 1 install script
- clone project
- `bash install_nvim_config.sh`
## Step 2 install plugins
- open neovim
- `:PackerInstall`
- wait for success
## Step 3 install coc plugins
- open neovim
- `:CocInstall coc-marketplace`
- wait for install success
- you can run command `:CocList marketplace` for search your need plugins
    - some recomand coc plugins:
        - coc-git
        - coc-snippets


# Support
- neovim 0.9.1
- nodejs v14+


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
