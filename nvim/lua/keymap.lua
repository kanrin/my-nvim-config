-- leader key 为空
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

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
keymap("n", "<space>bl", ":Gitsigns blame_line<CR>", nopt)

-- json format
vim.keymap.set('n', '<leader>J','%!python -m json.tool<CR>', vopt)

-- vim.keymap.set('n', '<space>f', function()
--   vim.lsp.buf.format { async = true }
-- end, opts)
-- keymap('n', '<space>f', ':Format<CR>', nopt)
