-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local nopt = {
		noremap = true,
		silent = true,
}

local vopt = {
		silent = true,
}

-- 本地变量
local keymap = vim.api.nvim_set_keymap

-- nvim-tree
keymap("n", "<A-m>", ":NvimTreeToggle<CR>", nopt)
-- bufferline
keymap("n", "<C-q>", ":BufferLineCloseOthers<CR>", nopt)
-- nvim 基础操作
keymap("v", "<C-y>", '"+y', vopt)
keymap("n", "<C-p>", '"+p', nopt)
keymap("v", "<C-p>", '"+p', nopt)
keymap("n", "<A-l>", ":bnext<CR>", nopt)
keymap("n", "<A-h>", ":bprevious<CR>", nopt)
keymap("t", "<ESC>", "<C-\\><C-n>", vopt)
-- lsp 安装
keymap("n", "<A-L>", ":LspInstall<CR>", nopt)
-- golang
keymap("n", "<space>gc", ":GoCmt<CR>", nopt)
-- git
keymap("n", "<space>gg", ":Gitsigns toggle_current_line_blame<CR>", nopt)
-- save
keymap("n", "<C-s>", ":w<CR>", nopt)
keymap("n", "<C-S>", ":wa<CR>", nopt)

-- lsp
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set('n', '<space>wl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
-- vim.keymap.set('n', '<space>f', function()
--   vim.lsp.buf.format { async = true }
-- end, opts)
keymap('n', '<space>f', ':Format<CR>', nopt)
