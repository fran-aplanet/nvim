local lsp = require("lsp-zero")
local cmp_autopairs = require('nvim-autopairs.completion.cmp')


lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'html',
  'pyright',
})

lsp.nvim_workspace()


local lspkind = require('lspkind')
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
  [';'] = cmp.mapping.close(),
  ["<C-p>"] = nil,
  ["<C-n>"] = nil,
})
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
      before = function (entry, vim_item)
        return vim_item
      end
    })
  },
}

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>o", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>n", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>w", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
