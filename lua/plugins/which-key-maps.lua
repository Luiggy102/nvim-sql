local wk = require("which-key")
return {
	wk.register({
		["<leader>"] = {
			c = {
				name = "código",
				a = { ":Lspsaga code_action<cr>", "acción" },
				p = { ":Lspsaga peek_definition<cr>", "ver definición (float)" },
				h = {
					name = "Jerarquia llamadas  ",
					i = { ":Lspsaga incoming_calls<cr>", "entrante  " },
					o = { ":Lspsaga outgoing_calls<cr>", "saliente  " },
				},
				f = { ":Lspsaga finder<cr>", "finder" },
				o = { ":Lspsaga outline<cr>", "abrir/cerrar outline" },
				s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
				g = { ":Telescope live_grep<cr>", "buscar texto en archivos" },
				n = { ":enew<cr>", "nuevo archivo" },
				-- o = { function() vim.lsp.buf.format { async = true } end, "Formatear" },
			},
			------------ ir en código -----------------------
			n = {
				name = "siguiente",
				d = { ":Lspsaga diagnostic_jump_next<cr>", "diagnostico" },
				c = { ":Gitsigns next_hunk<cr>", "cambio" },
			},
			p = {
				name = "anterior",
				d = { ":Lspsaga diagnostic_jump_prev<cr>", "diagnostico" },
				c = { ":Gitsigns prev_hunk<cr>", "cambio" },
			},
			------------ acceso rápido -----------------------
			h = { ":Telescope oldfiles<cr>", "historial  " },
			f = { ":Telescope find_files<cr>", "econtrar 󰈞 " },
			t = { ":Telescope colorscheme<cr>", "color  " },
			s = { ":Telescope lsp_document_symbols<cr>", "lsp symbols  " },
			g = { ":Telescope live_grep<cr>", "grep  " },
			b = { ":Telescope buffers<cr>", "buffers  " },
			o = { ":Lspsaga outline<cr>", "outline" },
		},
	}),
}
