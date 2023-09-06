require("mason").setup()
require("mason-null-ls").setup({
    ensure_installed = { "black", "pyright", "html-lsp", "typescript-language-server" , "stylua"},
    automatic_installation = true,
    handlers = {},
})
require("null-ls").setup({
    sources = {
    }
})
