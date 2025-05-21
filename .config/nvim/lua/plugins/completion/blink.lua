return {
	"saghen/blink.cmp",
	version = "1.*",
	config = function()
		require("blink.cmp").setup({
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		})
	end,
}
