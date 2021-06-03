local lspconfig = require('lspconfig')

local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

require'lspconfig'.pyright.setup{ 
    on_attach=on_attach; 
    -- Django guy here 
    root_dir=lspconfig.util.root_pattern('manage.py');
}
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup{
  capabilities = capabilities,
}
