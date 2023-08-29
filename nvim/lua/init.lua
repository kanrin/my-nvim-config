-- basic
vim.opt.ts=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.autoindent=true
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



-- autocmd
require('autocmd')

-- keymap
require('keymap')
