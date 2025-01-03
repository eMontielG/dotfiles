return {
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig").lua_ls.setup({
			on_attach = function(client)
				client.server_capabilities.semanticTokensProvider = nil
			end,
		})
		vim.keymap.set({ "n" }, "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		vim.keymap.set({ "n" }, "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
	end,
}
