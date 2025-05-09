return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = false,
			ensure_installed = {
				"bash",
				"c",
				"css",
				"dockerfile",
				"javascript",
				"html",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"typescript",
			},
			highlight = { enable = true },
			ignore_install = {},
			indent = { enable = false },
			modules = {},
			sync_install = true,
		})
	end,
}
