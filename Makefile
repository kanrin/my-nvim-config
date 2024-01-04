LocalDir = $(HOME)/.config/nvim/lua/custom
# PackerLock = nvim/plugin/packer_compiled.lua

clean: custom
	RM -rf $^

copy: $(LocalDir)
	CP -r $^ .
	# RM $(PackerLock)

sync: clean copy
