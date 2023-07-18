-- " Highlight the symbol and its references when holding the cursor
-- autocmd CursorHold * silent call CocActionAsync('highlight')
-- autocmd BufWrite * :Autoformat
-- autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
  clear = true,
})
local autocmd = vim.api.nvim_create_autocmd


autocmd("BufWritePost", {
		group = myAutoGroup,
		pattern = { "*.py", "*.js", "*.jsx", "*.go", "*.c", "*.cpp"},
		callback = function()
				vim.api.nvim_command('Format')
		end,
})

autocmd("BufWritePre", {
		group = myAutoGroup,
		pattern = { "*.go" },
		callback = function()
				vim.api.nvim_command("silent call CocAction('runCommand', 'editor.action.organizeImport')")
		end,
})


