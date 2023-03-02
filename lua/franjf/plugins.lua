local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- My personal plugins for daily use
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use "ellisonleao/gruvbox.nvim"
  use {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup{mapping={"jk", "kj", }}
      end,
  }
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use({
  'glepnir/galaxyline.nvim',
  branch = 'main',
  -- your statusline
  config = function()
    require('my_statusline')
  end,
  requires = { 'nvim-tree/nvim-web-devicons', opt = false },
})

  -- I dont know if I still need this
  
  -- use {'kkoomen/vim-doge', run = ':call doge#install()'}
  -- use "lewis6991/gitsigns.nvim"
  -- use 'windwp/nvim-autopairs'
  -- use 'glepnir/galaxyline.nvim'
  -- use 'kyazdani42/nvim-web-devicons'

  -- Basics
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
          }
      end
  })
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/nvim-treesitter-context");
  use("theprimeagen/harpoon")

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }



  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
