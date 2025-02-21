return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = false,
			ensure_installed = {
				"css",
				"javascript",
				"html",
				"lua",
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
