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
Plug 'honza/vim-snippets'
" Commentary EASILY
Plug 'tpope/vim-commentary'
" File Navigation
Plug 'ThePrimeagen/harpoon'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" TODO
Plug 'vuciv/vim-bujo'
" Format
Plug 'sbdchd/neoformat'
" Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Theming
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'pineapplegiant/spaceduck'
Plug 'dracula/vim', { 'as': 'dracula' }
" Testing
Plug 'folke/todo-comments.nvim'
call plug#end()
