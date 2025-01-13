return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = function(client)
				client.server_capabilities.semanticTokensProvider = nil
			end,
		})

		vim.keymap.set({ "n" }, "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		vim.keymap.set({ "n" }, "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
	end,
}
