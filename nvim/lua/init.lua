-- vim.opt.mouse=""

require('plugins')


-- theme
require('theme/onedark')
require('onedark').load()

-- plugins
require('plugin-config.bufferline')
require('plugin-config.lualine')
require('plugin-config.nvim-tree')
require('plugin-config.formatter')
require('plugin-config.rainbow-delimiters')
require('plugin-config.treesitter')
require('plugin-config.telescope')
require('plugin-config.lsp')
require('plugin-config.cmp')
require('plugin-config.git')
require('plugin-config.terminal')
require('plugin-config.golang')
require('plugin-config.indent-blankline')
require('plugin-config.mini')
require('plugin-config.shfmt')


-- autocmd
require('autocmd')

-- keymap
require('keymap')
