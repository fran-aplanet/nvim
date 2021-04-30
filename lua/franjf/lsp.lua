local function on_attach()
    -- TODO: TJ told me to do this and I should do it because he is Telescopic
    -- "Big Tech" "Cash Money" Johnson
end

require'lspconfig'.pyright.setup{ on_attach=on_attach }
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

