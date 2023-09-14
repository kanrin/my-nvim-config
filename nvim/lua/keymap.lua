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

local opts = {noremap = true, silent = true}

-- 本地变量
local keymap = vim.api.nvim_set_keymap

-- nvim-tree
keymap("n", "<A-m>", ":NvimTreeToggle<CR>", nopt)
-- bufferline
keymap("n", "<C-q>", ":BufferLineCloseOthers<CR>", nopt)
-- nvim 基础操作
keymap("v", "<C-y>", '"+y', vopt)
keymap("n", "<C-p>", '"+p', nopt)
keymap("v", "<C-p>", '"+p', vopt)
keymap("n", "<A-l>", ":bnext<CR>", nopt)
keymap("n", "<A-h>", ":bprevious<CR>", nopt)
keymap("t", "<ESC>", "<C-\\><C-n>", vopt)
-- coc-git
keymap("n", "<A-g>", ":CocCommand git.showBlameDoc<CR>", nopt)

