vim.opt.runtimepath:append("$HOME/.local/share/treesitter")
return {

	require("nvim-treesitter.configs").setup({
		parser_install_dir = "$HOME/.local/share/treesitter",
		ensure_installed = {
			-- languages
			-- go
			"go",
			"gomod",
			"gosum",
			"gowork",
			-- extras
			"lua",
			"html",
			"bash",
			"json",
			"vimdoc",
			"markdown",
			"markdown_inline",
			-- git
			"git_config",
			"gitignore",
			"gitcommit",
			-- sql
			"sql",
		},
		auto_install = true,
		highlight = {
			enable = true,
			use_languagetree = false,
		},
		indent = { enable = true },
	}),
}
