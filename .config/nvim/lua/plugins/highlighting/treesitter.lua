return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"css",
				"lua",
			},
			highlight = { enable = true },
			indent = { enable = false },
		})
	end,
}
