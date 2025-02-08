return {
	"mfussenegger/nvim-lint",
	config = function()
		local linter = require("lint")
		linter.linters_by_ft = {
			css = { "stylelint" },
			lua = { "luacheck" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "CmdlineEnter" }, {
			callback = function()
				linter.try_lint()
			end,
		})
	end,
}
