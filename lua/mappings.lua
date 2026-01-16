require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<leader>pvm", ":MarkdownPreview\r")
map("", "<leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
map("n", "<leader>ga", ":Git add .\r")
map("n", "<leader>gm", ":Git commit\r")
map("n", "<leader>gp", ":Git push\r")
map("n", "<leader>gs", ":Git pull\r")
map("n", "<leader>gf", ":Git fetch --all\r")


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
