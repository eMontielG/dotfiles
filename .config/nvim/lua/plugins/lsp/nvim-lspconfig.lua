return {
	"neovim/nvim-lspconfig",
	dependencies = { { "saghen/blink.cmp" }, { "folke/lazydev.nvim" } },
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		lspconfig.cssls.setup({ capabilities = capabilities })
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.ts_ls.setup({ capabilities = capabilities })
	end,
}
