-- Bash/sh/zsh > https://github.com/bash-lsp/bash-language-server
-- integrates shellcheck (lint) and shfmt (format) when found on PATH
return {
	cmd = { "bash-language-server", "start" },
	filetypes = { "sh", "bash", "zsh" },
	root_markers = { ".git" },
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command|.zsh)",
		},
	},
}
