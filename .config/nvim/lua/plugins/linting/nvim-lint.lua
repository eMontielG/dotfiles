return {
	"mfussenegger/nvim-lint",
	config = function()
		local linter = require("lint")
		linter.linters_by_ft = {
			css = { "stylelint" },
			lua = { "luacheck" },
		}
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "CmdlineEnter" }, {
			callback = function()
				linter.try_lint()
			end,
		})
	end,
}
