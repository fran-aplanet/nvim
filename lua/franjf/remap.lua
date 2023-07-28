vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Movements in insert and command mode
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('c', '<C-h>', '<Left>')
vim.keymap.set('c', '<C-j>', '<Down>')
vim.keymap.set('c', '<C-k>', '<Up>')
vim.keymap.set('c', '<C-l>', '<Right>')
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<Nop>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":wq<CR>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/franjf/plugins.lua<CR>");
vim.keymap.set('n', 'm', '<C-d>')
vim.keymap.set('n', ',', '<C-u>')
--vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set('n', '<leader>h', ':wincmd h<cr>')
vim.keymap.set('n', '<leader>j', ':wincmd j<cr>')
vim.keymap.set('n', '<leader>k', ':wincmd k<cr>')
vim.keymap.set('n', '<leader>l', ':wincmd l<cr>')


-- Copy to clipboard
vim.keymap.set('n', '<leader>y', 'ggVG "+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<C-y>', ':%y+ <CR>')

-- Git
vim.keymap.set('n', '<leader>gs', '<cmd>G<cr>')
vim.keymap.set('n', '<leader>gc', '<cmd>Git add -A<bar>:Git commit<cr>')
vim.keymap.set('n', '<leader>gps', '<cmd>Git push<cr>')
vim.keymap.set('n', '<leader>gpl', '<cmd>Git pull<cr>')
vim.keymap.set('n', '<leader>gaps', '<cmd>Git submodule foreach --recursive git push<bar>:Git push<cr>')
vim.keymap.set('n', '<leader>gac', '<cmd>Git submodule foreach --recursive git commit -am "fix"<cr>')
vim.keymap.set('n', '<leader>gapl', '<cmd>:Git pull <bar> :Git submodule foreach --recursive git pull<cr>')
vim.keymap.set('n', '<leader>gop', '<cmd>Git -c push.default=current push<cr>')

-- Save file
vim.keymap.set('n', '<leader><leader>', ':w<cr>')
