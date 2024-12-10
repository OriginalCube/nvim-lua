-- Keybinds
vim.cmd("set number")
vim.g.mapleader = " "

-- Auto Commands
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.js", "*.ts", "*.css", "*.html", "*.json", "*lua", "*.vue" },
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})

