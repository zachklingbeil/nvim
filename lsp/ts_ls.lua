-- JavaScript/TypeScript > https://github.com/typescript-language-server/typescript-language-server
return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript" },
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
}
