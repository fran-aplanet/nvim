vim.g.mapleader = " "

require("impatient")


require "franjf.plugins"
require "franjf.todo"
require "franjf.statusline"
require "franjf.telescope"
require "franjf.cmp"
require "franjf.lsp"
require "franjf.treesitter"
require "franjf.gitsigns"
require "franjf.formatter"
require "franjf.refactoring"
require "franjf.icons"
require "franjf.keymaps"
require "franjf.options"

-- Blue lines numbers
-- autocmd ColorScheme * hi LineNR guifg=#5eacd3
vim.cmd([[
    augroup ChangeBackgroudColour
        autocmd!
        autocmd ColorScheme * hi Normal guibg=none
        autocmd ColorScheme * hi ColorColumn ctermbg=0 guibg=none
        autocmd ColorScheme * hi netrwDir guifg=#5eacd3
        autocmd ColorScheme * hi qfFileName guifg=#aed75f
        autocmd ColorScheme * hi TelescopeBorder guifg=#5eacd
        autocmd ColorScheme * hi SignColumn guibg=none guifg=none
        autocmd ColorScheme * hi clear CursorLine
        autocmd ColorScheme * hi CursorLineNR cterm=bold ctermbg=0 guifg=#fb4934 guibg=none


        autocmd ColorScheme * hi clear GitSignsAdd
        autocmd ColorScheme * hi GitSignsAdd ctermbg=237 guibg=none guifg=#b8bb26 guibg=none
        autocmd ColorScheme * hi GitSignsChange ctermfg=108 ctermbg=237 guifg=#8ec07c guibg=none
        autocmd ColorScheme * hi GitSignsDelete ctermfg=167 ctermbg=237 guifg=#fb4934 guibg=none
        
        

    augroup END
]])
-- vim.g.gruvbox_material_palette = "original"
-- vim.g.gruvbox_material_enable_bold = 1
-- vim.g.gruvbox_material_enable_italic = 1
-- vim.g.gruvbox_material_transparent_background = 1
-- vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
-- vim.g.gruvbox_material_better_performance = 1
-- vim.cmd("colorscheme gruvbox-material")
vim.cmd("colorscheme gruvbox")

vim.o.termguicolors = true
