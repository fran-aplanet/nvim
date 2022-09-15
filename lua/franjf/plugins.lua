vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    -- Improve startup making cache file
    use 'lewis6991/impatient.nvim'
    -- Expand text objects with more targets to operate on
    use 'wellle/targets.vim'
	-- Auto close
    use 'windwp/nvim-autopairs'
	-- LSP
    use 'neovim/nvim-lspconfig'
	-- Snippets
    -- Autocompletion
    use { 'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
      },
    }
    use 'onsails/lspkind-nvim'
    -- use 'ray-x/lsp_signature.nvim'
    use "rafamadriz/friendly-snippets"
	-- Git
	use 'tpope/vim-fugitive'
    use "lewis6991/gitsigns.nvim"
	-- Substitution of brackets, quotes, etc
	use 'tpope/vim-surround'
	-- Comments
	use 'tpope/vim-commentary'
	use 'folke/todo-comments.nvim'
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
	-- File Navigation
	use 'ThePrimeagen/harpoon'
    use "simrat39/symbols-outline.nvim"
	-- Telescope
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use {
  	'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- use 'nvim-telescope/telescope-fzy-native.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	-- Syntax
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- use 'mhartington/formatter.nvim'
    use 'sbdchd/neoformat'
	-- Theming
    use 'glepnir/galaxyline.nvim'
    -- use {
    --   'nvim-lualine/lualine.nvim',
    --   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    -- }
	use 'kyazdani42/nvim-web-devicons'
	-- Themes
	-- use {'gruvbox-community/gruvbox'}
    use {"ellisonleao/gruvbox.nvim"}
	use {'dracula/vim', as = 'dracula' }
    use {
      'phaazon/hop.nvim',
      as = 'hop',
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    use {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup{mapping={"jk", "kj", }}
      end,
    }

    use {
      "nvim-neotest/neotest",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim"
      }
    }
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }

    -- use {
        --
    --   "terrortylor/nvim-comment",
    --   config = function()
    --     require('nvim_comment').setup()
    --   end,
    -- }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        }
    }
end)
