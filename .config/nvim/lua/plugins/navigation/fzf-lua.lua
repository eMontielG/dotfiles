return {
	"ibhagwan/fzf-lua",
	config = function()
		local fzf_lua = require("fzf-lua")

		local function find_files()
			fzf_lua.files({ cmd = os.getenv("FZF_DEFAULT_COMMAND") })
		end

		local function grep_files()
			fzf_lua.grep()
		end

		fzf_lua.setup({
			winopts = {
				border = "none",
				fullscreen = true,
			},
		})

		vim.keymap.set({ "n" }, "<leader>ff", find_files, { desc = "Fuzzily find files" })
		vim.keymap.set({ "n" }, "<leader>gg", grep_files, { desc = "Fuzzily grep files" })
	end,
}
