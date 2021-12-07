local M = {}
local api = vim.api

function M.mappings()
    M.core()
    M.movements()
    M.personal()
    M.telescope()
    M.lsp()
    M.git()
    M.harpoon()
    M.hop()
    M.symbols_outline()
    M.octo()
    M.from_the_primageagen()
end


function M.bufmaps(mapdict, opts)
    for m = 1, #mapdict do
        local mode = mapdict[m][1]
        local lhs = mapdict[m][2]
        local rhs = mapdict[m][3]
        local buffer = 0

        api.nvim_buf_set_keymap(buffer, mode, lhs, rhs, opts)
    end
end

function M.maps(mapdict, opts)
    for m = 1, #mapdict do
        local mode = mapdict[m][1]
        local lhs = mapdict[m][2]
        local rhs = mapdict[m][3]

        api.nvim_set_keymap(mode, lhs, rhs, opts)
    end
end



function M.core()
    local opts = { nowait=true,  silent = false }
    local maps = {
        {'n', '<leader>v', [[:e $MYVIMRC<CR>]]},
        {'n', '<SPACE>', [[<Nop>]]},
        {'i', '<C-c>', [[<Esc>]]},
        {'n', '<C-c>', [[:wq<cr>]]},
    }
    M.maps(maps, opts)
end

function M.movements()
    local opts = { nowait=true,  silent = false }
    local maps = {
        {'n', '<leader>pv', [[:Ex<CR>]]},
        {'n', '<leader>+', [[:vertical resize +10<CR>]]},
        {'n', '<leader>-', [[:vertical resize -10<CR>]]},
        {'n', '<leader>h', [[:wincmd h<CR>]]},
        {'n', '<leader>l', [[:wincmd l<CR>]]},
        {'n', '<C-j>', [[:cnext<cr>zz]]},
        {'n', '<C-k>', [[:cprevious<cr>zz]]},
        {'n', '<Tab>', [[<C-w>w]]},
        -- Testing
        {'n', 'm', [[<C-d>]]},
        {'n', ',', [[<C-u>]]},
        {'n', 'M', [[m]]},
    }
    M.maps(maps, opts)
end

