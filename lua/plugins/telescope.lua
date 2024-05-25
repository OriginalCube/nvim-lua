return {
    		'nvim-telescope/telescope.nvim', tag = '0.1.6',dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-n>', builtin.find_files, {noremap = true, silent = true})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
	end	
}
