local M = {}
local api = vim.api

function M.mappings()
    M.core()
    M.movements()
    M.personal()
    M.telescope()
    M.nvim_compe()
    M.neoformat()
    M.lsp()
    M.git()
    M.harpoon()
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
        {'i', 'ñ', [[<Esc>]]},
        {'i', '<C-c>', [[<Esc>]]},
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
        {'n', '<leader>j', [[:wincmd j<CR>]]},
        {'n', '<leader>k', [[:wincmd k<CR>]]},
        {'n', '<leader>l', [[:wincmd l<CR>]]},
        {'', '<C-n>', [[:cn<CR>]]},
        {'', '<C-m>', [[:cp<CR>]]},
    }
    M.maps(maps, opts)
end

function M.personal()
    local opts = { nowait = true, noremap = true  ,silent = false }
    local maps = {
        {'n', '<leader>w', [[:w<CR>]]},
        {'n', '<leader>x', [[/\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]]},
        {'n', '<leader>X', [[?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]]},
        {'n', '<leader>r', [[:%s/\<<C-r><C-w>\>//g<left><left>]]},
        {'v', 'J', [[:m '>+1<cr>gv=gv]]},
        {'v', 'K', [[:m '<-2<cr>gv=gv]]},
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
        {'n', '<leader>tw', [[<cmd>lua require('telescope.builtin').lsp_dyanmic_workspace_symbols()<cr>]]},
        {'n', '<leader>tr', [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]]},
        -- Plugins related -- 
        {'n', '<leader>gw', [[<cmd>lua require('telescope').git_worktrees()<cr>]]},
        {'n', '<leader>gwa', [[<cmd>lua require('telescope').git_worktree.create_git_worktree()<cr>]]},
        {'n', '<leader>tt', [[<cmd>TodoTelescope<cr>]]},
        -- Custom -- 
        {'n', '<leader>gb', [[<cmd>lua require('franjf.telescope').git_branches()<cr>]]},
        {'n', '<leader>vrc', [[<cmd>lua require('franjf.telescope').search_dotfiles()<cr>]]},
        {'n', '<leader>va', [[<cmd>lua require('franjf.telescope').anime_selector()<cr>]]},
    }
    M.maps(maps, opts)
end



function M.nvim_compe()
    local opts = { silent = true, expr = true }
    local maps = {
        {'i', '<C-Space>', [[compe#complete()]]},
        {'i', '<CR>', [[compe#confirm('<CR>')]]},
        {'i', '<C-e>', [[compe#close('C-e'))]]},
    }
    M.maps(maps, opts)
end

function M.neoformat()
    local opts = { nowait = false, silent = false }
    local maps = {
        {'n', '<leader>F', [[:Neoformat<CR>]]},
        {'v', '<leader>F', [[<cmd>Neoformat<CR>]]},
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
        {'n', '<leader>gp', [[<cmd>Git push<cr>]]},
        {'n', '<leader>gap', [[<cmd>Git submodule foreach --recursive git push <bar> :Git push<cr>]]},
        {'n', '<leader>gop', [[<cmd>Git -c push.default=current push<cr>]]},
    }
    M.maps(maps, opts)
end

function M.harpoon()
    local opts = { nowait = false, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>a', [[<cmd>lua require'harpoon.mark'.add_file()<CR>]]},
        {'n', '<C-e>', [[<cmd>lua require'harpoon.ui'.toggle_quick_menu()<cr>]]},
        {'n', '<C-h>', [[<cmd>lua require'harpoon.ui'.nav_files(1)<cr>]]},
        {'n', '<C-j>', [[<cmd>lua require'harpoon.ui'.nav_files(2)<cr>]]},
        {'n', '<C-k>', [[<cmd>lua require'harpoon.ui'.nav_files(3)<cr>]]},
        {'n', '<C-l>', [[<cmd>lua require'harpoon.ui'.nav_files(4)<cr>]]},
    }
    M.maps(maps, opts)
end

return M