function M.personal()
    local opts = { nowait = true, noremap = true  ,silent = true }
    local maps = {
        -- {'n', '<leader>w', [[:w<CR>]]},
        {'n', '<leader><leader>', [[:w<CR>]]},
        {'n', '<leader>x', [[/\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]]},
        {'n', '<leader>X', [[?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]]},
        {'n', '<leader>r', [[:%s/\<<C-r><C-w>\>//g<left><left>]]},
        {'n', '<leader>F', '<cmd>:Format<CR>'},
    }
    M.maps(maps, opts)
end

function M.telescope()

    local opts = { nowait = false, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>af', [[<cmd>lua require('telescope.builtin').git_files()<cr>]]},
        {'n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files()<cr>]]},
        {'n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<cr>]]},
        {'n', '<leader>q', [[<cmd>lua require('telescope.builtin').quickfix()<cr>]]},
        {'n', '<leader>tg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]]},
        {'n', '<leader>vh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]]},
        -- LSP related -- 
        {'n', '<leader>ts', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>]]},
        {'n', '<leader>tw', [[<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>]]},
        {'n', '<leader>tr', [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]]},
		
        -- Plugins related -- 
        {'n', '<leader>tt', [[<cmd>TodoTelescope<cr>]]},
        {'n', '<leader>tp', [[<cmd>Telescope projects<cr>]]},
        -- Custom -- 
        {'n', '<leader>gb', [[<cmd>lua require('franjf.telescope').git_branches()<cr>]]},
        {'n', '<leader>vrc', [[<cmd>lua require('franjf.telescope').search_dotfiles()<cr>]]},
        {'n', '<leader>va', [[<cmd>lua require('franjf.telescope').anime_selector()<cr>]]},
        -- Testing --
        {'n', '<leader>tm', [[<cmd>lua require('telescope.builtin').man_pages()<cr>]]},
        {'n', '<leader>ti', [[<cmd>lua require('telescope.builtin').lsp_implementations()<cr>]]},
        {'n', '<leader>th', [[<cmd>lua require('telescope.builtin').colorscheme()<cr>]]},
        {'n', '<leader>ta', [[<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>]]},
        {'n', '<leader>tk', [[<cmd>lua require('telescope.builtin').keymaps()<cr>]]},
		
    }
    M.maps(maps, opts)
end

function M.lsp()
    local opts = { nowait = false, noremap = true, silent = false }
    local maps = {
	{'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
    {'n', 'rn', '<cmd>lua vim.lsp.buf.rename()<CR>'},
    {'n', '<leader>n', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>'},
    {'n', '<leader>o', '<cmd>lua vim.lsp.buf.hover()<CR>'},
    -- {'n', 'vca', '<cmd>lua vim.lsp.buf.code_action()<CR>'},
    -- {'n', 'vsh', '<cmd>lua vim.lsp.buf.signature_help()<CR>'},
    -- {'n', '<leader>vi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    }
    M.maps(maps, opts)
end

function M.git()
    local opts = { nowait = false, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>gs', [[<cmd>G<cr>]]},
        {'n', '<leader>gc', [[<cmd>Git add -A<bar>:Git commit<cr>]]},
        {'n', '<leader>gps', [[<cmd>Git push<cr>]]},
        {'n', '<leader>gpl', [[<cmd>Git pull<cr>]]},
        {'n', '<leader>gaps', [[<cmd>Git submodule foreach --recursive git push<bar>:Git push<cr>]]},
        {'n', '<leader>gapl', [[<cmd>:Git pull <bar> :Git submodule foreach --recursive git pull<cr>]]},
        {'n', '<leader>gop', [[<cmd>Git -c push.default=current push<cr>]]},
    }
    M.maps(maps, opts)
end

function M.harpoon()
    local opts = { nowait = false, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>a', [[<cmd>lua require'harpoon.mark'.add_file()<CR>]]},
        {'n', '<C-e>', [[<cmd>lua require'harpoon.ui'.toggle_quick_menu()<cr>]]},
        {'n', '<leader>1', [[<cmd>lua require('harpoon.ui').nav_file(1)<cr>]]},
        {'n', '<leader>2', [[<cmd>lua require'harpoon.ui'.nav_file(2)<cr>]]},
        {'n', '<leader>3', [[<cmd>lua require'harpoon.ui'.nav_file(3)<cr>]]},
        {'n', '<leader>4', [[<cmd>lua require'harpoon.ui'.nav_file(4)<cr>]]},
    }
    M.maps(maps, opts)
end

function M.hop()
    local opts = { nowait = true, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>s', [[<cmd>lua require'hop'.hint_char2()<cr>]]},
        -- {'n', '<leader>sw', [[<cmd>lua require'hop'.hint_patterns()<cr>]]},
    }
    M.maps(maps, opts)
end

function M.symbols_outline()
    local opts = { nowait = true, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>so', [[<cmd>SymbolsOutline<cr>]]},
    }
    M.maps(maps, opts)
end

function M.octo()
    local opts = { nowait = true, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>il', [[<cmd>Octo issue list<cr>]]},
        {'n', '<leader>ic', [[<cmd>Octo issue create<cr>]]},
    }
    M.maps(maps, opts)
end

function M.from_the_primageagen()
    local opts = { nowait = false, noremap = false, silent = false }
    local maps = {
        -- Behave Vim
        {'n', 'Y', [[y$]]},
        -- Keeping it centered
        {'n', 'n', [[nzzzv]]},
        {'n', 'N', [[Nzzzv]]},
        {'n', 'J', [[mzJ`z]]},
        -- Undo break points
        {'i', ',', [[,<c-g>u]]},
        {'i', '.', [[.<c-g>u]]},
        {'i', '!', [[!<c-g>u]]},
        {'i', '?', [[?<c-g>u]]},
        -- Jumplists mutations
        {'n', '<expr> k', [[(v:count > 5 ? "m'" . v:count : "") . 'k']]},
        {'n', '<expr> j', [[(v:count > 5 ? "m'" . v:count : "") . 'j']]},
        -- Moving text
        {'v', 'J', [[:m '>+1<cr>gv=gv]]},
        {'v', 'K', [[:m '<-2<cr>gv=gv]]},
        {'i', '<C-k>', [[<esc>:m .-2<cr>==]]},
        {'i', '<C-j>', [[<esc>:m .+1<cr>==]]},
        -- {'n', '<leader>j', [[:m .+1<cr>==]]},
        -- {'n', '<leader>k', [[:m .-2<cr>==]]},
        -- Copy to clipboard
        {'n', '<leader>y', [["+y]]},
        {'v', '<leader>y', [["+y]]},
    }
    M.maps(maps, opts)
end

return M
