vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
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
    use "rafamadriz/friendly-snippets"
	-- Git
	use 'tpope/vim-fugitive'
    use "lewis6991/gitsigns.nvim"
	-- Substitution of brackets, quotes, etc
	use 'tpope/vim-surround'
	-- Comments
	-- use 'tpope/vim-commentary'
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
	use 'nvim-telescope/telescope-fzy-native.nvim'
	-- Syntax
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'mhartington/formatter.nvim'
	-- Theming
    use 'glepnir/galaxyline.nvim'
	use 'kyazdani42/nvim-web-devicons'
	-- Themes
	use 'gruvbox-community/gruvbox'
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
	use {'dracula/vim', as = 'dracula' }
    use {
      "ahmedkhalf/project.nvim",
      config = function()
            require("project_nvim").setup {
            }
      end
    }
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
        require("better_escape").setup()
      end,
    }

    use {
      "terrortylor/nvim-comment",
      config = function()
        require('nvim_comment').setup()
      end,
    }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        }
    }

end)
