local lspconfig = require('lspconfig')
-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local function on_attach()
    -- TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end



-- New
require "lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {formatCommand = "lua-format -i", formatStdin = true}
            }
        }
    }
}



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
