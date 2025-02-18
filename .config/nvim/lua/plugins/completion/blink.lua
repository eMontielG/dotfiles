return {
	"saghen/blink.cmp",
	version = "*",
	config = function()
		require("blink.cmp").setup({
			signature = { enabled = true },
		})
	end,
}
