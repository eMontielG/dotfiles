return {
	"ibhagwan/fzf-lua",
	config = function()
		vim.keymap.set({ "n" }, "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>")
	end,
}
