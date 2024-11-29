vim.keymap.set("n", "<leader>e", ":Neotree toggle show reveal<cr>")
vim.keymap.set("n", "<leader>+", ":vertical resize +5<cr>")
vim.keymap.set("n", "<leader>-", ":vertical resize -5<cr>")
vim.keymap.set("n", "<leader>z", ":ZenMode<cr>")
vim.keymap.set("n", "<C-s>", ":SymbolsOutline<cr>")
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
vim.keymap.set('n', 'm', '<C-d>')
vim.keymap.set('n', ',', '<C-u>')
--vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set('n', '<S-h>', ':wincmd h<cr>')
vim.keymap.set('n', '<S-j>', ':wincmd j<cr>')
vim.keymap.set('n', '<S-k>', ':wincmd k<cr>')
vim.keymap.set('n', '<S-l>', ':wincmd l<cr>')


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

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)

-- Refactor
vim.keymap.set(
    {"n", "x"},
    "<leader>rr",
    function() require('refactoring').select_refactor() end
)

-- Spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})

-- Save file
vim.keymap.set('n', '<leader><leader>', ':w<cr>')
vim.keymap.set('n', '<leader>w', ':noa w<cr>')
