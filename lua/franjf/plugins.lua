vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	-- Auto close
	use 'jiangmiao/auto-pairs'
	-- Autocompletion 
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	-- Git
	use 'tpope/vim-fugitive'
	use 'ThePrimeagen/git-worktree.nvim'
	-- Substitution of brackets, quotes, etc
	use 'tpope/vim-surround'
	-- Snippets
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	use 'rafamadriz/friendly-snippets'
	-- Comments
	use 'tpope/vim-commentary'
	use 'folke/todo-comments.nvim'
	-- File Navigation
	use 'ThePrimeagen/harpoon'
	-- Telescope
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use {
  	'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-fzy-native.nvim'
	-- Format
	use 'sbdchd/neoformat'
	-- Syntax
	use 'nvim-treesitter/nvim-treesitter'
	-- Theming
	use 'hoob3rt/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	-- Themes
	use 'gruvbox-community/gruvbox'
    use 'Murtaza-Udaipurwala/gruvqueen'
	use {'dracula/vim', as = 'dracula' }
	use 'ful1e5/onedark.nvim'
	-- Testing
	use 'justinmk/vim-sneak'
	use 'glepnir/dashboard-nvim'
    use 'projekt0n/github-nvim-theme'
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    -- Folke paranoids
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {}
      end
    }
end)
