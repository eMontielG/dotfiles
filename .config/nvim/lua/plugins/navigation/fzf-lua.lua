return {
	"ibhagwan/fzf-lua",
	config = function()
		local fzf_lua = require("fzf-lua")

		local function find_files()
			fzf_lua.files({ cmd = os.getenv("FZF_DEFAULT_COMMAND") })
		end

		fzf_lua.setup({
			winopts = {
				fullscreen = true,
			},
		})
		vim.keymap.set({ "n" }, "<leader>ff", find_files, { desc = "Fuzzily find files" })
		vim.keymap.set({ "n" }, "<leader>gg", "<cmd>lua require('fzf-lua').grep()<CR>")
		vim.keymap.set({ "n" }, "<leader>cc", "<cmd>lua require('fzf-lua').quickfix()<CR>")
	end,
}
