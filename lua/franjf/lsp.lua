local lspconfig = require('lspconfig')
-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

require'lspconfig'.pyright.setup{ 
    capabilities = capabilities;
    on_attach=on_attach; 
    -- Django guy here 
    root_dir=lspconfig.util.root_pattern('manage.py');
}
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
  on_attach=on_attach 
}

require'lspconfig'.html.setup{
  capabilities = capabilities,
  on_attach=on_attach; 
}
