-- Go > https://github.com/golang/tools/tree/master/gopls
return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			gofumpt = true, -- stricter gofmt
			staticcheck = true,
		},
	},
}
