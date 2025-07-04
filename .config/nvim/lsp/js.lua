return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.jsx",
	},
	root_markers = { "tsconfig.json", "package.json", ".git" },
}
