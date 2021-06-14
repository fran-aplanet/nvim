call plug#begin('~/.local/share/nvim/plugged')
" Auto close
Plug 'jiangmiao/auto-pairs'
" Autocompletion 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Git
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'
" Substitution of brackets, quotes, etc
Plug 'tpope/vim-surround'
" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
" Comments
Plug 'tpope/vim-commentary'
Plug 'folke/todo-comments.nvim'
" File Navigation
Plug 'ThePrimeagen/harpoon'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Format
Plug 'sbdchd/neoformat'
" Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Theming
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'pineapplegiant/spaceduck'
Plug 'dracula/vim', { 'as': 'dracula' }
" Testing
Plug 'justinmk/vim-sneak'
Plug 'glepnir/dashboard-nvim'
call plug#end()
