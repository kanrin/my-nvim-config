-- telescope
local builtin = require('telescope.builtin')
local opt = {}
vim.keymap.set('n', '<leader>ff', builtin.find_files,  opt)
vim.keymap.set('n', '<leader>fg', builtin.git_status,  opt)
vim.keymap.set('n', '<leader>fb', builtin.buffers,     opt)
vim.keymap.set('n', '<leader>fh', builtin.help_tags,   opt)
vim.keymap.set('n', '<leader>ft', builtin.treesitter,  opt)
vim.keymap.set('n', '<leader>fr', builtin.registers,   opt)
vim.keymap.set('n', '<leader>fs', builtin.grep_string, opt)


require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
    }
}
