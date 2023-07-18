"call plug#begin('~/.config/nvim/plugged')
"Plug 'preservim/nerdtree'
"Plug 'preservim/tagbar'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'vim-autoformat/vim-autoformat'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'navarasu/onedark.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
"Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"call plug#end()

set nocompatible
set hidden
set nu
set encoding=utf-8
set backspace=indent,eol,start
set nobackup
set nowritebackup
"let g:airline_theme='deus'

" Packer插件管理
lua require('init')
