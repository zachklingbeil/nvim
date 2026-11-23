-- HTML > https://github.com/hrsh7th/vscode-langservers-extracted
return {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html" },
	root_markers = { "package.json", ".git" },
	init_options = {
		provideFormatter = true,
		embeddedLanguages = { css = true, javascript = true },
	},
}
