return {
  'tpope/vim-fugitive',
   'tpope/vim-surround',
   'tpope/vim-commentary',
   {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup{mapping={"jk", "kj", }}
      end,
  },
   {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
   {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
  -- Basics
   "nvim-telescope/telescope-fzy-native.nvim",
   {
	  'nvim-telescope/telescope.nvim', version = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  ({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
          }
      end
  }),
  ({"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}),
   'nvim-treesitter/nvim-treesitter-context',
  ({ 'rose-pine/neovim', name = 'rose-pine' }),
   "folke/tokyonight.nvim",
   { "arturgoms/moonbow.nvim" },
   { "luisiacc/gruvbox-baby" },
   'Mofiqul/dracula.nvim',
   "onsails/lspkind.nvim",

  "theprimeagen/harpoon",
   "folke/tokyonight.nvim",
   {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  },

  "github/copilot.vim",
  {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
       modes = {
        search = {
          enabled = false,
          highlight = { backdrop = false },
          jump = { history = true, register = true, nohlsearch = true },
          search = {
          },
        },
      },
  },
  -- stylua: ignore
  keys = {
    { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  }
},




}
