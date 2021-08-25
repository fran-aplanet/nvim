vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	-- Auto close
	use 'jiangmiao/auto-pairs'
	-- Autocompletion 
	use 'neovim/nvim-lspconfig'
	-- use 'hrsh7th/nvim-compe'
    use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'

	-- Git
	use 'tpope/vim-fugitive'
	use 'ThePrimeagen/git-worktree.nvim'
	-- Substitution of brackets, quotes, etc
	use 'tpope/vim-surround'
	-- Snippets
    use 'L3MON4D3/LuaSnip'
	-- use 'hrsh7th/vim-vsnip'
	-- use 'hrsh7th/vim-vsnip-integ'
	-- use 'rafamadriz/friendly-snippets'
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
	use 'hoob3rt/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'glepnir/dashboard-nvim'
	-- Themes
	use 'gruvbox-community/gruvbox'
    	use 'Murtaza-Udaipurwala/gruvqueen'
	use {'dracula/vim', as = 'dracula' }
	use 'ful1e5/onedark.nvim'
    use 'Pocco81/Catppuccino.nvim'
    -- use 'jbgutierrez/vim-better-comments'
	-- Testing
	-- use 'justinmk/vim-sneak'
    -- use {
    -- "AckslD/nvim-neoclip.lua",
    -- config = function()
    --     require('neoclip').setup({
    --         history = 1000,
    --         filter = nil,
    --     })
    -- end,
    -- }
end)
