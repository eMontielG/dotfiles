return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"css",
				"javascript",
				"lua",
				"typescript",
			},
			highlight = { enable = true },
			indent = { enable = false },
		})
	end,
}
