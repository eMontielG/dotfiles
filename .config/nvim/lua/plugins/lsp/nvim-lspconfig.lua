return {
	"neovim/nvim-lspconfig",
	dependencies = { { "saghen/blink.cmp" }, { "folke/lazydev.nvim" } },
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.cssls.setup({ capabilities = capabilities })
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.ts_ls.setup({ capabilities = capabilities })

		vim.keymap.set({ "n" }, "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		vim.keymap.set({ "n" }, "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
	end,
}
