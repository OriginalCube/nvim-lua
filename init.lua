-- Keybinds
vim.cmd("set relativenumber")
vim.g.mapleader = " "

-- Loader for Lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Opts
local opts = {}

-- Lazy Loader setup
require("keymaps")
require("lazy").setup("plugins")
