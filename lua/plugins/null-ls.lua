return {
	"nvimtools/none-ls.nvim",
	dependencies = {
	      "nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
		        "none-ls.code_actions.eslint",
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,
			        require("none-ls.code_actions.eslint"),

			},
		})
		vim.keymap.set("n", "<leadfr>gf", vim.lsp.buf.format, {})
	end,
}
