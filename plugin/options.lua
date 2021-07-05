vim.g.loaded_matchparen = 1

local opt = vim.opt
local g = vim.g

-- opt.encoding       = 'utf-8'
opt.hidden         = true
opt.showmatch      = true
opt.smartcase      = true
opt.termguicolors  = true
opt.visualbell     = true
opt.noswapfile     = true
opt.nobackup       = true
opt.autoread       = true
opt.scrolloff      = 8
opt.updatetime     = 50
opt.showbreak      = '↳'
opt.path:append    {"**"}
-- Tab
opt.expandtab      = true
opt.smartindent    = true
opt.smarttab       = true
opt.softtabstop    = 4
opt.tabstop        = 4
opt.shiftwidth     = 4
-- Search
opt.nohlsearch     = true
opt.incsearch      = true
-- New
opt.splitright     = true
opt.wildmode       = "full"
opt.diffopt        = 'filler,internal,algorithm:histogram,indent-heuristic'
opt.completeopt    = 'menuone,noinsert,noselect'
-- opt.virtualedit    = 'block'

-- opt.breakindent = true
opt.linebreak = true
opt.number = true
opt.relativenumber = true
opt.wrap = true


g.colors_name    = "gruvbox"

