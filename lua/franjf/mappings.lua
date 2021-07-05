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
    }
    M.maps(maps, opts)
end

function M.telescope()
    local opts = { nowait = false, noremap = true, silent = false }
    local callbuiltin = function (name)
        return string.format(":lua require'telescope.builtin'.%s()<CR>", name)
    end
    local callextension = function (name)
        return string.format("<cmd>lua require'telescope'.extensions.%s()<CR>", name)
    end
    local callcustom = function (name)
        return string.format("<cmd>lua require'franjf.telescope'.%s()<CR>", name)
    end

    local maps = {
        {'n', '<leader>af',  callbuiltin("git_files()")},
        {'n', '<leader>b',  callbuiltin("buffers()")},
        {'n', '<leader>f',  callbuiltin("find_files()")},
        {'n', '<leader>q',  callbuiltin("quickfix()")},
        {'n', '<leader>tg',  callbuiltin("live_grep()")},
        {'n', '<leader>vh',  callbuiltin("help_tags")},
        -- LSP related -- 
        {'n', '<leader>ts',  callbuiltin("lsp_document_symbols()")},
        {'n', '<leader>tw',  callbuiltin("lsp_dynamic_workspace_symbols()")},
        {'n', '<leader>tr',  callbuiltin("lsp_references()")},
        -- Plugins related -- 
        {'n', '<leader>gw',  callextension("git_worktree.git_worktrees()")},
        {'n', '<leader>gwa',  callextension("git_worktree.create_git_worktree()")},
        {'n', '<leader>tt', [[:TodoTelescope<CR>]]},
        -- Custom -- 
        {'n', '<leader>gb',  callcustom("git_branches()")},
        {'n', '<leader>vrc',  callcustom("search_dotfiles()")},
        {'n', '<leader>va',  callcustom("anime_selector()")},
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
    local opts = { nowait=true, silent = true, expr = true }
    local maps = {
        {'n', '<leader>F', [[<cmd>Neoformat<CR>]]},
        {'v', '<leader>F', [[<cmd>Neoformat<CR>]]},
    }
    M.maps(maps, opts)
end

function M.lsp()
    local opts = { nowait = true, noremap = true, silent = true }
    local maps = {
	{'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
    {'n', 'rn', '<cmd>lua vim.lsp.buf.rename()<CR>'},
    {'n', '<leader>n', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>'},
    {'n', '<leader>o', '<cmd>lua vim.lsp.buf.hover()<CR>'},
    -- {'n', 'vca', '<cmd>lua vim.lsp.buf.code_action()<CR>'},
    -- {'n', 'vsh', '<cmd>lua vim.lsp.buf.signature_help()<CR>'},
    -- {'n', '<leader>vi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    }
    M.bufmaps(maps, opts)
end

function M.git()
    local opts = { nowait = true, noremap = true, silent = false }
    local maps = {
        {'n', '<leader>gs', [[:G]]},
        {'n', '<leader>gc', [[:Git add -A<bar>:Git commit<CR>]]},
        {'n', '<leader>gp', [[:Git push<CR>]]},
	{'n', '<leader>gap', [[:Git submodule foreach --recursive git push <bar> :Git push<CR>]]},
        {'n', '<leader>gop', [[:Git -c push.default=current push<CR>]]},
    }
    M.maps(maps, opts)
end

function M.harpoon()
    local opts = { nowait = true, noremap = true, silent = false }
    local callfunc = function (name)
        return string.format("<cmd>lua require'harpoon.ui'.%s()<CR>", name)
    end

    local maps = {
        {'n', '<leader>a', [[<cmd>lua require'harpoon.mark'.add_file()<CR>]]},
        {'n', '<C-e>',  callfunc("toggle_quick_menu()")},
        {'n', '<C-h>',  callfunc("nav_file(1)")},
        {'n', '<C-j>',  callfunc("nav_file(2)")},
        {'n', '<C-k>',  callfunc("nav_file(3)")},
        {'n', '<C-l>',  callfunc("nav_file(4)")},
    }
    M.maps(maps, opts)
end

return M
