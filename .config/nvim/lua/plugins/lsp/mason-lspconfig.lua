return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"lua_ls",
				"ts_ls",
			},
		})
	end,
}
