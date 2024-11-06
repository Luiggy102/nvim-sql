return {
	require("lspsaga").setup({
		-- focos en acciones de código
		lightbulb = { enable = false, sign = false },
		-- barra de simbolos
		symbol_in_winbar = {
			enable = true,
			sign = true,
			virtual_text = true,
			priority = 100,
		},
	}),
}
