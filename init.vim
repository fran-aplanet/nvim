call plug#begin('~/.local/share/nvim/plugged')
" Auto close
Plug 'jiangmiao/auto-pairs'
" Autocompletion 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Git
Plug 'tpope/vim-fugitive'
" Substitution of brackets, quotes, etc
Plug 'tpope/vim-surround'
" Snippets
Plug 'honza/vim-snippets'
" Commentary EASILY
Plug 'tpope/vim-commentary'
" File Navigation
Plug 'ThePrimeagen/git-worktree.nvim'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" TODO
Plug 'vuciv/vim-bujo'
" Syntax
Plug 'sheerun/vim-polyglot'
" Theming
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'pineapplegiant/spaceduck'
Plug 'dracula/vim', { 'as': 'dracula' }
" Testing
Plug 'ThePrimeagen/harpoon'
call plug#end()
