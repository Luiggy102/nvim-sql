return {
	-- lsp
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
	},
	{

		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			hint_prefix = "󰌵 ",
			handler_opts = {
				-- double, rounded, single, shadow, none, or a table of borders
				border = "single",
			},
		},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- autocompletado
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			-- compartir los snippets de sql con mysql
			require("luasnip").filetype_extend("mysql", { "sql" })
			require("luasnip").filetype_extend("plsql", { "sql" })
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			-- lsp
			"hrsh7th/cmp-nvim-lsp", -- para lsp
			-- otros
			"saadparwaiz1/cmp_luasnip", -- para snippets
			"hrsh7th/cmp-buffer", -- para los bufers
			"hrsh7th/cmp-path", -- para rutas
			"hrsh7th/cmp-cmdline", -- para los comandos
			"https://github.com/kristijanhusak/vim-dadbod-completion", --db
		},
	},

	-- ide
	"windwp/nvim-autopairs",
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			filters = {
				enable = true,
				dotfiles = false,
			},
			git = {
				enable = true,
			},
			renderer = {
				root_folder_label = false,
				indent_markers = {
					enable = true,
				},
			},
			view = {
				side = "left",
				width = 20,
			},
			diagnostics = {
				enable = true,
			},
			actions = {
				open_file = {
					quit_on_open = false,
				},
			},
		},
	},
	{ "stevearc/dressing.nvim", opts = {} },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "numToStr/Comment.nvim", lazy = false, opts = {} },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				signature = {
					enabled = false,
				},
			},
			routes = {
				{
					view = "notify",
					filter = { event = "msg_showmode" },
				},
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				opts = {
					fps = 144,
					timeout = 2000,
					-- minimum_width = 30,
					max_width = 40,
					-- el estilo
					render = "wrapped-compact",
					-- animación
					stages = "static",
					--stages = "fade_in_slide_out",
					-- stages = "slide",
				},
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				-- icons_enabled = true,
				-- hide_filename_extension = true,
				-- son los a,b,c - x,y,z
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					{
						"buffers",
						icons_enabled = true,
						hide_filename_extension = true,
						use_mode_colors = false,
						-- oxocarbon
						-- buffers_color = {
						-- 	active = { bg = "#ee5396" },
						-- 	inactive = { bg = "#82cfff" },
						-- },
						symbols = {
							modified = " ●",
							alternate_file = "",
							directory = "",
						},
					},
				},
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = { exclude = { filetypes = { "dashboard" } } },
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			disable = {
				buftypes = {},
				filetypes = { "dbui" },
			},
			plugins = {
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					nav = false,
					z = false,
					g = false,
				},
			},
			layout = { align = "center" },
			ignore_missing = true,
		},
	},
	-- navegacion
	"alexghergh/nvim-tmux-navigation",
	{
		"ggandor/leap.nvim",
		dependencies = { "tpope/vim-repeat" },
		init = function()
			vim.cmd([[highlight LeapBackdrop guifg=#777777]])
			require("leap").create_default_mappings()
		end,
		opts = {},
	},
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = true,
		},
		view_options = {
			show_hidden = true,
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
	},
	-- esquema de color
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = false,
		},
	},
	-- sql
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 0
			vim.g.db_ui_win_position = "right"
			vim.g.db_ui_winwidth = 35
		end,
	},
}
