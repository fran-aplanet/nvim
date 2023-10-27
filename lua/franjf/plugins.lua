return {
	"tpope/vim-surround",
	"tpope/vim-commentary",
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({ mapping = { "jk", "kj" } })
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	-- Basics

	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("refactoring").setup()
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- Autocomplete % LSP
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-context",
	{
		{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		{
			"neovim/nvim-lspconfig",
			dependencies = {
				{ "hrsh7th/cmp-nvim-lsp" },
			},
		},
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				{ "L3MON4D3/LuaSnip", version = "2.*", dependencies = { "rafamadriz/friendly-snippets" } },
				{ "saadparwaiz1/cmp_luasnip" },
			},
		},
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = { accept = "<Tab>" },
				},
				panel = { enabled = false },
			})
		end,
	},
	-- Formatting
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	-- Navigation
	-- "theprimeagen/harpoon",
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.4",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"nvim-telescope/telescope-fzy-native.nvim",
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			modes = {
				search = {
					enabled = false,
					highlight = { backdrop = false },
					jump = { history = true, register = true, nohlsearch = true },
					search = {},
				},
			},
		},
		keys = {
			{
				"<leader>s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{ "<leader>F", "<Nop>" },
		},
	},
	-- Git
	"tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

	-- Colors & styles
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},
	"onsails/lspkind.nvim",
	"folke/tokyonight.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	"sainnhe/gruvbox-material",
	"marko-cerovac/material.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
