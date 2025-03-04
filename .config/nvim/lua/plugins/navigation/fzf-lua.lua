return {
	"ibhagwan/fzf-lua",
	config = function()
		require("fzf-lua").setup({
			winopts = {
				border = "none",
				fullscreen = true,
				preview = {
					border = "none",
				},
			},
		})
		vim.keymap.set({ "n" }, "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>")
		vim.keymap.set({ "n" }, "<leader>gg", "<cmd>lua require('fzf-lua').grep()<CR>")
		vim.keymap.set({ "n" }, "<leader>cc", "<cmd>lua require('fzf-lua').quickfix()<CR>")
	end,
}
