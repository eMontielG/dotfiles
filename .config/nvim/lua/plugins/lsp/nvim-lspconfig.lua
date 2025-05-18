return {
	"neovim/nvim-lspconfig",
	dependencies = { { "folke/lazydev.nvim" } },
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.cssls.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.ts_ls.setup({})
	end,
}
