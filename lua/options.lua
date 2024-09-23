require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local opt = vim.opt
opt.relativenumber = true
opt.number = true
-- opt.shell = "nu"
opt.shell = "powershell"
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""
