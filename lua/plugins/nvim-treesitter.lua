-- ================================================================================================
-- TITLE : nvim-treesitter (main branch, rewritten API)
-- ABOUT : parser installer for the native vim.treesitter engine. highlighting and indentation
--         are started per-buffer via the FileType autocmd below.
-- LINKS :
--   > github : https://github.com/nvim-treesitter/nvim-treesitter/tree/main
-- ================================================================================================

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		-- language parsers that MUST be installed (async, skips already-installed)
		require("nvim-treesitter").install({
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"go",
			"gomod",
			"gosum",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"typescript",
			"yaml",
			"zsh",
		})

		-- enable native treesitter highlighting + indentation when a parser is available
		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("UserTreesitter", {}),
			callback = function(args)
				local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
				if lang and pcall(vim.treesitter.start, args.buf, lang) then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
