local lspconfig = require('lspconfig')
-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local function on_attach()
    -- TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

require'lspconfig'.pyright.setup{ 
    capabilities = capabilities;
    on_attach=on_attach; 
    -- Django guy here 
    root_dir=lspconfig.util.root_pattern('manage.py');
    settings={
        python = {
          analysis = {
            useLibraryCodeForTypes = true,
            diagnosticSeverityOverrides = {
              reportGeneralTypeIssues = "none",
              reportOptionalMemberAccess = "none",
              reportOptionalSubscript = "none",
              reportPrivateImportUsage = "none",
              },
            }
        }
    }
}
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
  on_attach=on_attach 
}

require'lspconfig'.html.setup{
  capabilities = capabilities,
  on_attach=on_attach; 
  root_dir=lspconfig.util.root_pattern('manage.py');
}

-- Delete signs
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = false
    }
)
