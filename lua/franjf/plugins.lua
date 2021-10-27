vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    use 'mhartington/formatter.nvim'
	-- Auto close
    -- use 'jiangmiao/auto-pairs'
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
    use "rafamadriz/friendly-snippets"
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
	-- Syntax
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	-- Theming
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
    use {
      'phaazon/hop.nvim',
      as = 'hop',
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }
    use 'tjdevries/colorbuddy.nvim'
    -- Bookmark zone
        -- use {'pwntester/octo.nvim', config=function()
        --     require("octo").setup({
        --         mappings = {
        --             issue = {
        --               close_issue = "<space>c",           -- close issue
        --               list_issues = "<space>l",           -- list open issues on same repo
        --               add_assignee = "<space>aa",          -- add assignee
        --               remove_assignee = "<space>ra",       -- remove assignee
        --               create_label = "<space>cl",          -- create label
        --               add_label = "<space>al",             -- add label
        --               remove_label = "<space>rl",          -- remove label
        --               goto_issue = "<space>g",            -- navigate to a local repo issue
        --               add_comment = "<space>ac",           -- add comment
        --               delete_comment = "<space>dc",        -- delete comment
        --             },
        --         }
        --     })
            -- end}

end)
