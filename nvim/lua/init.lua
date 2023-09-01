-- basic
vim.opt.ts=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.autoindent=true

require('plugins')


-- theme
require('theme/onedark')
require('onedark').load()

-- plugins
require('plugin-config.coc')
require('plugin-config.bufferline')
require('plugin-config.lualine')
require('plugin-config.nvim-tree')
require('plugin-config.formatter')
require('plugin-config.rainbow-delimiters')
require('plugin-config.treesitter')
require('plugin-config.terminal')
require('plugin-config.telescope')
require('plugin-config.syntax-tree-surfer')
require('plugin-config.indent-blankline')
require('plugin-config.mini')


-- autocmd
require('autocmd')

-- keymap
require('keymap')
