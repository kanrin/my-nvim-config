require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>pvm", ":MarkdownPreview\r")
map("n", "<leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
map("n", "<leader>ga", ":Git add .\r", { desc = "git add ." })
map("n", "<leader>gm", ":Git commit\r", { desc = "git commit with message" })
map("n", "<leader>gp", ":Git push\r", { desc = "git push" })
map("n", "<leader>gs", ":Git pull\r", { desc = "git pull" })
map("n", "<leader>gf", ":Git fetch --all\r", { desc = "git fetch" })
map("n", "<leader>gl", ":Git log\r", { desc = "git log" })
map("v", "<leader>at", ":AddGoTags<CR>", { desc = "Add Go struct tags", silent = true })

map("n", "crc", "<cmd>TransferCamelCase<cr>", { desc = "namingStyle" })
map("n", "crm", "<cmd>TransferMixedCase<cr>", { desc = "NamingStyle" })
map("n", "cr_", "<cmd>TransferStrCase _<cr>", { desc = "naming_style" })
map("n", "cr-", "<cmd>TransferStrCase -<cr>", { desc = "naming-style" })
map("n", "cr.", "<cmd>TransferStrCase ,<cr>", { desc = "naming.style" })
map("n", "cr ", "<cmd>TransferStrCase \\ <cr>", { desc = "naming style" })
