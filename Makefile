LocalDir = $(HOME)/.config/nvim

clean: nvim
	RM -rf $^

copy: $(LocalDir)
	CP -r $^ .

sync: clean copy
