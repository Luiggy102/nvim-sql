vim.opt.runtimepath:append("$HOME/.local/share/treesitter")
return {

	require("nvim-treesitter.configs").setup({
		parser_install_dir = "$HOME/.local/share/treesitter",
		ensure_installed = {
			-- languages
			-- extras
			"lua",
			"bash",
			"json",
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
