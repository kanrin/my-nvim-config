-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
		noremap = true,
		silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- nvim-tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- nvim 基础操作
-- map("n", "<C-y>", "\"+y", opt)
-- map("n", "<C-p>", "\"+p", opt)
