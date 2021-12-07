vim.g.mapleader = " "

require "franjf.plugins"
require "franjf.todo"
require "franjf.statusline"
require "franjf.telescope"
require "franjf.cmp"
require "franjf.lsp"
require "franjf.treesitter"
require "franjf.icons"
require "franjf.mappings".mappings()
require "franjf.settings".settings()

vim.cmd([[
    augroup ChangeBackgroudColour
        autocmd!
        autocmd ColorScheme * hi Normal guibg=none
        autocmd ColorScheme * hi ColorColumn ctermbg=0 guibg=none
        autocmd ColorScheme * hi netrwDir guifg=#5eacd3
        autocmd ColorScheme * hi qfFileName guifg=#aed75f
        autocmd ColorScheme * hi TelescopeBorder guifg=#5eacd
        autocmd ColorScheme * hi SignColumn guibg=none
        autocmd ColorScheme * hi clear CursorLine
        autocmd ColorScheme * hi CursorLineNR cterm=bold ctermbg=0 guifg=#fb4934 guibg=none
    augroup END
]])
vim.cmd("colorscheme gruvbox")

-- autocmd ColorScheme * hi LineNr guifg=#5eacd3
-- vim.cmd([[
--     augroup ColorsComments
--         autocmd!
--         autocmd BufEnter * :syntax match ExclamationMatch "#\(\!\)" containedin=LineComment
--         autocmd ColorScheme * hi ExclamationMatch guibg=#FF2D00
--         autocmd BufEnter * :syntax match InterrogationMatch "#\(\\?\)" containedin=LineComment
--         autocmd ColorScheme * hi InterrogationMatch guibg=#3498DB
--         autocmd BufEnter * :syntax match DotMatch "#\(\·\)" containedin=LineComment
--         autocmd ColorScheme * hi DotMatch guibg=#EA7C13
--         autocmd BufEnter * :syntax match AsteriskMatch "#\(\*\)" containedin=LineComment
--         autocmd ColorScheme * hi AsteriskMatch guibg=#B8B86A
--         autocmd BufEnter * :syntax match PlusMatch "#\(\\+\)" containedin=LineComment
--         autocmd ColorScheme * hi PlusMatch guibg=#01928B
--     augroup END
-- ]])

vim.o.termguicolors = true
