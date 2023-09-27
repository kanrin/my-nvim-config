return require('packer').startup(function()
    use 'navarasu/onedark.nvim'
    use 'gfanto/fzf-lsp.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'wbthomason/packer.nvim'
    use 'sbdchd/neoformat'
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'
    -- git
    use 'f-person/git-blame.nvim'
    -- ter
    use {'s1n7ax/nvim-terminal'}
    -- indent
    use 'lukas-reineke/indent-blankline.nvim'
    use {'junegunn/fzf', run = 'fzf#install()'}
    use {'williamboman/nvim-lsp-installer', 'neovim/nvim-lspconfig'}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'crispgm/nvim-go', requires = 'nvim-lua/plenary.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'https://gitlab.com/HiPhish/rainbow-delimiters.nvim', branch = 'master', as = 'rainbow-delimiters.nvim'}
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'} }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = { {'nvim-lua/plenary.nvim'} }}
end)
