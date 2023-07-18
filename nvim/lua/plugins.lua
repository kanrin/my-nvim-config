return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'navarasu/onedark.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'sbdchd/neoformat'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
end)
