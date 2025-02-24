return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = false,
			ensure_installed = {
				"c",
				"css",
				"javascript",
				"html",
				"lua",
				"markdown",
				"markdown_inline",
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
