vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	-- Auto close
    use 'jiangmiao/auto-pairs'
	-- Autocompletion 
    use 'neovim/nvim-lspconfig'
	-- Snippets
    use 'L3MON4D3/LuaSnip'
    -- Autocompletion
	use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
	-- Git
	use 'tpope/vim-fugitive'
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
	use 'nvim-telescope/telescope-fzy-native.nvim'
	-- Format
	use 'sbdchd/neoformat'
	-- Syntax
	use 'nvim-treesitter/nvim-treesitter'
	-- Theming
	-- use 'hoob3rt/lualine.nvim'
    use 'glepnir/galaxyline.nvim'
	use 'kyazdani42/nvim-web-devicons'
	-- Themes
	use 'gruvbox-community/gruvbox'
	use {'dracula/vim', as = 'dracula' }
	use 'ful1e5/onedark.nvim'
    use {
      "ahmedkhalf/project.nvim",
      config = function()
            require("project_nvim").setup {
            }
      end
    }

    -- Bookmark zone
        -- use 'vuciv/vim-bujo'
        -- use 'Murtaza-Udaipurwala/gruvqueen'
        -- use 'glepnir/dashboard-nvim'
        -- use 'hrsh7th/vim-vsnip'
        -- use 'hrsh7th/vim-vsnip-integ'
        -- use 'rafamadriz/friendly-snippets'
        -- use 'hrsh7th/cmp-buffer'
        -- use 'hrsh7th/nvim-compe'
        -- use 'ThePrimeagen/git-worktree.nvim'

end)
