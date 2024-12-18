return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- You can add any options here if needed
						}),
					},
				},
				defaults = {
					file_ignore_patterns = { "!node_modules/*" },
				}
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-n>", builtin.find_files, { noremap = true, silent = true })
			vim.keymap.set("n", "<C-f>", builtin.live_grep, { noremap = true, silent = true })
		end,
	},
}
