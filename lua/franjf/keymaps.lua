local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap('n', '<leader>v', ':e $MYVIMRC<CR>', opts)
keymap('i', '<C-c>', '<Esc>', opts)
keymap('n', '<C-c>', ':wq<CR>', opts)

-- Testing
keymap('i', '<C-h>', '<Left>', opts)
keymap('i', '<C-j>', '<Down>', opts)
keymap('i', '<C-k>', '<Up>', opts)
keymap('i', '<C-l>', '<Right>', opts)
keymap('c', '<C-h>', '<Left>', opts)
keymap('c', '<C-j>', '<Down>', opts)
keymap('c', '<C-k>', '<Up>', opts)
keymap('c', '<C-l>', '<Right>', opts)

keymap('v', '<leader>rr', '<Esc><cmd>lua require("telescope").extensions.refactoring.refactors()<CR>', opts)

-- Movements
keymap('n', '<leader>pv', ':Ex<cr>', opts)
keymap('n', '<leader>+', ':vertical resize +10<cr>', opts)
keymap('n', '<leader>-', ':vertical resize -10<cr>', opts)
keymap('n', '<leader>h', ':wincmd h<cr>', opts)
keymap('n', '<leader>l', ':wincmd l<cr>', opts)
keymap('n', '<C-j>', ':cnext<cr>zz', opts)
keymap('n', '<C-k>', ':cprevious<cr>zz', opts)
keymap('n', '<Tab>', '<C-i>', opts)
keymap('n', 'm', '<C-d>', opts)
keymap('n', ',', '<C-u>', opts)
keymap('n', 'M', 'm', opts)

-- Personal
keymap('n', '<leader><leader>', ':w<cr>', opts)
keymap('n', '<leader>F', ':Format<cr>', opts)

-- Probably already in nvim
keymap('n', '<leader>Y', 'y$', opts)
-- Improving vim
-- Keeping it centered
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)
keymap('n', 'J', 'mzJ`z', opts)
-- Undo break points
keymap('i', ',', ',<c-g>u', opts)
keymap('i', '.', '.<c-g>u', opts)
keymap('i', '!', '!<c-g>u', opts)
keymap('i', '?', '?<c-g>u', opts)
-- Moving text
keymap('v', 'J', ':m ">+1<cr>gv=gv', opts)
keymap('v', 'K', ':m "<-2<cr>gv=gv', opts)
-- keymap('i', '<C-k>', '<esc>:m .-2<cr>==', opts)
-- keymap('i', '<C-j>', '<esc>:m .+1<cr>==', opts)
-- Copy to clipboard
keymap('n', '<leader>y', '"+y', opts)
keymap('v', '<leader>y', '"+y', opts)
keymap('n', '<C-a>', ':%y+ <CR>', opts)

-- Packer update
keymap('n', '<leader>uu', ':PackerUpdate<cr>', opts)

-- Lsp
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
keymap('n', 'rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
keymap('n', '<leader>n', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
keymap('n', '<leader>o', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)

-- Telescope
keymap('n', '<leader>af', '<cmd>lua require("telescope.builtin").git_files()<cr>', opts)
keymap('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
keymap('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<leader>q', '<cmd>lua require("telescope.builtin").quickfix()<cr>', opts)
keymap('n', '<leader>tg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap('n', '<leader>tw', '<cmd>lua require("telescope.builtin").lsp_dynamic_workspace_symbols()<cr>', opts)
keymap('n', '<leader>ts', '<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>', opts)
keymap('n', '<leader>tr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', opts)
keymap('n', '<leader>tm', '<cmd>lua require("telescope.builtin").man_pages()<cr>', opts)
keymap('n', '<leader>ti', '<cmd>lua require("telescope.builtin").lsp_implementations()<cr>', opts)
keymap('n', '<leader>th', '<cmd>lua require("telescope.builtin").colorscheme()<cr>', opts)
keymap('n', '<leader>ta', '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>', opts)
keymap('n', '<leader>tk', '<cmd>lua require("telescope.builtin").keymaps()<cr>', opts)
keymap('n', '<leader>gb', '<cmd>lua require("franjf.telescope").git_branches()<cr>', opts)
keymap('n', '<leader>fb', ':lua require("telescope").extensions.file_browser.file_browser()<cr>', opts)
keymap('n', '<leader>vrc', '<cmd>lua require("franjf.telescope").search_dotfiles()<cr>', opts)
keymap('n', '<leader>va', '<cmd>lua require("franjf.telescope").anime_selector()<cr>', opts)
keymap('n', '<leader>tt', '<cmd>TodoTelescope<cr>', opts)
keymap('n', '<leader>tp', '<cmd>Telescope projects<cr>', opts)

-- Symbols Outline
keymap('n', '<leader>so', '<cmd>SymbolsOutline<cr>', opts)

-- Git
keymap('n', '<leader>gs', '<cmd>G<cr>', opts)
keymap('n', '<leader>gc', '<cmd>Git add -A<bar>:Git commit<cr>', opts)
keymap('n', '<leader>gps', '<cmd>Git push<cr>', opts)
keymap('n', '<leader>gpl', '<cmd>Git pull<cr>', opts)
keymap('n', '<leader>gaps', '<cmd>Git submodule foreach --recursive git push<bar>:Git push<cr>', opts)
keymap('n', '<leader>gac', '<cmd>Git submodule foreach --recursive git commit -am "fix"<cr>', opts)
keymap('n', '<leader>gapl', '<cmd>:Git pull <bar> :Git submodule foreach --recursive git pull<cr>', opts)
keymap('n', '<leader>gop', '<cmd>Git -c push.default=current push<cr>', opts)

-- Harpoon
keymap('n', '<leader>a', '<cmd>lua require"harpoon.mark".add_file()<cr>', opts)
keymap('n', '<C-e>', '<cmd>lua require"harpoon.ui".toggle_quick_menu()<cr>', opts)
keymap('n', '<leader>1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', opts)
keymap('n', '<leader>2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', opts)
keymap('n', '<leader>3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', opts)
keymap('n', '<leader>4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', opts)
keymap('n', '<leader>5', '<cmd>lua require("harpoon.ui").nav_file(5)<cr>', opts)

-- Hop
keymap('n', '<leader>s', '<cmd>lua require"hop".hint_char2()<cr>', opts)
