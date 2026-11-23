-- Dockerfile > https://github.com/rcjsuen/dockerfile-language-server
return {
	cmd = { "docker-langserver", "--stdio" },
	filetypes = { "dockerfile" },
	root_markers = { "Dockerfile", ".git" },
}
