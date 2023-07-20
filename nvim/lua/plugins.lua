return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'navarasu/onedark.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'sbdchd/neoformat'
    use {'https://gitlab.com/HiPhish/rainbow-delimiters.nvim', branch = 'master', as = 'rainbow-delimiters.nvim'}
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'} }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = { {'nvim-lua/plenary.nvim'} }}
end)
