local opt = vim.opt
local g = vim.g
g.mapleader = " "
opt.relativenumber = true
opt.number = true
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
