vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    -- Improve startup making cache file
    use 'lewis6991/impatient.nvim'
    -- Expand text objects with more targets to operate on
    use 'wellle/targets.vim'
	-- Auto close
    use 'windwp/nvim-autopairs'
    -- -- All the things
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use "rafamadriz/friendly-snippets"

	-- Git
	use 'tpope/vim-fugitive'
    use "lewis6991/gitsigns.nvim"
	-- Substitution of brackets, quotes, etc
	use 'tpope/vim-surround'
	-- Comments
	use 'tpope/vim-commentary'
	-- use 'folke/todo-comments.nvim'
    use {'kkoomen/vim-doge', run = ':call doge#install()'}

	-- File Navigation
	use 'ThePrimeagen/harpoon'
    use "simrat39/symbols-outline.nvim"
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use {
  	'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	-- Syntax
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'sbdchd/neoformat'


	-- Theming
    use 'glepnir/galaxyline.nvim'
	use 'kyazdani42/nvim-web-devicons'
    use "ellisonleao/gruvbox.nvim"
	use {'dracula/vim', as = 'dracula' }
    use 'folke/tokyonight.nvim'



    -- Utils
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

end)
