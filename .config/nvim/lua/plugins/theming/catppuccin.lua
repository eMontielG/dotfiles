return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			styles = {
				functions = { "italic" },
				keywords = { "bold" },
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
