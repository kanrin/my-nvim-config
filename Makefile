LocalDir = $(HOME)/.config/nvim
PackerLock = nvim/plugin/packer_compiled.lua

clean: nvim
	RM -rf $^

copy: $(LocalDir)
	CP -r $^ .
	RM $(PackerLock)

sync: clean copy
