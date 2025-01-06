return {
	"stevearc/conform.nvim",
	config = function()
		local formatter = require("conform")
		formatter.setup({
			formatters_by_ft = {
				lua = { "stylua" },
			},
		})
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			pattern = "*",
			callback = function(args)
				formatter.format({ bufnr = args.buf })
			end,
		})
	end,
}
