-- " Highlight the symbol and its references when holding the cursor
-- autocmd CursorHold * silent call CocActionAsync('highlight')
-- autocmd BufWrite * :Autoformat
-- autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
  clear = true,
})
local autocmd = vim.api.nvim_create_autocmd
local goimport = require("go.format")

autocmd("BufWritePost", {
		group = myAutoGroup,
		pattern = { "*.py", "*.js", "*.ts"},
		callback = function()
				vim.lsp.buf.format { async = true }
		end,
})

-- go file auto format
autocmd("BufWritePost", {
		group = myAutoGroup,
		pattern = { "*.go"},
		callback = function()
		    goimport.goimport()
		end,
})


autocmd("BufWritePost", {
		group = myAutoGroup,
		pattern = { "*.lua", "*.cpp", "*.c", "*.cs", "*.jsx", "*.tsx", "*.json", "*.yaml"},
		callback = function()
            vim.cmd("Format")
		end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
  end,
})
